package com.google.android.exoplayer2.audio;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.audio.AudioTrack;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.SimpleDecoder;
import com.google.android.exoplayer2.decoder.SimpleOutputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.ExoMediaCrypto;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MediaClock;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;

public abstract class SimpleDecoderAudioRenderer extends BaseRenderer implements MediaClock {
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    private boolean allowPositionDiscontinuity;
    private final AudioTrack audioTrack;
    private boolean audioTrackNeedsConfigure;
    private long currentPositionUs;
    private SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException> decoder;
    private DecoderCounters decoderCounters;
    private boolean decoderReceivedBuffers;
    private int decoderReinitializationState;
    private DrmSession<ExoMediaCrypto> drmSession;
    private final DrmSessionManager<ExoMediaCrypto> drmSessionManager;
    private final AudioRendererEventListener.EventDispatcher eventDispatcher;
    private final DecoderInputBuffer flagsOnlyBuffer;
    private final FormatHolder formatHolder;
    private DecoderInputBuffer inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private SimpleOutputBuffer outputBuffer;
    private boolean outputStreamEnded;
    private DrmSession<ExoMediaCrypto> pendingDrmSession;
    private final boolean playClearSamplesWithoutKeys;
    private boolean waitingForKeys;

    /* access modifiers changed from: protected */
    public abstract SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException> createDecoder(Format format, ExoMediaCrypto exoMediaCrypto) throws AudioDecoderException;

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public MediaClock getMediaClock() {
        return this;
    }

    /* access modifiers changed from: protected */
    public void onAudioSessionId(int i) {
    }

    /* access modifiers changed from: protected */
    public void onAudioTrackPositionDiscontinuity() {
    }

    /* access modifiers changed from: protected */
    public void onAudioTrackUnderrun(int i, long j, long j2) {
    }

    /* access modifiers changed from: protected */
    public abstract int supportsFormatInternal(Format format);

    public SimpleDecoderAudioRenderer() {
        this((Handler) null, (AudioRendererEventListener) null, new AudioProcessor[0]);
    }

    public SimpleDecoderAudioRenderer(Handler handler, AudioRendererEventListener audioRendererEventListener, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, null, null, false, audioProcessorArr);
    }

    public SimpleDecoderAudioRenderer(Handler handler, AudioRendererEventListener audioRendererEventListener, AudioCapabilities audioCapabilities) {
        this(handler, audioRendererEventListener, audioCapabilities, null, false, new AudioProcessor[0]);
    }

    public SimpleDecoderAudioRenderer(Handler handler, AudioRendererEventListener audioRendererEventListener, AudioCapabilities audioCapabilities, DrmSessionManager<ExoMediaCrypto> drmSessionManager2, boolean z, AudioProcessor... audioProcessorArr) {
        super(1);
        this.drmSessionManager = drmSessionManager2;
        this.playClearSamplesWithoutKeys = z;
        this.eventDispatcher = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.audioTrack = new AudioTrack(audioCapabilities, audioProcessorArr, new AudioTrackListener());
        this.formatHolder = new FormatHolder();
        this.flagsOnlyBuffer = DecoderInputBuffer.newFlagsOnlyInstance();
        this.decoderReinitializationState = 0;
        this.audioTrackNeedsConfigure = true;
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public final int supportsFormat(Format format) {
        int supportsFormatInternal = supportsFormatInternal(format);
        if (supportsFormatInternal == 0 || supportsFormatInternal == 1) {
            return supportsFormatInternal;
        }
        return supportsFormatInternal | (Util.SDK_INT >= 21 ? 32 : 0) | 8;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            try {
                this.audioTrack.playToEndOfStream();
            } catch (AudioTrack.WriteException e) {
                throw ExoPlaybackException.createForRenderer(e, getIndex());
            }
        } else {
            if (this.inputFormat == null) {
                this.flagsOnlyBuffer.clear();
                int readSource = readSource(this.formatHolder, this.flagsOnlyBuffer, true);
                if (readSource == -5) {
                    onInputFormatChanged(this.formatHolder.format);
                } else if (readSource == -4) {
                    Assertions.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    processEndOfStream();
                    return;
                } else {
                    return;
                }
            }
            maybeInitDecoder();
            if (this.decoder != null) {
                try {
                    TraceUtil.beginSection("drainAndFeed");
                    while (drainOutputBuffer()) {
                    }
                    while (feedInputBuffer()) {
                    }
                    TraceUtil.endSection();
                    this.decoderCounters.ensureUpdated();
                } catch (AudioDecoderException | AudioTrack.ConfigurationException | AudioTrack.InitializationException | AudioTrack.WriteException e2) {
                    throw ExoPlaybackException.createForRenderer(e2, getIndex());
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public Format getOutputFormat() {
        return Format.createAudioSampleFormat(null, MimeTypes.AUDIO_RAW, null, -1, -1, this.inputFormat.channelCount, this.inputFormat.sampleRate, 2, null, null, 0, null);
    }

    private boolean drainOutputBuffer() throws ExoPlaybackException, AudioDecoderException, AudioTrack.ConfigurationException, AudioTrack.InitializationException, AudioTrack.WriteException {
        if (this.outputBuffer == null) {
            this.outputBuffer = (SimpleOutputBuffer) this.decoder.dequeueOutputBuffer();
            if (this.outputBuffer == null) {
                return false;
            }
            this.decoderCounters.skippedOutputBufferCount += this.outputBuffer.skippedOutputBufferCount;
        }
        if (this.outputBuffer.isEndOfStream()) {
            if (this.decoderReinitializationState == 2) {
                releaseDecoder();
                maybeInitDecoder();
                this.audioTrackNeedsConfigure = true;
            } else {
                this.outputBuffer.release();
                this.outputBuffer = null;
                processEndOfStream();
            }
            return false;
        }
        if (this.audioTrackNeedsConfigure) {
            Format outputFormat = getOutputFormat();
            this.audioTrack.configure(outputFormat.sampleMimeType, outputFormat.channelCount, outputFormat.sampleRate, outputFormat.pcmEncoding, 0);
            this.audioTrackNeedsConfigure = false;
        }
        if (!this.audioTrack.handleBuffer(this.outputBuffer.data, this.outputBuffer.timeUs)) {
            return false;
        }
        this.decoderCounters.renderedOutputBufferCount++;
        this.outputBuffer.release();
        this.outputBuffer = null;
        return true;
    }

    private boolean feedInputBuffer() throws AudioDecoderException, ExoPlaybackException {
        int i;
        if (this.decoder == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            this.inputBuffer = this.decoder.dequeueInputBuffer();
            if (this.inputBuffer == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 1) {
            this.inputBuffer.setFlags(4);
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        if (this.waitingForKeys) {
            i = -4;
        } else {
            i = readSource(this.formatHolder, this.inputBuffer, false);
        }
        if (i == -3) {
            return false;
        }
        if (i == -5) {
            onInputFormatChanged(this.formatHolder.format);
            return true;
        } else if (this.inputBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            return false;
        } else {
            this.waitingForKeys = shouldWaitForKeys(this.inputBuffer.isEncrypted());
            if (this.waitingForKeys) {
                return false;
            }
            this.inputBuffer.flip();
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.decoderReceivedBuffers = true;
            this.decoderCounters.inputBufferCount++;
            this.inputBuffer = null;
            return true;
        }
    }

    private boolean shouldWaitForKeys(boolean z) throws ExoPlaybackException {
        if (this.drmSession == null || (!z && this.playClearSamplesWithoutKeys)) {
            return false;
        }
        int state = this.drmSession.getState();
        if (state != 1) {
            return state != 4;
        }
        throw ExoPlaybackException.createForRenderer(this.drmSession.getError(), getIndex());
    }

    private void processEndOfStream() throws ExoPlaybackException {
        this.outputStreamEnded = true;
        try {
            this.audioTrack.playToEndOfStream();
        } catch (AudioTrack.WriteException unused) {
            throw ExoPlaybackException.createForRenderer(this.drmSession.getError(), getIndex());
        }
    }

    private void flushDecoder() throws ExoPlaybackException {
        this.waitingForKeys = false;
        if (this.decoderReinitializationState != 0) {
            releaseDecoder();
            maybeInitDecoder();
            return;
        }
        this.inputBuffer = null;
        if (this.outputBuffer != null) {
            this.outputBuffer.release();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded && this.audioTrack.isEnded();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return this.audioTrack.hasPendingData() || (this.inputFormat != null && !this.waitingForKeys && (isSourceReady() || this.outputBuffer != null));
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        long currentPositionUs2 = this.audioTrack.getCurrentPositionUs(isEnded());
        if (currentPositionUs2 != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs2 = Math.max(this.currentPositionUs, currentPositionUs2);
            }
            this.currentPositionUs = currentPositionUs2;
            this.allowPositionDiscontinuity = false;
        }
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters) {
        return this.audioTrack.setPlaybackParameters(playbackParameters);
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.audioTrack.getPlaybackParameters();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
        this.eventDispatcher.enabled(this.decoderCounters);
        int i = getConfiguration().tunnelingAudioSessionId;
        if (i != 0) {
            this.audioTrack.enableTunnelingV21(i);
        } else {
            this.audioTrack.disableTunneling();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        this.audioTrack.reset();
        this.currentPositionUs = j;
        this.allowPositionDiscontinuity = true;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.decoder != null) {
            flushDecoder();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        this.audioTrack.play();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.audioTrack.pause();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.audioTrackNeedsConfigure = true;
        this.waitingForKeys = false;
        try {
            releaseDecoder();
            this.audioTrack.release();
            try {
                if (this.drmSession != null) {
                    this.drmSessionManager.releaseSession(this.drmSession);
                }
                try {
                    if (!(this.pendingDrmSession == null || this.pendingDrmSession == this.drmSession)) {
                        this.drmSessionManager.releaseSession(this.pendingDrmSession);
                    }
                } finally {
                    this.drmSession = null;
                    this.pendingDrmSession = null;
                    this.decoderCounters.ensureUpdated();
                    this.eventDispatcher.disabled(this.decoderCounters);
                }
            } catch (Throwable th) {
                if (!(this.pendingDrmSession == null || this.pendingDrmSession == this.drmSession)) {
                    this.drmSessionManager.releaseSession(this.pendingDrmSession);
                }
                throw th;
            } finally {
                this.drmSession = null;
                this.pendingDrmSession = null;
                this.decoderCounters.ensureUpdated();
                this.eventDispatcher.disabled(this.decoderCounters);
            }
        } catch (Throwable th2) {
            try {
                if (!(this.pendingDrmSession == null || this.pendingDrmSession == this.drmSession)) {
                    this.drmSessionManager.releaseSession(this.pendingDrmSession);
                }
                throw th2;
            } finally {
                this.drmSession = null;
                this.pendingDrmSession = null;
                this.decoderCounters.ensureUpdated();
                this.eventDispatcher.disabled(this.decoderCounters);
            }
        } finally {
        }
    }

    private void maybeInitDecoder() throws ExoPlaybackException {
        if (this.decoder == null) {
            this.drmSession = this.pendingDrmSession;
            ExoMediaCrypto exoMediaCrypto = null;
            if (this.drmSession == null || (exoMediaCrypto = this.drmSession.getMediaCrypto()) != null) {
                try {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    TraceUtil.beginSection("createAudioDecoder");
                    this.decoder = createDecoder(this.inputFormat, exoMediaCrypto);
                    TraceUtil.endSection();
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    this.eventDispatcher.decoderInitialized(this.decoder.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                    this.decoderCounters.decoderInitCount++;
                } catch (AudioDecoderException e) {
                    throw ExoPlaybackException.createForRenderer(e, getIndex());
                }
            } else {
                DrmSession.DrmSessionException error = this.drmSession.getError();
                if (error != null) {
                    throw ExoPlaybackException.createForRenderer(error, getIndex());
                }
            }
        }
    }

    private void releaseDecoder() {
        if (this.decoder != null) {
            this.inputBuffer = null;
            this.outputBuffer = null;
            this.decoder.release();
            this.decoder = null;
            this.decoderCounters.decoderReleaseCount++;
            this.decoderReinitializationState = 0;
            this.decoderReceivedBuffers = false;
        }
    }

    private void onInputFormatChanged(Format format) throws ExoPlaybackException {
        Format format2 = this.inputFormat;
        this.inputFormat = format;
        if (!Util.areEqual(this.inputFormat.drmInitData, format2 == null ? null : format2.drmInitData)) {
            if (this.inputFormat.drmInitData == null) {
                this.pendingDrmSession = null;
            } else if (this.drmSessionManager != null) {
                this.pendingDrmSession = this.drmSessionManager.acquireSession(Looper.myLooper(), this.inputFormat.drmInitData);
                if (this.pendingDrmSession == this.drmSession) {
                    this.drmSessionManager.releaseSession(this.pendingDrmSession);
                }
            } else {
                throw ExoPlaybackException.createForRenderer(new IllegalStateException("Media requires a DrmSessionManager"), getIndex());
            }
        }
        if (this.decoderReceivedBuffers) {
            this.decoderReinitializationState = 1;
        } else {
            releaseDecoder();
            maybeInitDecoder();
            this.audioTrackNeedsConfigure = true;
        }
        this.eventDispatcher.inputFormatChanged(format);
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        switch (i) {
            case 2:
                this.audioTrack.setVolume(((Float) obj).floatValue());
                return;
            case 3:
                this.audioTrack.setAudioAttributes((AudioAttributes) obj);
                return;
            default:
                super.handleMessage(i, obj);
                return;
        }
    }

    private final class AudioTrackListener implements AudioTrack.Listener {
        private AudioTrackListener() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.Listener
        public void onAudioSessionId(int i) {
            SimpleDecoderAudioRenderer.this.eventDispatcher.audioSessionId(i);
            SimpleDecoderAudioRenderer.this.onAudioSessionId(i);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.Listener
        public void onPositionDiscontinuity() {
            SimpleDecoderAudioRenderer.this.onAudioTrackPositionDiscontinuity();
            SimpleDecoderAudioRenderer.this.allowPositionDiscontinuity = true;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.Listener
        public void onUnderrun(int i, long j, long j2) {
            SimpleDecoderAudioRenderer.this.eventDispatcher.audioTrackUnderrun(i, j, j2);
            SimpleDecoderAudioRenderer.this.onAudioTrackUnderrun(i, j, j2);
        }
    }
}
