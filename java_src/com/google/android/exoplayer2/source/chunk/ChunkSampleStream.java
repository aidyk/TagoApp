package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.AdaptiveMediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.chunk.ChunkSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class ChunkSampleStream<T extends ChunkSource> implements SampleStream, SequenceableLoader, Loader.Callback<Chunk>, Loader.ReleaseCallback {
    private final SequenceableLoader.Callback<ChunkSampleStream<T>> callback;
    private final T chunkSource;
    private final SampleQueue[] embeddedSampleQueues;
    private final int[] embeddedTrackTypes;
    private final boolean[] embeddedTracksSelected;
    private final AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher;
    long lastSeekPositionUs;
    private final Loader loader = new Loader("Loader:ChunkSampleStream");
    boolean loadingFinished;
    private final BaseMediaChunkOutput mediaChunkOutput;
    private final LinkedList<BaseMediaChunk> mediaChunks = new LinkedList<>();
    private final int minLoadableRetryCount;
    private final ChunkHolder nextChunkHolder = new ChunkHolder();
    private long pendingResetPositionUs;
    private Format primaryDownstreamTrackFormat;
    private final SampleQueue primarySampleQueue;
    private final int primaryTrackType;
    private final List<BaseMediaChunk> readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);

    public ChunkSampleStream(int i, int[] iArr, T t, SequenceableLoader.Callback<ChunkSampleStream<T>> callback2, Allocator allocator, long j, int i2, AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher2) {
        int i3;
        this.primaryTrackType = i;
        this.embeddedTrackTypes = iArr;
        this.chunkSource = t;
        this.callback = callback2;
        this.eventDispatcher = eventDispatcher2;
        this.minLoadableRetryCount = i2;
        int i4 = 0;
        if (iArr == null) {
            i3 = 0;
        } else {
            i3 = iArr.length;
        }
        this.embeddedSampleQueues = new SampleQueue[i3];
        this.embeddedTracksSelected = new boolean[i3];
        int i5 = i3 + 1;
        int[] iArr2 = new int[i5];
        SampleQueue[] sampleQueueArr = new SampleQueue[i5];
        this.primarySampleQueue = new SampleQueue(allocator);
        iArr2[0] = i;
        sampleQueueArr[0] = this.primarySampleQueue;
        while (i4 < i3) {
            SampleQueue sampleQueue = new SampleQueue(allocator);
            this.embeddedSampleQueues[i4] = sampleQueue;
            int i6 = i4 + 1;
            sampleQueueArr[i6] = sampleQueue;
            iArr2[i6] = iArr[i4];
            i4 = i6;
        }
        this.mediaChunkOutput = new BaseMediaChunkOutput(iArr2, sampleQueueArr);
        this.pendingResetPositionUs = j;
        this.lastSeekPositionUs = j;
    }

    public void discardEmbeddedTracksTo(long j) {
        for (int i = 0; i < this.embeddedSampleQueues.length; i++) {
            this.embeddedSampleQueues[i].discardTo(j, true, this.embeddedTracksSelected[i]);
        }
    }

    public ChunkSampleStream<T>.EmbeddedSampleStream selectEmbeddedTrack(long j, int i) {
        for (int i2 = 0; i2 < this.embeddedSampleQueues.length; i2++) {
            if (this.embeddedTrackTypes[i2] == i) {
                Assertions.checkState(!this.embeddedTracksSelected[i2]);
                this.embeddedTracksSelected[i2] = true;
                this.embeddedSampleQueues[i2].rewind();
                this.embeddedSampleQueues[i2].advanceTo(j, true, true);
                return new EmbeddedSampleStream(this, this.embeddedSampleQueues[i2], i2);
            }
        }
        throw new IllegalStateException();
    }

    public T getChunkSource() {
        return this.chunkSource;
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
        BaseMediaChunk last = this.mediaChunks.getLast();
        if (!last.isLoadCompleted()) {
            last = this.mediaChunks.size() > 1 ? this.mediaChunks.get(this.mediaChunks.size() - 2) : null;
        }
        if (last != null) {
            j = Math.max(j, last.endTimeUs);
        }
        return Math.max(j, this.primarySampleQueue.getLargestQueuedTimestampUs());
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void seekToUs(long r7) {
        /*
        // Method dump skipped, instructions count: 107
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.chunk.ChunkSampleStream.seekToUs(long):void");
    }

    public void release() {
        if (!this.loader.release(this)) {
            this.primarySampleQueue.discardToEnd();
            for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
                sampleQueue.discardToEnd();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        this.primarySampleQueue.reset();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.reset();
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return this.loadingFinished || (!isPendingReset() && this.primarySampleQueue.hasNextSample());
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        if (!this.loader.isLoading()) {
            this.chunkSource.maybeThrowError();
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (isPendingReset()) {
            return -3;
        }
        discardDownstreamMediaChunks(this.primarySampleQueue.getReadIndex());
        int read = this.primarySampleQueue.read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.lastSeekPositionUs);
        if (read == -4) {
            this.primarySampleQueue.discardToRead();
        }
        return read;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void skipData(long j) {
        if (!this.loadingFinished || j <= this.primarySampleQueue.getLargestQueuedTimestampUs()) {
            this.primarySampleQueue.advanceTo(j, true, true);
        } else {
            this.primarySampleQueue.advanceToEnd();
        }
        this.primarySampleQueue.discardToRead();
    }

    public void onLoadCompleted(Chunk chunk, long j, long j2) {
        this.chunkSource.onChunkLoadCompleted(chunk);
        this.eventDispatcher.loadCompleted(chunk.dataSpec, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        this.callback.onContinueLoadingRequested(this);
    }

    public void onLoadCanceled(Chunk chunk, long j, long j2, boolean z) {
        this.eventDispatcher.loadCanceled(chunk.dataSpec, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, chunk.bytesLoaded());
        if (!z) {
            this.primarySampleQueue.reset();
            for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
                sampleQueue.reset();
            }
            this.callback.onContinueLoadingRequested(this);
        }
    }

    public int onLoadError(Chunk chunk, long j, long j2, IOException iOException) {
        boolean z;
        long bytesLoaded = chunk.bytesLoaded();
        boolean isMediaChunk = isMediaChunk(chunk);
        if (this.chunkSource.onChunkLoadError(chunk, !isMediaChunk || bytesLoaded == 0 || this.mediaChunks.size() > 1, iOException)) {
            if (isMediaChunk) {
                BaseMediaChunk removeLast = this.mediaChunks.removeLast();
                Assertions.checkState(removeLast == chunk);
                this.primarySampleQueue.discardUpstreamSamples(removeLast.getFirstSampleIndex(0));
                int i = 0;
                while (i < this.embeddedSampleQueues.length) {
                    SampleQueue sampleQueue = this.embeddedSampleQueues[i];
                    i++;
                    sampleQueue.discardUpstreamSamples(removeLast.getFirstSampleIndex(i));
                }
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                }
            }
            z = true;
        } else {
            z = false;
        }
        this.eventDispatcher.loadError(chunk.dataSpec, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j, j2, bytesLoaded, iOException, z);
        if (!z) {
            return 0;
        }
        this.callback.onContinueLoadingRequested(this);
        return 2;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        this.chunkSource.getNextChunk(this.mediaChunks.isEmpty() ? null : this.mediaChunks.getLast(), this.pendingResetPositionUs != C.TIME_UNSET ? this.pendingResetPositionUs : j, this.nextChunkHolder);
        boolean z = this.nextChunkHolder.endOfStream;
        Chunk chunk = this.nextChunkHolder.chunk;
        this.nextChunkHolder.clear();
        if (z) {
            this.pendingResetPositionUs = C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        } else if (chunk == null) {
            return false;
        } else {
            if (isMediaChunk(chunk)) {
                this.pendingResetPositionUs = C.TIME_UNSET;
                BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
                baseMediaChunk.init(this.mediaChunkOutput);
                this.mediaChunks.add(baseMediaChunk);
            }
            this.eventDispatcher.loadStarted(chunk.dataSpec, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, this.loader.startLoading(chunk, this, this.minLoadableRetryCount));
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

    private void maybeDiscardUpstream(long j) {
        discardUpstreamMediaChunks(Math.max(1, this.chunkSource.getPreferredQueueSize(j, this.readOnlyMediaChunks)));
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    /* access modifiers changed from: package-private */
    public boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    private void discardDownstreamMediaChunks(int i) {
        if (!this.mediaChunks.isEmpty()) {
            while (this.mediaChunks.size() > 1 && this.mediaChunks.get(1).getFirstSampleIndex(0) <= i) {
                this.mediaChunks.removeFirst();
            }
            BaseMediaChunk first = this.mediaChunks.getFirst();
            Format format = first.trackFormat;
            if (!format.equals(this.primaryDownstreamTrackFormat)) {
                this.eventDispatcher.downstreamFormatChanged(this.primaryTrackType, format, first.trackSelectionReason, first.trackSelectionData, first.startTimeUs);
            }
            this.primaryDownstreamTrackFormat = format;
        }
    }

    private boolean discardUpstreamMediaChunks(int i) {
        BaseMediaChunk removeLast;
        long j;
        if (this.mediaChunks.size() <= i) {
            return false;
        }
        long j2 = this.mediaChunks.getLast().endTimeUs;
        do {
            removeLast = this.mediaChunks.removeLast();
            j = removeLast.startTimeUs;
        } while (this.mediaChunks.size() > i);
        this.primarySampleQueue.discardUpstreamSamples(removeLast.getFirstSampleIndex(0));
        int i2 = 0;
        while (i2 < this.embeddedSampleQueues.length) {
            SampleQueue sampleQueue = this.embeddedSampleQueues[i2];
            i2++;
            sampleQueue.discardUpstreamSamples(removeLast.getFirstSampleIndex(i2));
        }
        this.loadingFinished = false;
        this.eventDispatcher.upstreamDiscarded(this.primaryTrackType, j, j2);
        return true;
    }

    public final class EmbeddedSampleStream implements SampleStream {
        private final int index;
        public final ChunkSampleStream<T> parent;
        private final SampleQueue sampleQueue;

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
        }

        public EmbeddedSampleStream(ChunkSampleStream<T> chunkSampleStream, SampleQueue sampleQueue2, int i) {
            this.parent = chunkSampleStream;
            this.sampleQueue = sampleQueue2;
            this.index = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return ChunkSampleStream.this.loadingFinished || (!ChunkSampleStream.this.isPendingReset() && this.sampleQueue.hasNextSample());
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void skipData(long j) {
            if (!ChunkSampleStream.this.loadingFinished || j <= this.sampleQueue.getLargestQueuedTimestampUs()) {
                this.sampleQueue.advanceTo(j, true, true);
            } else {
                this.sampleQueue.advanceToEnd();
            }
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (ChunkSampleStream.this.isPendingReset()) {
                return -3;
            }
            return this.sampleQueue.read(formatHolder, decoderInputBuffer, z, ChunkSampleStream.this.loadingFinished, ChunkSampleStream.this.lastSeekPositionUs);
        }

        public void release() {
            Assertions.checkState(ChunkSampleStream.this.embeddedTracksSelected[this.index]);
            ChunkSampleStream.this.embeddedTracksSelected[this.index] = false;
        }
    }
}
