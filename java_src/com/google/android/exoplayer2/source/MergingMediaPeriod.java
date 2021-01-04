package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;

final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private MediaPeriod[] enabledPeriods;
    private int pendingChildPrepareCount;
    public final MediaPeriod[] periods;
    private SequenceableLoader sequenceableLoader;
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private TrackGroupArray trackGroups;

    public MergingMediaPeriod(MediaPeriod... mediaPeriodArr) {
        this.periods = mediaPeriodArr;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback2, long j) {
        this.callback = callback2;
        this.pendingChildPrepareCount = this.periods.length;
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        int i;
        int[] iArr = new int[trackSelectionArr.length];
        int[] iArr2 = new int[trackSelectionArr.length];
        for (int i2 = 0; i2 < trackSelectionArr.length; i2++) {
            if (sampleStreamArr[i2] == null) {
                i = -1;
            } else {
                i = this.streamPeriodIndices.get(sampleStreamArr[i2]).intValue();
            }
            iArr[i2] = i;
            iArr2[i2] = -1;
            if (trackSelectionArr[i2] != null) {
                TrackGroup trackGroup = trackSelectionArr[i2].getTrackGroup();
                int i3 = 0;
                while (true) {
                    if (i3 >= this.periods.length) {
                        break;
                    } else if (this.periods[i3].getTrackGroups().indexOf(trackGroup) != -1) {
                        iArr2[i2] = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
            }
        }
        this.streamPeriodIndices.clear();
        SampleStream[] sampleStreamArr2 = new SampleStream[trackSelectionArr.length];
        SampleStream[] sampleStreamArr3 = new SampleStream[trackSelectionArr.length];
        TrackSelection[] trackSelectionArr2 = new TrackSelection[trackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j2 = j;
        int i4 = 0;
        while (i4 < this.periods.length) {
            for (int i5 = 0; i5 < trackSelectionArr.length; i5++) {
                TrackSelection trackSelection = null;
                sampleStreamArr3[i5] = iArr[i5] == i4 ? sampleStreamArr[i5] : null;
                if (iArr2[i5] == i4) {
                    trackSelection = trackSelectionArr[i5];
                }
                trackSelectionArr2[i5] = trackSelection;
            }
            long selectTracks = this.periods[i4].selectTracks(trackSelectionArr2, zArr, sampleStreamArr3, zArr2, j2);
            if (i4 == 0) {
                j2 = selectTracks;
            } else if (selectTracks != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i6 = 0; i6 < trackSelectionArr.length; i6++) {
                boolean z2 = true;
                if (iArr2[i6] == i4) {
                    Assertions.checkState(sampleStreamArr3[i6] != null);
                    sampleStreamArr2[i6] = sampleStreamArr3[i6];
                    this.streamPeriodIndices.put(sampleStreamArr3[i6], Integer.valueOf(i4));
                    z = true;
                } else if (iArr[i6] == i4) {
                    if (sampleStreamArr3[i6] != null) {
                        z2 = false;
                    }
                    Assertions.checkState(z2);
                }
            }
            if (z) {
                arrayList.add(this.periods[i4]);
            }
            i4++;
            arrayList = arrayList;
            trackSelectionArr2 = trackSelectionArr2;
        }
        System.arraycopy(sampleStreamArr2, 0, sampleStreamArr, 0, sampleStreamArr2.length);
        this.enabledPeriods = new MediaPeriod[arrayList.size()];
        arrayList.toArray(this.enabledPeriods);
        this.sequenceableLoader = new CompositeSequenceableLoader(this.enabledPeriods);
        return j2;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j);
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public boolean continueLoading(long j) {
        return this.sequenceableLoader.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getNextLoadPositionUs() {
        return this.sequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        long readDiscontinuity = this.periods[0].readDiscontinuity();
        for (int i = 1; i < this.periods.length; i++) {
            if (this.periods[i].readDiscontinuity() != C.TIME_UNSET) {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
        if (readDiscontinuity != C.TIME_UNSET) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            for (MediaPeriod mediaPeriod : mediaPeriodArr) {
                if (mediaPeriod != this.periods[0] && mediaPeriod.seekToUs(readDiscontinuity) != readDiscontinuity) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
            }
        }
        return readDiscontinuity;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getBufferedPositionUs() {
        return this.sequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        long seekToUs = this.enabledPeriods[0].seekToUs(j);
        for (int i = 1; i < this.enabledPeriods.length; i++) {
            if (this.enabledPeriods[i].seekToUs(seekToUs) != seekToUs) {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
        return seekToUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        int i = this.pendingChildPrepareCount - 1;
        this.pendingChildPrepareCount = i;
        if (i <= 0) {
            int i2 = 0;
            for (MediaPeriod mediaPeriod2 : this.periods) {
                i2 += mediaPeriod2.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            MediaPeriod[] mediaPeriodArr = this.periods;
            int length = mediaPeriodArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                TrackGroupArray trackGroups2 = mediaPeriodArr[i3].getTrackGroups();
                int i5 = trackGroups2.length;
                int i6 = i4;
                int i7 = 0;
                while (i7 < i5) {
                    trackGroupArr[i6] = trackGroups2.get(i7);
                    i7++;
                    i6++;
                }
                i3++;
                i4 = i6;
            }
            this.trackGroups = new TrackGroupArray(trackGroupArr);
            this.callback.onPrepared(this);
        }
    }

    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        if (this.trackGroups != null) {
            this.callback.onContinueLoadingRequested(this);
        }
    }
}
