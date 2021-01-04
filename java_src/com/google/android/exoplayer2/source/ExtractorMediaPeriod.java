package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

final class ExtractorMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final long continueLoadingCheckIntervalBytes;
    private final String customCacheKey;
    private final DataSource dataSource;
    private long durationUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final ExtractorMediaSource.EventListener eventListener;
    private int extractedSamplesCountAtStartOfLoad;
    private final ExtractorHolder extractorHolder;
    private final Handler handler;
    private boolean haveAudioVideoTracks;
    private long lastSeekPositionUs;
    private long length;
    private final Listener listener;
    private final ConditionVariable loadCondition;
    private final Loader loader = new Loader("Loader:ExtractorMediaPeriod");
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable;
    private final int minLoadableRetryCount;
    private boolean notifyDiscontinuity;
    private final Runnable onContinueLoadingRequestedRunnable;
    private long pendingResetPositionUs;
    private boolean prepared;
    private boolean released;
    private int[] sampleQueueTrackIds;
    private SampleQueue[] sampleQueues;
    private boolean sampleQueuesBuilt;
    private SeekMap seekMap;
    private boolean seenFirstTrackSelection;
    private boolean[] trackEnabledStates;
    private boolean[] trackIsAudioVideoFlags;
    private TrackGroupArray tracks;
    private final Uri uri;

    /* access modifiers changed from: package-private */
    public interface Listener {
        void onSourceInfoRefreshed(long j, boolean z);
    }

    public ExtractorMediaPeriod(Uri uri2, DataSource dataSource2, Extractor[] extractorArr, int i, Handler handler2, ExtractorMediaSource.EventListener eventListener2, Listener listener2, Allocator allocator2, String str, int i2) {
        this.uri = uri2;
        this.dataSource = dataSource2;
        this.minLoadableRetryCount = i;
        this.eventHandler = handler2;
        this.eventListener = eventListener2;
        this.listener = listener2;
        this.allocator = allocator2;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = (long) i2;
        this.extractorHolder = new ExtractorHolder(extractorArr, this);
        this.loadCondition = new ConditionVariable();
        this.maybeFinishPrepareRunnable = new Runnable() {
            /* class com.google.android.exoplayer2.source.ExtractorMediaPeriod.AnonymousClass1 */

            public void run() {
                ExtractorMediaPeriod.this.maybeFinishPrepare();
            }
        };
        this.onContinueLoadingRequestedRunnable = new Runnable() {
            /* class com.google.android.exoplayer2.source.ExtractorMediaPeriod.AnonymousClass2 */

            public void run() {
                if (!ExtractorMediaPeriod.this.released) {
                    ExtractorMediaPeriod.this.callback.onContinueLoadingRequested(ExtractorMediaPeriod.this);
                }
            }
        };
        this.handler = new Handler();
        this.sampleQueueTrackIds = new int[0];
        this.sampleQueues = new SampleQueue[0];
        this.pendingResetPositionUs = C.TIME_UNSET;
        this.length = -1;
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
        this.extractorHolder.release();
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback2, long j) {
        this.callback = callback2;
        this.loadCondition.open();
        startLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.tracks;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        Assertions.checkState(this.prepared);
        int i = this.enabledTrackCount;
        int i2 = 0;
        for (int i3 = 0; i3 < trackSelectionArr.length; i3++) {
            if (sampleStreamArr[i3] != null && (trackSelectionArr[i3] == null || !zArr[i3])) {
                int i4 = ((SampleStreamImpl) sampleStreamArr[i3]).track;
                Assertions.checkState(this.trackEnabledStates[i4]);
                this.enabledTrackCount--;
                this.trackEnabledStates[i4] = false;
                sampleStreamArr[i3] = null;
            }
        }
        boolean z = !this.seenFirstTrackSelection ? j != 0 : i == 0;
        for (int i5 = 0; i5 < trackSelectionArr.length; i5++) {
            if (sampleStreamArr[i5] == null && trackSelectionArr[i5] != null) {
                TrackSelection trackSelection = trackSelectionArr[i5];
                Assertions.checkState(trackSelection.length() == 1);
                Assertions.checkState(trackSelection.getIndexInTrackGroup(0) == 0);
                int indexOf = this.tracks.indexOf(trackSelection.getTrackGroup());
                Assertions.checkState(!this.trackEnabledStates[indexOf]);
                this.enabledTrackCount++;
                this.trackEnabledStates[indexOf] = true;
                sampleStreamArr[i5] = new SampleStreamImpl(indexOf);
                zArr2[i5] = true;
                if (!z) {
                    SampleQueue sampleQueue = this.sampleQueues[indexOf];
                    sampleQueue.rewind();
                    z = !sampleQueue.advanceTo(j, true, true) && sampleQueue.getReadIndex() != 0;
                }
            }
        }
        if (this.enabledTrackCount == 0) {
            this.notifyDiscontinuity = false;
            if (this.loader.isLoading()) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length2 = sampleQueueArr.length;
                while (i2 < length2) {
                    sampleQueueArr[i2].discardToEnd();
                    i2++;
                }
                this.loader.cancelLoading();
            } else {
                SampleQueue[] sampleQueueArr2 = this.sampleQueues;
                int length3 = sampleQueueArr2.length;
                while (i2 < length3) {
                    sampleQueueArr2[i2].reset();
                    i2++;
                }
            }
        } else if (z) {
            j = seekToUs(j);
            while (i2 < sampleStreamArr.length) {
                if (sampleStreamArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.seenFirstTrackSelection = true;
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j) {
        int length2 = this.sampleQueues.length;
        for (int i = 0; i < length2; i++) {
            this.sampleQueues[i].discardTo(j, false, this.trackEnabledStates[i]);
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public boolean continueLoading(long j) {
        if (this.loadingFinished) {
            return false;
        }
        if (this.prepared && this.enabledTrackCount == 0) {
            return false;
        }
        boolean open = this.loadCondition.open();
        if (this.loader.isLoading()) {
            return open;
        }
        startLoading();
        return true;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getNextLoadPositionUs() {
        if (this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.notifyDiscontinuity) {
            return C.TIME_UNSET;
        }
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getBufferedPositionUs() {
        long j;
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.haveAudioVideoTracks) {
            j = Long.MAX_VALUE;
            int length2 = this.sampleQueues.length;
            for (int i = 0; i < length2; i++) {
                if (this.trackIsAudioVideoFlags[i]) {
                    j = Math.min(j, this.sampleQueues[i].getLargestQueuedTimestampUs());
                }
            }
        } else {
            j = getLargestQueuedTimestampUs();
        }
        return j == Long.MIN_VALUE ? this.lastSeekPositionUs : j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        if (!this.seekMap.isSeekable()) {
            j = 0;
        }
        this.lastSeekPositionUs = j;
        this.notifyDiscontinuity = false;
        if (!isPendingReset() && seekInsideBufferUs(j)) {
            return j;
        }
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
        } else {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
        }
        return j;
    }

    /* access modifiers changed from: package-private */
    public boolean isReady(int i) {
        return this.loadingFinished || (!isPendingReset() && this.sampleQueues[i].hasNextSample());
    }

    /* access modifiers changed from: package-private */
    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
    }

    /* access modifiers changed from: package-private */
    public int readData(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (this.notifyDiscontinuity || isPendingReset()) {
            return -3;
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

    public void onLoadCompleted(ExtractingLoadable extractingLoadable, long j, long j2) {
        copyLengthFromLoader(extractingLoadable);
        this.loadingFinished = true;
        if (this.durationUs == C.TIME_UNSET) {
            long largestQueuedTimestampUs = getLargestQueuedTimestampUs();
            this.durationUs = largestQueuedTimestampUs == Long.MIN_VALUE ? 0 : largestQueuedTimestampUs + 10000;
            this.listener.onSourceInfoRefreshed(this.durationUs, this.seekMap.isSeekable());
        }
        this.callback.onContinueLoadingRequested(this);
    }

    public void onLoadCanceled(ExtractingLoadable extractingLoadable, long j, long j2, boolean z) {
        if (!z) {
            copyLengthFromLoader(extractingLoadable);
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
            if (this.enabledTrackCount > 0) {
                this.callback.onContinueLoadingRequested(this);
            }
        }
    }

    public int onLoadError(ExtractingLoadable extractingLoadable, long j, long j2, IOException iOException) {
        copyLengthFromLoader(extractingLoadable);
        notifyLoadError(iOException);
        if (isLoadableExceptionFatal(iOException)) {
            return 3;
        }
        int i = getExtractedSamplesCount() > this.extractedSamplesCountAtStartOfLoad ? 1 : 0;
        configureRetry(extractingLoadable);
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        return i;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        int length2 = this.sampleQueues.length;
        for (int i3 = 0; i3 < length2; i3++) {
            if (this.sampleQueueTrackIds[i3] == i) {
                return this.sampleQueues[i3];
            }
        }
        SampleQueue sampleQueue = new SampleQueue(this.allocator);
        sampleQueue.setUpstreamFormatChangeListener(this);
        int i4 = length2 + 1;
        this.sampleQueueTrackIds = Arrays.copyOf(this.sampleQueueTrackIds, i4);
        this.sampleQueueTrackIds[length2] = i;
        this.sampleQueues = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i4);
        this.sampleQueues[length2] = sampleQueue;
        return sampleQueue;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap2) {
        this.seekMap = seekMap2;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void maybeFinishPrepare() {
        if (!this.released && !this.prepared && this.seekMap != null && this.sampleQueuesBuilt) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                if (sampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            this.loadCondition.close();
            int length2 = this.sampleQueues.length;
            TrackGroup[] trackGroupArr = new TrackGroup[length2];
            this.trackIsAudioVideoFlags = new boolean[length2];
            this.trackEnabledStates = new boolean[length2];
            this.durationUs = this.seekMap.getDurationUs();
            int i = 0;
            while (true) {
                boolean z = true;
                if (i < length2) {
                    Format upstreamFormat = this.sampleQueues[i].getUpstreamFormat();
                    trackGroupArr[i] = new TrackGroup(upstreamFormat);
                    String str = upstreamFormat.sampleMimeType;
                    if (!MimeTypes.isVideo(str) && !MimeTypes.isAudio(str)) {
                        z = false;
                    }
                    this.trackIsAudioVideoFlags[i] = z;
                    this.haveAudioVideoTracks = z | this.haveAudioVideoTracks;
                    i++;
                } else {
                    this.tracks = new TrackGroupArray(trackGroupArr);
                    this.prepared = true;
                    this.listener.onSourceInfoRefreshed(this.durationUs, this.seekMap.isSeekable());
                    this.callback.onPrepared(this);
                    return;
                }
            }
        }
    }

    private void copyLengthFromLoader(ExtractingLoadable extractingLoadable) {
        if (this.length == -1) {
            this.length = extractingLoadable.length;
        }
    }

    private void startLoading() {
        ExtractingLoadable extractingLoadable = new ExtractingLoadable(this.uri, this.dataSource, this.extractorHolder, this.loadCondition);
        if (this.prepared) {
            Assertions.checkState(isPendingReset());
            if (this.durationUs == C.TIME_UNSET || this.pendingResetPositionUs < this.durationUs) {
                extractingLoadable.setLoadPosition(this.seekMap.getPosition(this.pendingResetPositionUs), this.pendingResetPositionUs);
                this.pendingResetPositionUs = C.TIME_UNSET;
            } else {
                this.loadingFinished = true;
                this.pendingResetPositionUs = C.TIME_UNSET;
                return;
            }
        }
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        int i = this.minLoadableRetryCount;
        if (i == -1) {
            i = (this.prepared && this.length == -1 && (this.seekMap == null || this.seekMap.getDurationUs() == C.TIME_UNSET)) ? 6 : 3;
        }
        this.loader.startLoading(extractingLoadable, this, i);
    }

    private void configureRetry(ExtractingLoadable extractingLoadable) {
        if (this.length != -1) {
            return;
        }
        if (this.seekMap == null || this.seekMap.getDurationUs() == C.TIME_UNSET) {
            this.lastSeekPositionUs = 0;
            this.notifyDiscontinuity = this.prepared;
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
            extractingLoadable.setLoadPosition(0, 0);
        }
    }

    private boolean seekInsideBufferUs(long j) {
        int length2 = this.sampleQueues.length;
        for (int i = 0; i < length2; i++) {
            SampleQueue sampleQueue = this.sampleQueues[i];
            sampleQueue.rewind();
            if (!sampleQueue.advanceTo(j, true, false) && (this.trackIsAudioVideoFlags[i] || !this.haveAudioVideoTracks)) {
                return false;
            }
            sampleQueue.discardToRead();
        }
        return true;
    }

    private int getExtractedSamplesCount() {
        int i = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            i += sampleQueue.getWriteIndex();
        }
        return i;
    }

    private long getLargestQueuedTimestampUs() {
        long j = Long.MIN_VALUE;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            j = Math.max(j, sampleQueue.getLargestQueuedTimestampUs());
        }
        return j;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    private boolean isLoadableExceptionFatal(IOException iOException) {
        return iOException instanceof UnrecognizedInputFormatException;
    }

    private void notifyLoadError(final IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() {
                /* class com.google.android.exoplayer2.source.ExtractorMediaPeriod.AnonymousClass3 */

                public void run() {
                    ExtractorMediaPeriod.this.eventListener.onLoadError(iOException);
                }
            });
        }
    }

    private final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int i) {
            this.track = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return ExtractorMediaPeriod.this.isReady(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            ExtractorMediaPeriod.this.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            return ExtractorMediaPeriod.this.readData(this.track, formatHolder, decoderInputBuffer, z);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void skipData(long j) {
            ExtractorMediaPeriod.this.skipData(this.track, j);
        }
    }

    /* access modifiers changed from: package-private */
    public final class ExtractingLoadable implements Loader.Loadable {
        private final DataSource dataSource;
        private final ExtractorHolder extractorHolder;
        private long length = -1;
        private volatile boolean loadCanceled;
        private final ConditionVariable loadCondition;
        private boolean pendingExtractorSeek = true;
        private final PositionHolder positionHolder = new PositionHolder();
        private long seekTimeUs;
        private final Uri uri;

        public ExtractingLoadable(Uri uri2, DataSource dataSource2, ExtractorHolder extractorHolder2, ConditionVariable conditionVariable) {
            this.uri = (Uri) Assertions.checkNotNull(uri2);
            this.dataSource = (DataSource) Assertions.checkNotNull(dataSource2);
            this.extractorHolder = (ExtractorHolder) Assertions.checkNotNull(extractorHolder2);
            this.loadCondition = conditionVariable;
        }

        public void setLoadPosition(long j, long j2) {
            this.positionHolder.position = j;
            this.seekTimeUs = j2;
            this.pendingExtractorSeek = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public boolean isLoadCanceled() {
            return this.loadCanceled;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws IOException, InterruptedException {
            DefaultExtractorInput defaultExtractorInput;
            Throwable th;
            int i = 0;
            while (i == 0 && !this.loadCanceled) {
                try {
                    long j = this.positionHolder.position;
                    this.length = this.dataSource.open(new DataSpec(this.uri, j, -1, ExtractorMediaPeriod.this.customCacheKey));
                    if (this.length != -1) {
                        this.length += j;
                    }
                    defaultExtractorInput = new DefaultExtractorInput(this.dataSource, j, this.length);
                    try {
                        Extractor selectExtractor = this.extractorHolder.selectExtractor(defaultExtractorInput, this.dataSource.getUri());
                        if (this.pendingExtractorSeek) {
                            selectExtractor.seek(j, this.seekTimeUs);
                            this.pendingExtractorSeek = false;
                        }
                        while (i == 0 && !this.loadCanceled) {
                            this.loadCondition.block();
                            int read = selectExtractor.read(defaultExtractorInput, this.positionHolder);
                            try {
                                if (defaultExtractorInput.getPosition() > ExtractorMediaPeriod.this.continueLoadingCheckIntervalBytes + j) {
                                    j = defaultExtractorInput.getPosition();
                                    this.loadCondition.close();
                                    ExtractorMediaPeriod.this.handler.post(ExtractorMediaPeriod.this.onContinueLoadingRequestedRunnable);
                                }
                                i = read;
                            } catch (Throwable th2) {
                                th = th2;
                                i = read;
                                if (!(i == 1 || defaultExtractorInput == null)) {
                                    this.positionHolder.position = defaultExtractorInput.getPosition();
                                }
                                Util.closeQuietly(this.dataSource);
                                throw th;
                            }
                        }
                        if (i == 1) {
                            i = 0;
                        } else {
                            this.positionHolder.position = defaultExtractorInput.getPosition();
                        }
                        Util.closeQuietly(this.dataSource);
                    } catch (Throwable th3) {
                        th = th3;
                        this.positionHolder.position = defaultExtractorInput.getPosition();
                        Util.closeQuietly(this.dataSource);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    defaultExtractorInput = null;
                    this.positionHolder.position = defaultExtractorInput.getPosition();
                    Util.closeQuietly(this.dataSource);
                    throw th;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public static final class ExtractorHolder {
        private Extractor extractor;
        private final ExtractorOutput extractorOutput;
        private final Extractor[] extractors;

        public ExtractorHolder(Extractor[] extractorArr, ExtractorOutput extractorOutput2) {
            this.extractors = extractorArr;
            this.extractorOutput = extractorOutput2;
        }

        public Extractor selectExtractor(ExtractorInput extractorInput, Uri uri) throws IOException, InterruptedException {
            if (this.extractor != null) {
                return this.extractor;
            }
            Extractor[] extractorArr = this.extractors;
            int length = extractorArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Extractor extractor2 = extractorArr[i];
                try {
                    if (extractor2.sniff(extractorInput)) {
                        this.extractor = extractor2;
                        extractorInput.resetPeekPosition();
                        break;
                    }
                    extractorInput.resetPeekPosition();
                    i++;
                } catch (EOFException unused) {
                } catch (Throwable th) {
                    extractorInput.resetPeekPosition();
                    throw th;
                }
            }
            if (this.extractor != null) {
                this.extractor.init(this.extractorOutput);
                return this.extractor;
            }
            throw new UnrecognizedInputFormatException("None of the available extractors (" + Util.getCommaDelimitedSimpleClassNames(this.extractors) + ") could read the stream.", uri);
        }

        public void release() {
            if (this.extractor != null) {
                this.extractor.release();
                this.extractor = null;
            }
        }
    }
}
