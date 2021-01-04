package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.rawcc.RawCcExtractor;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer2.source.chunk.ChunkHolder;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.google.android.exoplayer2.source.chunk.ContainerMediaChunk;
import com.google.android.exoplayer2.source.chunk.InitializationChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.SingleSampleMediaChunk;
import com.google.android.exoplayer2.source.dash.DashChunkSource;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DefaultDashChunkSource implements DashChunkSource {
    private final int[] adaptationSetIndices;
    private final DataSource dataSource;
    private final long elapsedRealtimeOffsetMs;
    private IOException fatalError;
    private DashManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int maxSegmentsPerLoad;
    private boolean missingLastSegment;
    private int periodIndex;
    private final RepresentationHolder[] representationHolders;
    private final TrackSelection trackSelection;
    private final int trackType;

    public static final class Factory implements DashChunkSource.Factory {
        private final DataSource.Factory dataSourceFactory;
        private final int maxSegmentsPerLoad;

        public Factory(DataSource.Factory factory) {
            this(factory, 1);
        }

        public Factory(DataSource.Factory factory, int i) {
            this.dataSourceFactory = factory;
            this.maxSegmentsPerLoad = i;
        }

        @Override // com.google.android.exoplayer2.source.dash.DashChunkSource.Factory
        public DashChunkSource createDashChunkSource(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, int i, int[] iArr, TrackSelection trackSelection, int i2, long j, boolean z, boolean z2) {
            return new DefaultDashChunkSource(loaderErrorThrower, dashManifest, i, iArr, trackSelection, i2, this.dataSourceFactory.createDataSource(), j, this.maxSegmentsPerLoad, z, z2);
        }
    }

    public DefaultDashChunkSource(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, int i, int[] iArr, TrackSelection trackSelection2, int i2, DataSource dataSource2, long j, int i3, boolean z, boolean z2) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = dashManifest;
        this.adaptationSetIndices = iArr;
        this.trackSelection = trackSelection2;
        this.trackType = i2;
        this.dataSource = dataSource2;
        this.periodIndex = i;
        this.elapsedRealtimeOffsetMs = j;
        this.maxSegmentsPerLoad = i3;
        long periodDurationUs = dashManifest.getPeriodDurationUs(i);
        ArrayList<Representation> representations = getRepresentations();
        this.representationHolders = new RepresentationHolder[trackSelection2.length()];
        for (int i4 = 0; i4 < this.representationHolders.length; i4++) {
            this.representationHolders[i4] = new RepresentationHolder(periodDurationUs, representations.get(trackSelection2.getIndexInTrackGroup(i4)), z, z2);
        }
    }

    @Override // com.google.android.exoplayer2.source.dash.DashChunkSource
    public void updateManifest(DashManifest dashManifest, int i) {
        try {
            this.manifest = dashManifest;
            this.periodIndex = i;
            long periodDurationUs = this.manifest.getPeriodDurationUs(this.periodIndex);
            ArrayList<Representation> representations = getRepresentations();
            for (int i2 = 0; i2 < this.representationHolders.length; i2++) {
                this.representationHolders[i2].updateRepresentation(periodDurationUs, representations.get(this.trackSelection.getIndexInTrackGroup(i2)));
            }
        } catch (BehindLiveWindowException e) {
            this.fatalError = e;
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        if (this.fatalError == null) {
            this.manifestLoaderErrorThrower.maybeThrowError();
            return;
        }
        throw this.fatalError;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j, List<? extends MediaChunk> list) {
        if (this.fatalError != null || this.trackSelection.length() < 2) {
            return list.size();
        }
        return this.trackSelection.evaluateQueueSize(j, list);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public final void getNextChunk(MediaChunk mediaChunk, long j, ChunkHolder chunkHolder) {
        int i;
        int nextChunkIndex;
        if (this.fatalError == null) {
            this.trackSelection.updateSelectedTrack(mediaChunk != null ? mediaChunk.endTimeUs - j : 0);
            RepresentationHolder representationHolder = this.representationHolders[this.trackSelection.getSelectedIndex()];
            if (representationHolder.extractorWrapper != null) {
                Representation representation = representationHolder.representation;
                RangedUri initializationUri = representationHolder.extractorWrapper.getSampleFormats() == null ? representation.getInitializationUri() : null;
                RangedUri indexUri = representationHolder.segmentIndex == null ? representation.getIndexUri() : null;
                if (!(initializationUri == null && indexUri == null)) {
                    chunkHolder.chunk = newInitializationChunk(representationHolder, this.dataSource, this.trackSelection.getSelectedFormat(), this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), initializationUri, indexUri);
                    return;
                }
            }
            long nowUnixTimeUs = getNowUnixTimeUs();
            int segmentCount = representationHolder.getSegmentCount();
            boolean z = false;
            if (segmentCount == 0) {
                if (!this.manifest.dynamic || this.periodIndex < this.manifest.getPeriodCount() - 1) {
                    z = true;
                }
                chunkHolder.endOfStream = z;
                return;
            }
            int firstSegmentNum = representationHolder.getFirstSegmentNum();
            if (segmentCount == -1) {
                long j2 = (nowUnixTimeUs - (this.manifest.availabilityStartTime * 1000)) - (this.manifest.getPeriod(this.periodIndex).startMs * 1000);
                if (this.manifest.timeShiftBufferDepth != C.TIME_UNSET) {
                    firstSegmentNum = Math.max(firstSegmentNum, representationHolder.getSegmentNum(j2 - (this.manifest.timeShiftBufferDepth * 1000)));
                }
                i = representationHolder.getSegmentNum(j2) - 1;
            } else {
                i = (segmentCount + firstSegmentNum) - 1;
            }
            if (mediaChunk == null) {
                nextChunkIndex = Util.constrainValue(representationHolder.getSegmentNum(j), firstSegmentNum, i);
            } else {
                nextChunkIndex = mediaChunk.getNextChunkIndex();
                if (nextChunkIndex < firstSegmentNum) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                }
            }
            if (nextChunkIndex > i || (this.missingLastSegment && nextChunkIndex >= i)) {
                if (!this.manifest.dynamic || this.periodIndex < this.manifest.getPeriodCount() - 1) {
                    z = true;
                }
                chunkHolder.endOfStream = z;
                return;
            }
            chunkHolder.chunk = newMediaChunk(representationHolder, this.dataSource, this.trackType, this.trackSelection.getSelectedFormat(), this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), nextChunkIndex, Math.min(this.maxSegmentsPerLoad, (i - nextChunkIndex) + 1));
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
        SeekMap seekMap;
        if (chunk instanceof InitializationChunk) {
            RepresentationHolder representationHolder = this.representationHolders[this.trackSelection.indexOf(((InitializationChunk) chunk).trackFormat)];
            if (representationHolder.segmentIndex == null && (seekMap = representationHolder.extractorWrapper.getSeekMap()) != null) {
                representationHolder.segmentIndex = new DashWrappingSegmentIndex((ChunkIndex) seekMap);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z, Exception exc) {
        RepresentationHolder representationHolder;
        int segmentCount;
        if (!z) {
            return false;
        }
        if (this.manifest.dynamic || !(chunk instanceof MediaChunk) || !(exc instanceof HttpDataSource.InvalidResponseCodeException) || ((HttpDataSource.InvalidResponseCodeException) exc).responseCode != 404 || (segmentCount = (representationHolder = this.representationHolders[this.trackSelection.indexOf(chunk.trackFormat)]).getSegmentCount()) == -1 || segmentCount == 0 || ((MediaChunk) chunk).getNextChunkIndex() <= (representationHolder.getFirstSegmentNum() + segmentCount) - 1) {
            return ChunkedTrackBlacklistUtil.maybeBlacklistTrack(this.trackSelection, this.trackSelection.indexOf(chunk.trackFormat), exc);
        }
        this.missingLastSegment = true;
        return true;
    }

    private ArrayList<Representation> getRepresentations() {
        List<AdaptationSet> list = this.manifest.getPeriod(this.periodIndex).adaptationSets;
        ArrayList<Representation> arrayList = new ArrayList<>();
        for (int i : this.adaptationSetIndices) {
            arrayList.addAll(list.get(i).representations);
        }
        return arrayList;
    }

    private long getNowUnixTimeUs() {
        if (this.elapsedRealtimeOffsetMs != 0) {
            return (SystemClock.elapsedRealtime() + this.elapsedRealtimeOffsetMs) * 1000;
        }
        return System.currentTimeMillis() * 1000;
    }

    private static Chunk newInitializationChunk(RepresentationHolder representationHolder, DataSource dataSource2, Format format, int i, Object obj, RangedUri rangedUri, RangedUri rangedUri2) {
        String str = representationHolder.representation.baseUrl;
        if (rangedUri != null && (rangedUri2 = rangedUri.attemptMerge(rangedUri2, str)) == null) {
            rangedUri2 = rangedUri;
        }
        return new InitializationChunk(dataSource2, new DataSpec(rangedUri2.resolveUri(str), rangedUri2.start, rangedUri2.length, representationHolder.representation.getCacheKey()), format, i, obj, representationHolder.extractorWrapper);
    }

    private static Chunk newMediaChunk(RepresentationHolder representationHolder, DataSource dataSource2, int i, Format format, int i2, Object obj, int i3, int i4) {
        Representation representation = representationHolder.representation;
        long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(i3);
        RangedUri segmentUrl = representationHolder.getSegmentUrl(i3);
        String str = representation.baseUrl;
        if (representationHolder.extractorWrapper == null) {
            return new SingleSampleMediaChunk(dataSource2, new DataSpec(segmentUrl.resolveUri(str), segmentUrl.start, segmentUrl.length, representation.getCacheKey()), format, i2, obj, segmentStartTimeUs, representationHolder.getSegmentEndTimeUs(i3), i3, i, format);
        }
        RangedUri rangedUri = segmentUrl;
        int i5 = 1;
        int i6 = 1;
        while (i5 < i4) {
            RangedUri attemptMerge = rangedUri.attemptMerge(representationHolder.getSegmentUrl(i3 + i5), str);
            if (attemptMerge == null) {
                break;
            }
            i6++;
            i5++;
            rangedUri = attemptMerge;
        }
        return new ContainerMediaChunk(dataSource2, new DataSpec(rangedUri.resolveUri(str), rangedUri.start, rangedUri.length, representation.getCacheKey()), format, i2, obj, segmentStartTimeUs, representationHolder.getSegmentEndTimeUs((i3 + i6) - 1), i3, i6, -representation.presentationTimeOffsetUs, representationHolder.extractorWrapper);
    }

    /* access modifiers changed from: protected */
    public static final class RepresentationHolder {
        public final ChunkExtractorWrapper extractorWrapper;
        private long periodDurationUs;
        public Representation representation;
        public DashSegmentIndex segmentIndex;
        private int segmentNumShift;

        public RepresentationHolder(long j, Representation representation2, boolean z, boolean z2) {
            Extractor extractor;
            this.periodDurationUs = j;
            this.representation = representation2;
            String str = representation2.format.containerMimeType;
            if (mimeTypeIsRawText(str)) {
                this.extractorWrapper = null;
            } else {
                if (MimeTypes.APPLICATION_RAWCC.equals(str)) {
                    extractor = new RawCcExtractor(representation2.format);
                } else if (mimeTypeIsWebm(str)) {
                    extractor = new MatroskaExtractor(1);
                } else {
                    int i = z ? 4 : 0;
                    extractor = new FragmentedMp4Extractor(z2 ? i | 8 : i);
                }
                this.extractorWrapper = new ChunkExtractorWrapper(extractor, representation2.format);
            }
            this.segmentIndex = representation2.getIndex();
        }

        public void updateRepresentation(long j, Representation representation2) throws BehindLiveWindowException {
            int segmentCount;
            DashSegmentIndex index = this.representation.getIndex();
            DashSegmentIndex index2 = representation2.getIndex();
            this.periodDurationUs = j;
            this.representation = representation2;
            if (index != null) {
                this.segmentIndex = index2;
                if (index.isExplicit() && (segmentCount = index.getSegmentCount(this.periodDurationUs)) != 0) {
                    int firstSegmentNum = (index.getFirstSegmentNum() + segmentCount) - 1;
                    long timeUs = index.getTimeUs(firstSegmentNum) + index.getDurationUs(firstSegmentNum, this.periodDurationUs);
                    int firstSegmentNum2 = index2.getFirstSegmentNum();
                    long timeUs2 = index2.getTimeUs(firstSegmentNum2);
                    if (timeUs == timeUs2) {
                        this.segmentNumShift += (firstSegmentNum + 1) - firstSegmentNum2;
                    } else if (timeUs >= timeUs2) {
                        this.segmentNumShift += index.getSegmentNum(timeUs2, this.periodDurationUs) - firstSegmentNum2;
                    } else {
                        throw new BehindLiveWindowException();
                    }
                }
            }
        }

        public int getFirstSegmentNum() {
            return this.segmentIndex.getFirstSegmentNum() + this.segmentNumShift;
        }

        public int getSegmentCount() {
            return this.segmentIndex.getSegmentCount(this.periodDurationUs);
        }

        public long getSegmentStartTimeUs(int i) {
            return this.segmentIndex.getTimeUs(i - this.segmentNumShift);
        }

        public long getSegmentEndTimeUs(int i) {
            return getSegmentStartTimeUs(i) + this.segmentIndex.getDurationUs(i - this.segmentNumShift, this.periodDurationUs);
        }

        public int getSegmentNum(long j) {
            return this.segmentIndex.getSegmentNum(j, this.periodDurationUs) + this.segmentNumShift;
        }

        public RangedUri getSegmentUrl(int i) {
            return this.segmentIndex.getSegmentUrl(i - this.segmentNumShift);
        }

        private static boolean mimeTypeIsWebm(String str) {
            return str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM) || str.startsWith(MimeTypes.APPLICATION_WEBM);
        }

        private static boolean mimeTypeIsRawText(String str) {
            return MimeTypes.isText(str) || MimeTypes.APPLICATION_TTML.equals(str);
        }
    }
}
