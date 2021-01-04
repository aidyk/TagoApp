package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;

public final class ConcatenatingMediaSource implements MediaSource {
    private final boolean[] duplicateFlags;
    private final boolean isRepeatOneAtomic;
    private MediaSource.Listener listener;
    private final Object[] manifests;
    private final MediaSource[] mediaSources;
    private final Map<MediaPeriod, Integer> sourceIndexByMediaPeriod;
    private ConcatenatedTimeline timeline;
    private final Timeline[] timelines;

    public ConcatenatingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    public ConcatenatingMediaSource(boolean z, MediaSource... mediaSourceArr) {
        for (MediaSource mediaSource : mediaSourceArr) {
            Assertions.checkNotNull(mediaSource);
        }
        this.mediaSources = mediaSourceArr;
        this.isRepeatOneAtomic = z;
        this.timelines = new Timeline[mediaSourceArr.length];
        this.manifests = new Object[mediaSourceArr.length];
        this.sourceIndexByMediaPeriod = new HashMap();
        this.duplicateFlags = buildDuplicateFlags(mediaSourceArr);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.Listener listener2) {
        this.listener = listener2;
        for (final int i = 0; i < this.mediaSources.length; i++) {
            if (!this.duplicateFlags[i]) {
                this.mediaSources[i].prepareSource(exoPlayer, false, new MediaSource.Listener() {
                    /* class com.google.android.exoplayer2.source.ConcatenatingMediaSource.AnonymousClass1 */

                    @Override // com.google.android.exoplayer2.source.MediaSource.Listener
                    public void onSourceInfoRefreshed(Timeline timeline, Object obj) {
                        ConcatenatingMediaSource.this.handleSourceInfoRefreshed(i, timeline, obj);
                    }
                });
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        for (int i = 0; i < this.mediaSources.length; i++) {
            if (!this.duplicateFlags[i]) {
                this.mediaSources[i].maybeThrowSourceInfoRefreshError();
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        int childIndexByPeriodIndex = this.timeline.getChildIndexByPeriodIndex(mediaPeriodId.periodIndex);
        MediaPeriod createPeriod = this.mediaSources[childIndexByPeriodIndex].createPeriod(new MediaSource.MediaPeriodId(mediaPeriodId.periodIndex - this.timeline.getFirstPeriodIndexByChildIndex(childIndexByPeriodIndex)), allocator);
        this.sourceIndexByMediaPeriod.put(createPeriod, Integer.valueOf(childIndexByPeriodIndex));
        return createPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        int intValue = this.sourceIndexByMediaPeriod.get(mediaPeriod).intValue();
        this.sourceIndexByMediaPeriod.remove(mediaPeriod);
        this.mediaSources[intValue].releasePeriod(mediaPeriod);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releaseSource() {
        for (int i = 0; i < this.mediaSources.length; i++) {
            if (!this.duplicateFlags[i]) {
                this.mediaSources[i].releaseSource();
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void handleSourceInfoRefreshed(int i, Timeline timeline2, Object obj) {
        this.timelines[i] = timeline2;
        this.manifests[i] = obj;
        for (int i2 = i + 1; i2 < this.mediaSources.length; i2++) {
            if (this.mediaSources[i2] == this.mediaSources[i]) {
                this.timelines[i2] = timeline2;
                this.manifests[i2] = obj;
            }
        }
        for (Timeline timeline3 : this.timelines) {
            if (timeline3 == null) {
                return;
            }
        }
        this.timeline = new ConcatenatedTimeline((Timeline[]) this.timelines.clone(), this.isRepeatOneAtomic);
        this.listener.onSourceInfoRefreshed(this.timeline, this.manifests.clone());
    }

    private static boolean[] buildDuplicateFlags(MediaSource[] mediaSourceArr) {
        boolean[] zArr = new boolean[mediaSourceArr.length];
        IdentityHashMap identityHashMap = new IdentityHashMap(mediaSourceArr.length);
        for (int i = 0; i < mediaSourceArr.length; i++) {
            MediaSource mediaSource = mediaSourceArr[i];
            if (!identityHashMap.containsKey(mediaSource)) {
                identityHashMap.put(mediaSource, null);
            } else {
                zArr[i] = true;
            }
        }
        return zArr;
    }

    /* access modifiers changed from: private */
    public static final class ConcatenatedTimeline extends AbstractConcatenatedTimeline {
        private final boolean isRepeatOneAtomic;
        private final int[] sourcePeriodOffsets;
        private final int[] sourceWindowOffsets;
        private final Timeline[] timelines;

        public ConcatenatedTimeline(Timeline[] timelineArr, boolean z) {
            super(timelineArr.length);
            int[] iArr = new int[timelineArr.length];
            int[] iArr2 = new int[timelineArr.length];
            long j = 0;
            int i = 0;
            for (int i2 = 0; i2 < timelineArr.length; i2++) {
                Timeline timeline = timelineArr[i2];
                j += (long) timeline.getPeriodCount();
                Assertions.checkState(j <= 2147483647L, "ConcatenatingMediaSource children contain too many periods");
                iArr[i2] = (int) j;
                i += timeline.getWindowCount();
                iArr2[i2] = i;
            }
            this.timelines = timelineArr;
            this.sourcePeriodOffsets = iArr;
            this.sourceWindowOffsets = iArr2;
            this.isRepeatOneAtomic = z;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.sourceWindowOffsets[this.sourceWindowOffsets.length - 1];
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.sourcePeriodOffsets[this.sourcePeriodOffsets.length - 1];
        }

        @Override // com.google.android.exoplayer2.Timeline, com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getNextWindowIndex(int i, int i2) {
            if (this.isRepeatOneAtomic && i2 == 1) {
                i2 = 2;
            }
            return super.getNextWindowIndex(i, i2);
        }

        @Override // com.google.android.exoplayer2.Timeline, com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getPreviousWindowIndex(int i, int i2) {
            if (this.isRepeatOneAtomic && i2 == 1) {
                i2 = 2;
            }
            return super.getPreviousWindowIndex(i, i2);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return Util.binarySearchFloor(this.sourcePeriodOffsets, i, true, false) + 1;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return Util.binarySearchFloor(this.sourceWindowOffsets, i, true, false) + 1;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            return ((Integer) obj).intValue();
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public Timeline getTimelineByChildIndex(int i) {
            return this.timelines[i];
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            if (i == 0) {
                return 0;
            }
            return this.sourcePeriodOffsets[i - 1];
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            if (i == 0) {
                return 0;
            }
            return this.sourceWindowOffsets[i - 1];
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public Object getChildUidByChildIndex(int i) {
            return Integer.valueOf(i);
        }
    }
}
