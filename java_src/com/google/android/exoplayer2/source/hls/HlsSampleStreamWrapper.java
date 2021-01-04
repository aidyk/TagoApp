package com.google.android.exoplayer2.source.hls;

import android.os.Handler;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.source.AdaptiveMediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;

/* access modifiers changed from: package-private */
public final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, ExtractorOutput, SampleQueue.UpstreamFormatChangedListener {
    private static final int PRIMARY_TYPE_AUDIO = 2;
    private static final int PRIMARY_TYPE_NONE = 0;
    private static final int PRIMARY_TYPE_TEXT = 1;
    private static final int PRIMARY_TYPE_VIDEO = 3;
    private final Allocator allocator;
    private final Callback callback;
    private final HlsChunkSource chunkSource;
    private Format downstreamTrackFormat;
    private int enabledTrackCount;
    private final AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher;
    private final Handler handler = new Handler();
    private boolean haveAudioVideoTrackGroups;
    private long lastSeekPositionUs;
    private final Loader loader = new Loader("Loader:HlsSampleStreamWrapper");
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable = new Runnable() {
        /* class com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.AnonymousClass1 */

        public void run() {
            HlsSampleStreamWrapper.this.maybeFinishPrepare();
        }
    };
    private final LinkedList<HlsMediaChunk> mediaChunks = new LinkedList<>();
    private final int minLoadableRetryCount;
    private final Format muxedAudioFormat;
    private final HlsChunkSource.HlsChunkHolder nextChunkHolder = new HlsChunkSource.HlsChunkHolder();
    private long pendingResetPositionUs;
    private boolean pendingResetUpstreamFormats;
    private boolean prepared;
    private int primaryTrackGroupIndex;
    private boolean released;
    private int[] sampleQueueTrackIds = new int[0];
    private SampleQueue[] sampleQueues = new SampleQueue[0];
    private boolean sampleQueuesBuilt;
    private boolean seenFirstTrackSelection;
    private boolean[] trackGroupEnabledStates;
    private boolean[] trackGroupIsAudioVideoFlags;
    private TrackGroupArray trackGroups;
    private final int trackType;
    private int upstreamChunkUid;

    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void onPlaylistRefreshRequired(HlsMasterPlaylist.HlsUrl hlsUrl);

        void onPrepared();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    public HlsSampleStreamWrapper(int i, Callback callback2, HlsChunkSource hlsChunkSource, Allocator allocator2, long j, Format format, int i2, AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher2) {
        this.trackType = i;
        this.callback = callback2;
        this.chunkSource = hlsChunkSource;
        this.allocator = allocator2;
        this.muxedAudioFormat = format;
        this.minLoadableRetryCount = i2;
        this.eventDispatcher = eventDispatcher2;
        this.lastSeekPositionUs = j;
        this.pendingResetPositionUs = j;
    }

    public void continuePreparing() {
        if (!this.prepared) {
            continueLoading(this.lastSeekPositionUs);
        }
    }

    public void prepareSingleTrack(Format format) {
        track(0, -1).format(format);
        this.sampleQueuesBuilt = true;
        maybeFinishPrepare();
    }

    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
    }

    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x00fc  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0105  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[] r17, boolean[] r18, com.google.android.exoplayer2.source.SampleStream[] r19, boolean[] r20, long r21, boolean r23) {
        /*
        // Method dump skipped, instructions count: 280
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long, boolean):boolean");
    }

    public void discardBuffer(long j) {
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            this.sampleQueues[i].discardTo(j, false, this.trackGroupEnabledStates[i]);
        }
    }

    public boolean seekToUs(long j, boolean z) {
        this.lastSeekPositionUs = j;
        if (!z && !isPendingReset() && seekInsideBufferUs(j)) {
            return false;
        }
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return true;
        }
        resetSampleQueues();
        return true;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        long j = this.lastSeekPositionUs;
        HlsMediaChunk last = this.mediaChunks.getLast();
        if (!last.isLoadCompleted()) {
            last = this.mediaChunks.size() > 1 ? this.mediaChunks.get(this.mediaChunks.size() - 2) : null;
        }
        if (last != null) {
            j = Math.max(j, last.endTimeUs);
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            j = Math.max(j, sampleQueue.getLargestQueuedTimestampUs());
        }
        return j;
    }

    public void release() {
        boolean release = this.loader.release(this);
        if (this.prepared && !release) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.discardToEnd();
            }
        }
        this.handler.removeCallbacksAndMessages(null);
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        resetSampleQueues();
    }

    public void setIsTimestampMaster(boolean z) {
        this.chunkSource.setIsTimestampMaster(z);
    }

    public void onPlaylistBlacklisted(HlsMasterPlaylist.HlsUrl hlsUrl, long j) {
        this.chunkSource.onPlaylistBlacklisted(hlsUrl, j);
    }

    /* access modifiers changed from: package-private */
    public boolean isReady(int i) {
        return this.loadingFinished || (!isPendingReset() && this.sampleQueues[i].hasNextSample());
    }

    /* access modifiers changed from: package-private */
    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        this.chunkSource.maybeThrowError();
    }

    /* access modifiers changed from: package-private */
    public int readData(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (isPendingReset()) {
            return -3;
        }
        if (!this.mediaChunks.isEmpty()) {
            while (this.mediaChunks.size() > 1 && finishedReadingChunk(this.mediaChunks.getFirst())) {
                this.mediaChunks.removeFirst();
            }
            HlsMediaChunk first = this.mediaChunks.getFirst();
            Format format = first.trackFormat;
            if (!format.equals(this.downstreamTrackFormat)) {
                this.eventDispatcher.downstreamFormatChanged(this.trackType, format, first.trackSelectionReason, first.trackSelectionData, first.startTimeUs);
            }
            this.downstreamTrackFormat = format;
        }
        return this.sampleQueues[i].read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.lastSeekPositionUs);
    }

    /* access modifiers changed from: package-private */
    public void skipData(int i, long j) {
        SampleQueue sampleQueue = this.sampleQueues[i];
        if (!this.loadingFinished || j <= sampleQueue.getLargestQueuedTimestampUs()) {
            sampleQueue.advanceTo(j, true, true);
        } else {
            sampleQueue.advanceToEnd();
        }
    }

    private boolean finishedReadingChunk(HlsMediaChunk hlsMediaChunk) {
        int i = hlsMediaChunk.uid;
        for (int i2 = 0; i2 < this.sampleQueues.length; i2++) {
            if (this.trackGroupEnabledStates[i2] && this.sampleQueues[i2].peekSourceId() == i) {
                return false;
            }
        }
        return true;
    }

    private void resetSampleQueues() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset(this.pendingResetUpstreamFormats);
        }
        this.pendingResetUpstreamFormats = false;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        this.chunkSource.getNextChunk(this.mediaChunks.isEmpty() ? null : this.mediaChunks.getLast(), this.pendingResetPositionUs != C.TIME_UNSET ? this.pendingResetPositionUs : j, this.nextChunkHolder);
        boolean z = this.nextChunkHolder.endOfStream;
        Chunk chunk = this.nextChunkHolder.chunk;
        HlsMasterPlaylist.HlsUrl hlsUrl = this.nextChunkHolder.playlist;
        this.nextChunkHolder.clear();
        if (z) {
            this.pendingResetPositionUs = C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        } else if (chunk == null) {
            if (hlsUrl != null) {
                this.callback.onPlaylistRefreshRequired(hlsUrl);
            }
            return false;
        } else {
            if (isMediaChunk(chunk)) {
                this.pendingResetPositionUs = C.TIME_UNSET;
                HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) chunk;
                hlsMediaChunk.init(this);
                this.mediaChunks.add(hlsMediaChunk);
            }
            this.eventDispatcher.loadStarted(chunk.dataSpec, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, this.loader.startLoading(chunk, this, this.minLoadableRetryCount));
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return this.mediaChunks.getLast().endTimeUs;
    }

    public void onLoadCompleted(Chunk chunk, long j, long j2) {
        this.chunkSource.onChunkLoadCompleted(chunk);
        this.eventDispatcher.loadCompleted(chunk.dataSpec, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        if (!this.prepared) {
            continueLoading(this.lastSeekPositionUs);
        } else {
            this.callback.onContinueLoadingRequested(this);
        }
    }

    public void onLoadCanceled(Chunk chunk, long j, long j2, boolean z) {
        this.eventDispatcher.loadCanceled(chunk.dataSpec, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        if (!z) {
            resetSampleQueues();
            if (this.enabledTrackCount > 0) {
                this.callback.onContinueLoadingRequested(this);
            }
        }
    }

    public int onLoadError(Chunk chunk, long j, long j2, IOException iOException) {
        long bytesLoaded = chunk.bytesLoaded();
        boolean isMediaChunk = isMediaChunk(chunk);
        boolean z = true;
        if (!this.chunkSource.onChunkLoadError(chunk, !isMediaChunk || bytesLoaded == 0, iOException)) {
            z = false;
        } else if (isMediaChunk) {
            Assertions.checkState(this.mediaChunks.removeLast() == chunk);
            if (this.mediaChunks.isEmpty()) {
                this.pendingResetPositionUs = this.lastSeekPositionUs;
            }
        }
        this.eventDispatcher.loadError(chunk.dataSpec, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded(), iOException, z);
        if (!z) {
            return 0;
        }
        if (!this.prepared) {
            continueLoading(this.lastSeekPositionUs);
            return 2;
        }
        this.callback.onContinueLoadingRequested(this);
        return 2;
    }

    public void init(int i, boolean z) {
        this.upstreamChunkUid = i;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.sourceId(i);
        }
        if (z) {
            for (SampleQueue sampleQueue2 : this.sampleQueues) {
                sampleQueue2.splice();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public SampleQueue track(int i, int i2) {
        int length = this.sampleQueues.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.sampleQueueTrackIds[i3] == i) {
                return this.sampleQueues[i3];
            }
        }
        SampleQueue sampleQueue = new SampleQueue(this.allocator);
        sampleQueue.setUpstreamFormatChangeListener(this);
        int i4 = length + 1;
        this.sampleQueueTrackIds = Arrays.copyOf(this.sampleQueueTrackIds, i4);
        this.sampleQueueTrackIds[length] = i;
        this.sampleQueues = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i4);
        this.sampleQueues[length] = sampleQueue;
        return sampleQueue;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void maybeFinishPrepare() {
        if (!(this.released || this.prepared || !this.sampleQueuesBuilt)) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                if (sampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            buildTracks();
            this.prepared = true;
            this.callback.onPrepared();
        }
    }

    private void buildTracks() {
        int length = this.sampleQueues.length;
        int i = 0;
        char c = 0;
        int i2 = -1;
        while (true) {
            char c2 = 3;
            if (i >= length) {
                break;
            }
            String str = this.sampleQueues[i].getUpstreamFormat().sampleMimeType;
            if (!MimeTypes.isVideo(str)) {
                if (MimeTypes.isAudio(str)) {
                    c2 = 2;
                } else {
                    c2 = MimeTypes.isText(str) ? (char) 1 : 0;
                }
            }
            if (c2 > c) {
                i2 = i;
                c = c2;
            } else if (c2 == c && i2 != -1) {
                i2 = -1;
            }
            i++;
        }
        TrackGroup trackGroup = this.chunkSource.getTrackGroup();
        int i3 = trackGroup.length;
        this.primaryTrackGroupIndex = -1;
        this.trackGroupEnabledStates = new boolean[length];
        this.trackGroupIsAudioVideoFlags = new boolean[length];
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i4 = 0; i4 < length; i4++) {
            Format upstreamFormat = this.sampleQueues[i4].getUpstreamFormat();
            String str2 = upstreamFormat.sampleMimeType;
            boolean z = MimeTypes.isVideo(str2) || MimeTypes.isAudio(str2);
            this.trackGroupIsAudioVideoFlags[i4] = z;
            this.haveAudioVideoTrackGroups = z | this.haveAudioVideoTrackGroups;
            if (i4 == i2) {
                Format[] formatArr = new Format[i3];
                for (int i5 = 0; i5 < i3; i5++) {
                    formatArr[i5] = deriveFormat(trackGroup.getFormat(i5), upstreamFormat);
                }
                trackGroupArr[i4] = new TrackGroup(formatArr);
                this.primaryTrackGroupIndex = i4;
            } else {
                trackGroupArr[i4] = new TrackGroup(deriveFormat((c != 3 || !MimeTypes.isAudio(upstreamFormat.sampleMimeType)) ? null : this.muxedAudioFormat, upstreamFormat));
            }
        }
        this.trackGroups = new TrackGroupArray(trackGroupArr);
    }

    private void setTrackGroupEnabledState(int i, boolean z) {
        int i2 = 1;
        Assertions.checkState(this.trackGroupEnabledStates[i] != z);
        this.trackGroupEnabledStates[i] = z;
        int i3 = this.enabledTrackCount;
        if (!z) {
            i2 = -1;
        }
        this.enabledTrackCount = i3 + i2;
    }

    private static Format deriveFormat(Format format, Format format2) {
        if (format == null) {
            return format2;
        }
        String str = null;
        int trackType2 = MimeTypes.getTrackType(format2.sampleMimeType);
        if (trackType2 == 1) {
            str = getAudioCodecs(format.codecs);
        } else if (trackType2 == 2) {
            str = getVideoCodecs(format.codecs);
        }
        return format2.copyWithContainerInfo(format.id, str, format.bitrate, format.width, format.height, format.selectionFlags, format.language);
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof HlsMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    private boolean seekInsideBufferUs(long j) {
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            SampleQueue sampleQueue = this.sampleQueues[i];
            sampleQueue.rewind();
            if (!sampleQueue.advanceTo(j, true, false) && (this.trackGroupIsAudioVideoFlags[i] || !this.haveAudioVideoTrackGroups)) {
                return false;
            }
            sampleQueue.discardToRead();
        }
        return true;
    }

    private static String getAudioCodecs(String str) {
        return getCodecsOfType(str, 1);
    }

    private static String getVideoCodecs(String str) {
        return getCodecsOfType(str, 2);
    }

    private static String getCodecsOfType(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("(\\s*,\\s*)|(\\s*$)");
        StringBuilder sb = new StringBuilder();
        for (String str2 : split) {
            if (i == MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }
}
