package com.google.android.exoplayer2.source.dash;

import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.AdaptiveMediaSourceEventListener;
import com.google.android.exoplayer2.source.CompositeSequenceableLoader;
import com.google.android.exoplayer2.source.EmptySampleStream;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.ChunkSampleStream;
import com.google.android.exoplayer2.source.dash.DashChunkSource;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.Descriptor;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

final class DashMediaPeriod implements MediaPeriod, SequenceableLoader.Callback<ChunkSampleStream<DashChunkSource>> {
    private List<AdaptationSet> adaptationSets;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final DashChunkSource.Factory chunkSourceFactory;
    private final long elapsedRealtimeOffset;
    private final AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher;
    final int id;
    private DashManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int minLoadableRetryCount;
    private int periodIndex;
    private ChunkSampleStream<DashChunkSource>[] sampleStreams = newSampleStreamArray(0);
    private CompositeSequenceableLoader sequenceableLoader = new CompositeSequenceableLoader(this.sampleStreams);
    private final TrackGroupInfo[] trackGroupInfos;
    private final TrackGroupArray trackGroups;

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    public DashMediaPeriod(int i, DashManifest dashManifest, int i2, DashChunkSource.Factory factory, int i3, AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher2, long j, LoaderErrorThrower loaderErrorThrower, Allocator allocator2) {
        this.id = i;
        this.manifest = dashManifest;
        this.periodIndex = i2;
        this.chunkSourceFactory = factory;
        this.minLoadableRetryCount = i3;
        this.eventDispatcher = eventDispatcher2;
        this.elapsedRealtimeOffset = j;
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.allocator = allocator2;
        this.adaptationSets = dashManifest.getPeriod(i2).adaptationSets;
        Pair<TrackGroupArray, TrackGroupInfo[]> buildTrackGroups = buildTrackGroups(this.adaptationSets);
        this.trackGroups = (TrackGroupArray) buildTrackGroups.first;
        this.trackGroupInfos = (TrackGroupInfo[]) buildTrackGroups.second;
    }

    public void updateManifest(DashManifest dashManifest, int i) {
        this.manifest = dashManifest;
        this.periodIndex = i;
        this.adaptationSets = dashManifest.getPeriod(i).adaptationSets;
        if (this.sampleStreams != null) {
            for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
                chunkSampleStream.getChunkSource().updateManifest(dashManifest, i);
            }
            this.callback.onContinueLoadingRequested(this);
        }
    }

    public void release() {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback2, long j) {
        this.callback = callback2;
        callback2.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        SampleStream sampleStream;
        HashMap hashMap = new HashMap();
        for (int i = 0; i < trackSelectionArr.length; i++) {
            if (sampleStreamArr[i] instanceof ChunkSampleStream) {
                ChunkSampleStream chunkSampleStream = (ChunkSampleStream) sampleStreamArr[i];
                if (trackSelectionArr[i] == null || !zArr[i]) {
                    chunkSampleStream.release();
                    sampleStreamArr[i] = null;
                } else {
                    hashMap.put(Integer.valueOf(this.trackGroups.indexOf(trackSelectionArr[i].getTrackGroup())), chunkSampleStream);
                }
            }
            if (sampleStreamArr[i] == null && trackSelectionArr[i] != null) {
                int indexOf = this.trackGroups.indexOf(trackSelectionArr[i].getTrackGroup());
                TrackGroupInfo trackGroupInfo = this.trackGroupInfos[indexOf];
                if (trackGroupInfo.isPrimary) {
                    ChunkSampleStream<DashChunkSource> buildSampleStream = buildSampleStream(trackGroupInfo, trackSelectionArr[i], j);
                    hashMap.put(Integer.valueOf(indexOf), buildSampleStream);
                    sampleStreamArr[i] = buildSampleStream;
                    zArr2[i] = true;
                }
            }
        }
        for (int i2 = 0; i2 < trackSelectionArr.length; i2++) {
            if (((sampleStreamArr[i2] instanceof ChunkSampleStream.EmbeddedSampleStream) || (sampleStreamArr[i2] instanceof EmptySampleStream)) && (trackSelectionArr[i2] == null || !zArr[i2])) {
                releaseIfEmbeddedSampleStream(sampleStreamArr[i2]);
                sampleStreamArr[i2] = null;
            }
            if (trackSelectionArr[i2] != null) {
                TrackGroupInfo trackGroupInfo2 = this.trackGroupInfos[this.trackGroups.indexOf(trackSelectionArr[i2].getTrackGroup())];
                if (!trackGroupInfo2.isPrimary) {
                    ChunkSampleStream<T> chunkSampleStream2 = (ChunkSampleStream) hashMap.get(Integer.valueOf(trackGroupInfo2.primaryTrackGroupIndex));
                    SampleStream sampleStream2 = sampleStreamArr[i2];
                    if (!(chunkSampleStream2 == null ? sampleStream2 instanceof EmptySampleStream : (sampleStream2 instanceof ChunkSampleStream.EmbeddedSampleStream) && ((ChunkSampleStream.EmbeddedSampleStream) sampleStream2).parent == chunkSampleStream2)) {
                        releaseIfEmbeddedSampleStream(sampleStream2);
                        if (chunkSampleStream2 == null) {
                            sampleStream = new EmptySampleStream();
                        } else {
                            sampleStream = chunkSampleStream2.selectEmbeddedTrack(j, trackGroupInfo2.trackType);
                        }
                        sampleStreamArr[i2] = sampleStream;
                        zArr2[i2] = true;
                    }
                }
            }
        }
        this.sampleStreams = newSampleStreamArray(hashMap.size());
        hashMap.values().toArray(this.sampleStreams);
        this.sequenceableLoader = new CompositeSequenceableLoader(this.sampleStreams);
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.discardEmbeddedTracksTo(j);
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

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getBufferedPositionUs() {
        return this.sequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.seekToUs(j);
        }
        return j;
    }

    public void onContinueLoadingRequested(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        this.callback.onContinueLoadingRequested(this);
    }

    private static Pair<TrackGroupArray, TrackGroupInfo[]> buildTrackGroups(List<AdaptationSet> list) {
        int i;
        int i2;
        String str;
        int[][] groupedAdaptationSetIndices = getGroupedAdaptationSetIndices(list);
        int length = groupedAdaptationSetIndices.length;
        boolean[] zArr = new boolean[length];
        boolean[] zArr2 = new boolean[length];
        char c = 0;
        int i3 = length;
        int i4 = 0;
        while (true) {
            i = 1;
            if (i4 >= length) {
                break;
            }
            if (hasEventMessageTrack(list, groupedAdaptationSetIndices[i4])) {
                zArr[i4] = true;
                i3++;
            }
            if (hasCea608Track(list, groupedAdaptationSetIndices[i4])) {
                zArr2[i4] = true;
                i3++;
            }
            i4++;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i3];
        TrackGroupInfo[] trackGroupInfoArr = new TrackGroupInfo[i3];
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int[] iArr = groupedAdaptationSetIndices[i5];
            ArrayList arrayList = new ArrayList();
            for (int i7 : iArr) {
                arrayList.addAll(list.get(i7).representations);
            }
            Format[] formatArr = new Format[arrayList.size()];
            for (int i8 = 0; i8 < formatArr.length; i8++) {
                formatArr[i8] = ((Representation) arrayList.get(i8)).format;
            }
            AdaptationSet adaptationSet = list.get(iArr[c]);
            boolean z = zArr[i5];
            boolean z2 = zArr2[i5];
            trackGroupArr[i6] = new TrackGroup(formatArr);
            int i9 = i6 + 1;
            trackGroupInfoArr[i6] = new TrackGroupInfo(adaptationSet.type, iArr, i6, true, z, z2);
            if (z) {
                Format[] formatArr2 = new Format[i];
                formatArr2[0] = Format.createSampleFormat(adaptationSet.id + ":emsg", MimeTypes.APPLICATION_EMSG, null, -1, null);
                trackGroupArr[i9] = new TrackGroup(formatArr2);
                i2 = i9 + 1;
                str = null;
                trackGroupInfoArr[i9] = new TrackGroupInfo(4, iArr, i6, false, false, false);
            } else {
                str = null;
                i2 = i9;
            }
            if (z2) {
                trackGroupArr[i2] = new TrackGroup(Format.createTextSampleFormat(adaptationSet.id + ":cea608", MimeTypes.APPLICATION_CEA608, 0, str));
                trackGroupInfoArr[i2] = new TrackGroupInfo(3, iArr, i6, false, false, false);
                i2++;
            }
            i5++;
            i6 = i2;
            c = 0;
            i = 1;
        }
        return Pair.create(new TrackGroupArray(trackGroupArr), trackGroupInfoArr);
    }

    private static int[][] getGroupedAdaptationSetIndices(List<AdaptationSet> list) {
        int size = list.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        for (int i = 0; i < size; i++) {
            sparseIntArray.put(list.get(i).id, i);
        }
        int[][] iArr = new int[size][];
        boolean[] zArr = new boolean[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            if (!zArr[i3]) {
                zArr[i3] = true;
                Descriptor findAdaptationSetSwitchingProperty = findAdaptationSetSwitchingProperty(list.get(i3).supplementalProperties);
                if (findAdaptationSetSwitchingProperty == null) {
                    iArr[i2] = new int[]{i3};
                    i2++;
                } else {
                    String[] split = findAdaptationSetSwitchingProperty.value.split(",");
                    int[] iArr2 = new int[(split.length + 1)];
                    iArr2[0] = i3;
                    int i4 = 0;
                    while (i4 < split.length) {
                        int i5 = sparseIntArray.get(Integer.parseInt(split[i4]));
                        zArr[i5] = true;
                        i4++;
                        iArr2[i4] = i5;
                    }
                    iArr[i2] = iArr2;
                    i2++;
                }
            }
        }
        return i2 < size ? (int[][]) Arrays.copyOf(iArr, i2) : iArr;
    }

    private ChunkSampleStream<DashChunkSource> buildSampleStream(TrackGroupInfo trackGroupInfo, TrackSelection trackSelection, long j) {
        int[] iArr = new int[2];
        boolean z = trackGroupInfo.hasEmbeddedEventMessageTrack;
        int i = 0;
        if (z) {
            iArr[0] = 4;
            i = 1;
        }
        boolean z2 = trackGroupInfo.hasEmbeddedCea608Track;
        if (z2) {
            iArr[i] = 3;
            i++;
        }
        if (i < iArr.length) {
            iArr = Arrays.copyOf(iArr, i);
        }
        return new ChunkSampleStream<>(trackGroupInfo.trackType, iArr, this.chunkSourceFactory.createDashChunkSource(this.manifestLoaderErrorThrower, this.manifest, this.periodIndex, trackGroupInfo.adaptationSetIndices, trackSelection, trackGroupInfo.trackType, this.elapsedRealtimeOffset, z, z2), this, this.allocator, j, this.minLoadableRetryCount, this.eventDispatcher);
    }

    private static Descriptor findAdaptationSetSwitchingProperty(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if ("urn:mpeg:dash:adaptation-set-switching:2016".equals(descriptor.schemeIdUri)) {
                return descriptor;
            }
        }
        return null;
    }

    private static boolean hasEventMessageTrack(List<AdaptationSet> list, int[] iArr) {
        for (int i : iArr) {
            List<Representation> list2 = list.get(i).representations;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if (!list2.get(i2).inbandEventStreams.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean hasCea608Track(List<AdaptationSet> list, int[] iArr) {
        for (int i : iArr) {
            List<Descriptor> list2 = list.get(i).accessibilityDescriptors;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if ("urn:scte:dash:cc:cea-608:2015".equals(list2.get(i2).schemeIdUri)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static ChunkSampleStream<DashChunkSource>[] newSampleStreamArray(int i) {
        return new ChunkSampleStream[i];
    }

    private static void releaseIfEmbeddedSampleStream(SampleStream sampleStream) {
        if (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream) {
            ((ChunkSampleStream.EmbeddedSampleStream) sampleStream).release();
        }
    }

    /* access modifiers changed from: private */
    public static final class TrackGroupInfo {
        public final int[] adaptationSetIndices;
        public final boolean hasEmbeddedCea608Track;
        public final boolean hasEmbeddedEventMessageTrack;
        public final boolean isPrimary;
        public final int primaryTrackGroupIndex;
        public final int trackType;

        public TrackGroupInfo(int i, int[] iArr, int i2, boolean z, boolean z2, boolean z3) {
            this.trackType = i;
            this.adaptationSetIndices = iArr;
            this.primaryTrackGroupIndex = i2;
            this.isPrimary = z;
            this.hasEmbeddedEventMessageTrack = z2;
            this.hasEmbeddedCea608Track = z3;
        }
    }
}
