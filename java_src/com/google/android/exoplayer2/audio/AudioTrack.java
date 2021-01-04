package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTimestamp;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.LinkedList;

public final class AudioTrack {
    private static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    private static final int ERROR_BAD_VALUE = -2;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_BUFFER_DURATION_US = 750000;
    private static final long MAX_LATENCY_US = 5000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final long MIN_BUFFER_DURATION_US = 250000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final int MIN_TIMESTAMP_SAMPLE_INTERVAL_US = 500000;
    private static final int MODE_STATIC = 0;
    private static final int MODE_STREAM = 1;
    private static final long PASSTHROUGH_BUFFER_DURATION_US = 250000;
    private static final int PLAYSTATE_PAUSED = 2;
    private static final int PLAYSTATE_PLAYING = 3;
    private static final int PLAYSTATE_STOPPED = 1;
    private static final int SONIC_MIN_BYTES_FOR_SPEEDUP = 1024;
    private static final int START_IN_SYNC = 1;
    private static final int START_NEED_SYNC = 2;
    private static final int START_NOT_SET = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final String TAG = "AudioTrack";
    @SuppressLint({"InlinedApi"})
    private static final int WRITE_NON_BLOCKING = 1;
    public static boolean enablePreV21AudioSessionWorkaround = false;
    public static boolean failOnSpuriousAudioTimestamp = false;
    private AudioAttributes audioAttributes;
    private final AudioCapabilities audioCapabilities;
    private AudioProcessor[] audioProcessors;
    private int audioSessionId;
    private boolean audioTimestampSet;
    private android.media.AudioTrack audioTrack;
    private final AudioTrackUtil audioTrackUtil;
    private ByteBuffer avSyncHeader;
    private final AudioProcessor[] availableAudioProcessors;
    private int bufferSize;
    private long bufferSizeUs;
    private int bytesUntilNextAvSync;
    private int channelConfig;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private int drainingAudioProcessorIndex;
    private PlaybackParameters drainingPlaybackParameters;
    private int encoding;
    private int framesPerEncodedSample;
    private Method getLatencyMethod;
    private boolean handledEndOfStream;
    private boolean hasData;
    private ByteBuffer inputBuffer;
    private android.media.AudioTrack keepSessionIdAudioTrack;
    private long lastFeedElapsedRealtimeMs;
    private long lastPlayheadSampleTimeUs;
    private long lastTimestampSampleTimeUs;
    private long latencyUs;
    private final Listener listener;
    private int nextPlayheadOffsetIndex;
    private ByteBuffer outputBuffer;
    private ByteBuffer[] outputBuffers;
    private int outputEncoding;
    private int outputPcmFrameSize;
    private boolean passthrough;
    private int pcmFrameSize;
    private PlaybackParameters playbackParameters;
    private final LinkedList<PlaybackParametersCheckpoint> playbackParametersCheckpoints;
    private long playbackParametersOffsetUs;
    private long playbackParametersPositionUs;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private boolean playing;
    private byte[] preV21OutputBuffer;
    private int preV21OutputBufferOffset;
    private final ConditionVariable releasingConditionVariable = new ConditionVariable(true);
    private long resumeSystemTimeUs;
    private int sampleRate;
    private long smoothedPlayheadOffsetUs;
    private final SonicAudioProcessor sonicAudioProcessor;
    private int startMediaTimeState;
    private long startMediaTimeUs;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private boolean tunneling;
    private float volume;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    public interface Listener {
        void onAudioSessionId(int i);

        void onPositionDiscontinuity();

        void onUnderrun(int i, long j, long j2);
    }

    public static final class ConfigurationException extends Exception {
        public ConfigurationException(Throwable th) {
            super(th);
        }

        public ConfigurationException(String str) {
            super(str);
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i, int i2, int i3, int i4) {
            super("AudioTrack init failed: " + i + ", Config(" + i2 + ", " + i3 + ", " + i4 + ")");
            this.audioTrackState = i;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i) {
            super("AudioTrack write failed: " + i);
            this.errorCode = i;
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public AudioTrack(AudioCapabilities audioCapabilities2, AudioProcessor[] audioProcessorArr, Listener listener2) {
        this.audioCapabilities = audioCapabilities2;
        this.listener = listener2;
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = android.media.AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (Util.SDK_INT >= 19) {
            this.audioTrackUtil = new AudioTrackUtilV19();
        } else {
            this.audioTrackUtil = new AudioTrackUtil();
        }
        this.channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.sonicAudioProcessor = new SonicAudioProcessor();
        this.availableAudioProcessors = new AudioProcessor[(audioProcessorArr.length + 3)];
        this.availableAudioProcessors[0] = new ResamplingAudioProcessor();
        this.availableAudioProcessors[1] = this.channelMappingAudioProcessor;
        System.arraycopy(audioProcessorArr, 0, this.availableAudioProcessors, 2, audioProcessorArr.length);
        this.availableAudioProcessors[audioProcessorArr.length + 2] = this.sonicAudioProcessor;
        this.playheadOffsets = new long[10];
        this.volume = 1.0f;
        this.startMediaTimeState = 0;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioSessionId = 0;
        this.playbackParameters = PlaybackParameters.DEFAULT;
        this.drainingAudioProcessorIndex = -1;
        this.audioProcessors = new AudioProcessor[0];
        this.outputBuffers = new ByteBuffer[0];
        this.playbackParametersCheckpoints = new LinkedList<>();
    }

    public boolean isPassthroughSupported(String str) {
        return this.audioCapabilities != null && this.audioCapabilities.supportsEncoding(getEncodingForMimeType(str));
    }

    public long getCurrentPositionUs(boolean z) {
        long j;
        if (!hasCurrentPositionUs()) {
            return Long.MIN_VALUE;
        }
        if (this.audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long nanoTime = System.nanoTime() / 1000;
        if (this.audioTimestampSet) {
            j = framesToDurationUs(this.audioTrackUtil.getTimestampFramePosition() + durationUsToFrames(nanoTime - (this.audioTrackUtil.getTimestampNanoTime() / 1000)));
        } else {
            if (this.playheadOffsetCount == 0) {
                j = this.audioTrackUtil.getPositionUs();
            } else {
                j = nanoTime + this.smoothedPlayheadOffsetUs;
            }
            if (!z) {
                j -= this.latencyUs;
            }
        }
        return this.startMediaTimeUs + applySpeedup(j);
    }

    public void configure(String str, int i, int i2, int i3, int i4) throws ConfigurationException {
        configure(str, i, i2, i3, i4, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:66:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0145  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x014b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void configure(java.lang.String r9, int r10, int r11, int r12, int r13, int[] r14) throws com.google.android.exoplayer2.audio.AudioTrack.ConfigurationException {
        /*
        // Method dump skipped, instructions count: 370
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioTrack.configure(java.lang.String, int, int, int, int, int[]):void");
    }

    private void resetAudioProcessors() {
        ArrayList arrayList = new ArrayList();
        AudioProcessor[] audioProcessorArr = this.availableAudioProcessors;
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.audioProcessors = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.outputBuffers = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            AudioProcessor audioProcessor2 = this.audioProcessors[i];
            audioProcessor2.flush();
            this.outputBuffers[i] = audioProcessor2.getOutput();
        }
    }

    private void initialize() throws InitializationException {
        this.releasingConditionVariable.block();
        this.audioTrack = initializeAudioTrack();
        int audioSessionId2 = this.audioTrack.getAudioSessionId();
        if (enablePreV21AudioSessionWorkaround && Util.SDK_INT < 21) {
            if (!(this.keepSessionIdAudioTrack == null || audioSessionId2 == this.keepSessionIdAudioTrack.getAudioSessionId())) {
                releaseKeepSessionIdAudioTrack();
            }
            if (this.keepSessionIdAudioTrack == null) {
                this.keepSessionIdAudioTrack = initializeKeepSessionIdAudioTrack(audioSessionId2);
            }
        }
        if (this.audioSessionId != audioSessionId2) {
            this.audioSessionId = audioSessionId2;
            this.listener.onAudioSessionId(audioSessionId2);
        }
        this.audioTrackUtil.reconfigure(this.audioTrack, needsPassthroughWorkarounds());
        setVolumeInternal();
        this.hasData = false;
    }

    public void play() {
        this.playing = true;
        if (isInitialized()) {
            this.resumeSystemTimeUs = System.nanoTime() / 1000;
            this.audioTrack.play();
        }
    }

    public void handleDiscontinuity() {
        if (this.startMediaTimeState == 1) {
            this.startMediaTimeState = 2;
        }
    }

    public boolean handleBuffer(ByteBuffer byteBuffer, long j) throws InitializationException, WriteException {
        int i;
        Assertions.checkArgument(this.inputBuffer == null || byteBuffer == this.inputBuffer);
        if (!isInitialized()) {
            initialize();
            if (this.playing) {
                play();
            }
        }
        if (needsPassthroughWorkarounds()) {
            if (this.audioTrack.getPlayState() == 2) {
                this.hasData = false;
                return false;
            } else if (this.audioTrack.getPlayState() == 1 && this.audioTrackUtil.getPlaybackHeadPosition() != 0) {
                return false;
            }
        }
        boolean z = this.hasData;
        this.hasData = hasPendingData();
        if (z && !this.hasData && this.audioTrack.getPlayState() != 1) {
            this.listener.onUnderrun(this.bufferSize, C.usToMs(this.bufferSizeUs), SystemClock.elapsedRealtime() - this.lastFeedElapsedRealtimeMs);
        }
        if (this.inputBuffer == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.passthrough && this.framesPerEncodedSample == 0) {
                this.framesPerEncodedSample = getFramesPerEncodedSample(this.outputEncoding, byteBuffer);
            }
            if (this.drainingPlaybackParameters != null) {
                if (!drainAudioProcessorsToEndOfStream()) {
                    return false;
                }
                this.playbackParametersCheckpoints.add(new PlaybackParametersCheckpoint(this.drainingPlaybackParameters, Math.max(0L, j), framesToDurationUs(getWrittenFrames())));
                this.drainingPlaybackParameters = null;
                resetAudioProcessors();
            }
            if (this.startMediaTimeState == 0) {
                this.startMediaTimeUs = Math.max(0L, j);
                this.startMediaTimeState = 1;
            } else {
                long framesToDurationUs = this.startMediaTimeUs + framesToDurationUs(getSubmittedFrames());
                if (this.startMediaTimeState != 1 || Math.abs(framesToDurationUs - j) <= 200000) {
                    i = 2;
                } else {
                    Log.e(TAG, "Discontinuity detected [expected " + framesToDurationUs + ", got " + j + "]");
                    i = 2;
                    this.startMediaTimeState = 2;
                }
                if (this.startMediaTimeState == i) {
                    this.startMediaTimeUs += j - framesToDurationUs;
                    this.startMediaTimeState = 1;
                    this.listener.onPositionDiscontinuity();
                }
            }
            if (this.passthrough) {
                this.submittedEncodedFrames += (long) this.framesPerEncodedSample;
            } else {
                this.submittedPcmBytes += (long) byteBuffer.remaining();
            }
            this.inputBuffer = byteBuffer;
        }
        if (this.passthrough) {
            writeBuffer(this.inputBuffer, j);
        } else {
            processBuffers(j);
        }
        if (this.inputBuffer.hasRemaining()) {
            return false;
        }
        this.inputBuffer = null;
        return true;
    }

    private void processBuffers(long j) throws WriteException {
        int length = this.audioProcessors.length;
        int i = length;
        while (i >= 0) {
            ByteBuffer byteBuffer = i > 0 ? this.outputBuffers[i - 1] : this.inputBuffer != null ? this.inputBuffer : AudioProcessor.EMPTY_BUFFER;
            if (i == length) {
                writeBuffer(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.audioProcessors[i];
                audioProcessor.queueInput(byteBuffer);
                ByteBuffer output = audioProcessor.getOutput();
                this.outputBuffers[i] = output;
                if (output.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    private boolean writeBuffer(ByteBuffer byteBuffer, long j) throws WriteException {
        int i;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        if (this.outputBuffer != null) {
            Assertions.checkArgument(this.outputBuffer == byteBuffer);
        } else {
            this.outputBuffer = byteBuffer;
            if (Util.SDK_INT < 21) {
                int remaining = byteBuffer.remaining();
                if (this.preV21OutputBuffer == null || this.preV21OutputBuffer.length < remaining) {
                    this.preV21OutputBuffer = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.preV21OutputBuffer, 0, remaining);
                byteBuffer.position(position);
                this.preV21OutputBufferOffset = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (Util.SDK_INT < 21) {
            int playbackHeadPosition = this.bufferSize - ((int) (this.writtenPcmBytes - (this.audioTrackUtil.getPlaybackHeadPosition() * ((long) this.outputPcmFrameSize))));
            if (playbackHeadPosition > 0) {
                i = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, Math.min(remaining2, playbackHeadPosition));
                if (i > 0) {
                    this.preV21OutputBufferOffset += i;
                    byteBuffer.position(byteBuffer.position() + i);
                }
            } else {
                i = 0;
            }
        } else if (this.tunneling) {
            Assertions.checkState(j != C.TIME_UNSET);
            i = writeNonBlockingWithAvSyncV21(this.audioTrack, byteBuffer, remaining2, j);
        } else {
            i = writeNonBlockingV21(this.audioTrack, byteBuffer, remaining2);
        }
        this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
        if (i >= 0) {
            if (!this.passthrough) {
                this.writtenPcmBytes += (long) i;
            }
            if (i != remaining2) {
                return false;
            }
            if (this.passthrough) {
                this.writtenEncodedFrames += (long) this.framesPerEncodedSample;
            }
            this.outputBuffer = null;
            return true;
        }
        throw new WriteException(i);
    }

    public void playToEndOfStream() throws WriteException {
        if (!this.handledEndOfStream && isInitialized() && drainAudioProcessorsToEndOfStream()) {
            this.audioTrackUtil.handleEndOfStream(getWrittenFrames());
            this.bytesUntilNextAvSync = 0;
            this.handledEndOfStream = true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean drainAudioProcessorsToEndOfStream() throws com.google.android.exoplayer2.audio.AudioTrack.WriteException {
        /*
            r8 = this;
            int r0 = r8.drainingAudioProcessorIndex
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L_0x0014
            boolean r0 = r8.passthrough
            if (r0 == 0) goto L_0x000f
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r8.audioProcessors
            int r0 = r0.length
            goto L_0x0010
        L_0x000f:
            r0 = 0
        L_0x0010:
            r8.drainingAudioProcessorIndex = r0
        L_0x0012:
            r0 = 1
            goto L_0x0015
        L_0x0014:
            r0 = 0
        L_0x0015:
            int r4 = r8.drainingAudioProcessorIndex
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r8.audioProcessors
            int r5 = r5.length
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r5) goto L_0x003c
            com.google.android.exoplayer2.audio.AudioProcessor[] r4 = r8.audioProcessors
            int r5 = r8.drainingAudioProcessorIndex
            r4 = r4[r5]
            if (r0 == 0) goto L_0x002c
            r4.queueEndOfStream()
        L_0x002c:
            r8.processBuffers(r6)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L_0x0036
            return r3
        L_0x0036:
            int r0 = r8.drainingAudioProcessorIndex
            int r0 = r0 + r2
            r8.drainingAudioProcessorIndex = r0
            goto L_0x0012
        L_0x003c:
            java.nio.ByteBuffer r0 = r8.outputBuffer
            if (r0 == 0) goto L_0x004a
            java.nio.ByteBuffer r0 = r8.outputBuffer
            r8.writeBuffer(r0, r6)
            java.nio.ByteBuffer r0 = r8.outputBuffer
            if (r0 == 0) goto L_0x004a
            return r3
        L_0x004a:
            r8.drainingAudioProcessorIndex = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioTrack.drainAudioProcessorsToEndOfStream():boolean");
    }

    public boolean isEnded() {
        return !isInitialized() || (this.handledEndOfStream && !hasPendingData());
    }

    public boolean hasPendingData() {
        return isInitialized() && (getWrittenFrames() > this.audioTrackUtil.getPlaybackHeadPosition() || overrideHasPendingData());
    }

    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters2) {
        PlaybackParameters playbackParameters3;
        if (this.passthrough) {
            this.playbackParameters = PlaybackParameters.DEFAULT;
            return this.playbackParameters;
        }
        PlaybackParameters playbackParameters4 = new PlaybackParameters(this.sonicAudioProcessor.setSpeed(playbackParameters2.speed), this.sonicAudioProcessor.setPitch(playbackParameters2.pitch));
        if (this.drainingPlaybackParameters != null) {
            playbackParameters3 = this.drainingPlaybackParameters;
        } else {
            playbackParameters3 = !this.playbackParametersCheckpoints.isEmpty() ? this.playbackParametersCheckpoints.getLast().playbackParameters : this.playbackParameters;
        }
        if (!playbackParameters4.equals(playbackParameters3)) {
            if (isInitialized()) {
                this.drainingPlaybackParameters = playbackParameters4;
            } else {
                this.playbackParameters = playbackParameters4;
            }
        }
        return this.playbackParameters;
    }

    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    public void setAudioAttributes(AudioAttributes audioAttributes2) {
        if (!this.audioAttributes.equals(audioAttributes2)) {
            this.audioAttributes = audioAttributes2;
            if (!this.tunneling) {
                reset();
                this.audioSessionId = 0;
            }
        }
    }

    public void setAudioSessionId(int i) {
        if (this.audioSessionId != i) {
            this.audioSessionId = i;
            reset();
        }
    }

    public void enableTunnelingV21(int i) {
        Assertions.checkState(Util.SDK_INT >= 21);
        if (!this.tunneling || this.audioSessionId != i) {
            this.tunneling = true;
            this.audioSessionId = i;
            reset();
        }
    }

    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            this.audioSessionId = 0;
            reset();
        }
    }

    public void setVolume(float f) {
        if (this.volume != f) {
            this.volume = f;
            setVolumeInternal();
        }
    }

    private void setVolumeInternal() {
        if (isInitialized()) {
            if (Util.SDK_INT >= 21) {
                setVolumeInternalV21(this.audioTrack, this.volume);
            } else {
                setVolumeInternalV3(this.audioTrack, this.volume);
            }
        }
    }

    public void pause() {
        this.playing = false;
        if (isInitialized()) {
            resetSyncParams();
            this.audioTrackUtil.pause();
        }
    }

    public void reset() {
        if (isInitialized()) {
            this.submittedPcmBytes = 0;
            this.submittedEncodedFrames = 0;
            this.writtenPcmBytes = 0;
            this.writtenEncodedFrames = 0;
            this.framesPerEncodedSample = 0;
            if (this.drainingPlaybackParameters != null) {
                this.playbackParameters = this.drainingPlaybackParameters;
                this.drainingPlaybackParameters = null;
            } else if (!this.playbackParametersCheckpoints.isEmpty()) {
                this.playbackParameters = this.playbackParametersCheckpoints.getLast().playbackParameters;
            }
            this.playbackParametersCheckpoints.clear();
            this.playbackParametersOffsetUs = 0;
            this.playbackParametersPositionUs = 0;
            this.inputBuffer = null;
            this.outputBuffer = null;
            for (int i = 0; i < this.audioProcessors.length; i++) {
                AudioProcessor audioProcessor = this.audioProcessors[i];
                audioProcessor.flush();
                this.outputBuffers[i] = audioProcessor.getOutput();
            }
            this.handledEndOfStream = false;
            this.drainingAudioProcessorIndex = -1;
            this.avSyncHeader = null;
            this.bytesUntilNextAvSync = 0;
            this.startMediaTimeState = 0;
            this.latencyUs = 0;
            resetSyncParams();
            if (this.audioTrack.getPlayState() == 3) {
                this.audioTrack.pause();
            }
            final android.media.AudioTrack audioTrack2 = this.audioTrack;
            this.audioTrack = null;
            this.audioTrackUtil.reconfigure(null, false);
            this.releasingConditionVariable.close();
            new Thread() {
                /* class com.google.android.exoplayer2.audio.AudioTrack.AnonymousClass1 */

                public void run() {
                    try {
                        audioTrack2.flush();
                        audioTrack2.release();
                    } finally {
                        AudioTrack.this.releasingConditionVariable.open();
                    }
                }
            }.start();
        }
    }

    public void release() {
        reset();
        releaseKeepSessionIdAudioTrack();
        for (AudioProcessor audioProcessor : this.availableAudioProcessors) {
            audioProcessor.reset();
        }
        this.audioSessionId = 0;
        this.playing = false;
    }

    private void releaseKeepSessionIdAudioTrack() {
        if (this.keepSessionIdAudioTrack != null) {
            final android.media.AudioTrack audioTrack2 = this.keepSessionIdAudioTrack;
            this.keepSessionIdAudioTrack = null;
            new Thread() {
                /* class com.google.android.exoplayer2.audio.AudioTrack.AnonymousClass2 */

                public void run() {
                    audioTrack2.release();
                }
            }.start();
        }
    }

    private boolean hasCurrentPositionUs() {
        return isInitialized() && this.startMediaTimeState != 0;
    }

    private long applySpeedup(long j) {
        while (!this.playbackParametersCheckpoints.isEmpty() && j >= this.playbackParametersCheckpoints.getFirst().positionUs) {
            PlaybackParametersCheckpoint remove = this.playbackParametersCheckpoints.remove();
            this.playbackParameters = remove.playbackParameters;
            this.playbackParametersPositionUs = remove.positionUs;
            this.playbackParametersOffsetUs = remove.mediaTimeUs - this.startMediaTimeUs;
        }
        if (this.playbackParameters.speed == 1.0f) {
            return (j + this.playbackParametersOffsetUs) - this.playbackParametersPositionUs;
        }
        if (this.playbackParametersCheckpoints.isEmpty() && this.sonicAudioProcessor.getOutputByteCount() >= 1024) {
            return this.playbackParametersOffsetUs + Util.scaleLargeTimestamp(j - this.playbackParametersPositionUs, this.sonicAudioProcessor.getInputByteCount(), this.sonicAudioProcessor.getOutputByteCount());
        }
        long j2 = this.playbackParametersOffsetUs;
        double d = (double) this.playbackParameters.speed;
        double d2 = (double) (j - this.playbackParametersPositionUs);
        Double.isNaN(d);
        Double.isNaN(d2);
        return j2 + ((long) (d * d2));
    }

    private void maybeSampleSyncParams() {
        long positionUs = this.audioTrackUtil.getPositionUs();
        if (positionUs != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
                this.playheadOffsets[this.nextPlayheadOffsetIndex] = positionUs - nanoTime;
                this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
                if (this.playheadOffsetCount < 10) {
                    this.playheadOffsetCount++;
                }
                this.lastPlayheadSampleTimeUs = nanoTime;
                this.smoothedPlayheadOffsetUs = 0;
                for (int i = 0; i < this.playheadOffsetCount; i++) {
                    this.smoothedPlayheadOffsetUs += this.playheadOffsets[i] / ((long) this.playheadOffsetCount);
                }
            }
            if (!needsPassthroughWorkarounds() && nanoTime - this.lastTimestampSampleTimeUs >= 500000) {
                this.audioTimestampSet = this.audioTrackUtil.updateTimestamp();
                if (this.audioTimestampSet) {
                    long timestampNanoTime = this.audioTrackUtil.getTimestampNanoTime() / 1000;
                    long timestampFramePosition = this.audioTrackUtil.getTimestampFramePosition();
                    if (timestampNanoTime < this.resumeSystemTimeUs) {
                        this.audioTimestampSet = false;
                    } else if (Math.abs(timestampNanoTime - nanoTime) > 5000000) {
                        String str = "Spurious audio timestamp (system clock mismatch): " + timestampFramePosition + ", " + timestampNanoTime + ", " + nanoTime + ", " + positionUs + ", " + getSubmittedFrames() + ", " + getWrittenFrames();
                        if (!failOnSpuriousAudioTimestamp) {
                            Log.w(TAG, str);
                            this.audioTimestampSet = false;
                        } else {
                            throw new InvalidAudioTrackTimestampException(str);
                        }
                    } else if (Math.abs(framesToDurationUs(timestampFramePosition) - positionUs) > 5000000) {
                        String str2 = "Spurious audio timestamp (frame position mismatch): " + timestampFramePosition + ", " + timestampNanoTime + ", " + nanoTime + ", " + positionUs + ", " + getSubmittedFrames() + ", " + getWrittenFrames();
                        if (!failOnSpuriousAudioTimestamp) {
                            Log.w(TAG, str2);
                            this.audioTimestampSet = false;
                        } else {
                            throw new InvalidAudioTrackTimestampException(str2);
                        }
                    }
                }
                if (this.getLatencyMethod != null && !this.passthrough) {
                    try {
                        this.latencyUs = (((long) ((Integer) this.getLatencyMethod.invoke(this.audioTrack, null)).intValue()) * 1000) - this.bufferSizeUs;
                        this.latencyUs = Math.max(this.latencyUs, 0L);
                        if (this.latencyUs > 5000000) {
                            Log.w(TAG, "Ignoring impossibly large audio latency: " + this.latencyUs);
                            this.latencyUs = 0;
                        }
                    } catch (Exception unused) {
                        this.getLatencyMethod = null;
                    }
                }
                this.lastTimestampSampleTimeUs = nanoTime;
            }
        }
    }

    private boolean isInitialized() {
        return this.audioTrack != null;
    }

    private long framesToDurationUs(long j) {
        return (j * C.MICROS_PER_SECOND) / ((long) this.sampleRate);
    }

    private long durationUsToFrames(long j) {
        return (j * ((long) this.sampleRate)) / C.MICROS_PER_SECOND;
    }

    private long getSubmittedFrames() {
        return this.passthrough ? this.submittedEncodedFrames : this.submittedPcmBytes / ((long) this.pcmFrameSize);
    }

    private long getWrittenFrames() {
        return this.passthrough ? this.writtenEncodedFrames : this.writtenPcmBytes / ((long) this.outputPcmFrameSize);
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0;
        this.audioTimestampSet = false;
        this.lastTimestampSampleTimeUs = 0;
    }

    private boolean needsPassthroughWorkarounds() {
        return Util.SDK_INT < 23 && (this.outputEncoding == 5 || this.outputEncoding == 6);
    }

    private boolean overrideHasPendingData() {
        return needsPassthroughWorkarounds() && this.audioTrack.getPlayState() == 2 && this.audioTrack.getPlaybackHeadPosition() == 0;
    }

    private android.media.AudioTrack initializeAudioTrack() throws InitializationException {
        android.media.AudioTrack audioTrack2;
        if (Util.SDK_INT >= 21) {
            audioTrack2 = createAudioTrackV21();
        } else {
            int streamTypeForAudioUsage = Util.getStreamTypeForAudioUsage(this.audioAttributes.usage);
            if (this.audioSessionId == 0) {
                audioTrack2 = new android.media.AudioTrack(streamTypeForAudioUsage, this.sampleRate, this.channelConfig, this.outputEncoding, this.bufferSize, 1);
            } else {
                audioTrack2 = new android.media.AudioTrack(streamTypeForAudioUsage, this.sampleRate, this.channelConfig, this.outputEncoding, this.bufferSize, 1, this.audioSessionId);
            }
        }
        int state = audioTrack2.getState();
        if (state == 1) {
            return audioTrack2;
        }
        try {
            audioTrack2.release();
        } catch (Exception unused) {
        }
        throw new InitializationException(state, this.sampleRate, this.channelConfig, this.bufferSize);
    }

    @TargetApi(21)
    private android.media.AudioTrack createAudioTrackV21() {
        AudioAttributes audioAttributesV21;
        if (this.tunneling) {
            audioAttributesV21 = new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        } else {
            audioAttributesV21 = this.audioAttributes.getAudioAttributesV21();
        }
        return new android.media.AudioTrack(audioAttributesV21, new AudioFormat.Builder().setChannelMask(this.channelConfig).setEncoding(this.outputEncoding).setSampleRate(this.sampleRate).build(), this.bufferSize, 1, this.audioSessionId != 0 ? this.audioSessionId : 0);
    }

    private android.media.AudioTrack initializeKeepSessionIdAudioTrack(int i) {
        return new android.media.AudioTrack(3, 4000, 4, 2, 2, 0, i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0046 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0047 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x004a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x004c A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x004e A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int getEncodingForMimeType(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = -1095064472(0xffffffffbebaa468, float:-0.36453557)
            r2 = 0
            if (r0 == r1) goto L_0x0038
            r1 = 187078296(0xb269698, float:3.208373E-32)
            if (r0 == r1) goto L_0x002e
            r1 = 1504578661(0x59ae0c65, float:6.1237842E15)
            if (r0 == r1) goto L_0x0024
            r1 = 1505942594(0x59c2dc42, float:6.8560402E15)
            if (r0 == r1) goto L_0x001a
            goto L_0x0042
        L_0x001a:
            java.lang.String r0 = "audio/vnd.dts.hd"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L_0x0042
            r3 = 3
            goto L_0x0043
        L_0x0024:
            java.lang.String r0 = "audio/eac3"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L_0x0042
            r3 = 1
            goto L_0x0043
        L_0x002e:
            java.lang.String r0 = "audio/ac3"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L_0x0042
            r3 = 0
            goto L_0x0043
        L_0x0038:
            java.lang.String r0 = "audio/vnd.dts"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L_0x0042
            r3 = 2
            goto L_0x0043
        L_0x0042:
            r3 = -1
        L_0x0043:
            switch(r3) {
                case 0: goto L_0x004e;
                case 1: goto L_0x004c;
                case 2: goto L_0x004a;
                case 3: goto L_0x0047;
                default: goto L_0x0046;
            }
        L_0x0046:
            return r2
        L_0x0047:
            r3 = 8
            return r3
        L_0x004a:
            r3 = 7
            return r3
        L_0x004c:
            r3 = 6
            return r3
        L_0x004e:
            r3 = 5
            return r3
            switch-data {0->0x004e, 1->0x004c, 2->0x004a, 3->0x0047, }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioTrack.getEncodingForMimeType(java.lang.String):int");
    }

    private static int getFramesPerEncodedSample(int i, ByteBuffer byteBuffer) {
        if (i == 7 || i == 8) {
            return DtsUtil.parseDtsAudioSampleCount(byteBuffer);
        }
        if (i == 5) {
            return Ac3Util.getAc3SyncframeAudioSampleCount();
        }
        if (i == 6) {
            return Ac3Util.parseEAc3SyncframeAudioSampleCount(byteBuffer);
        }
        throw new IllegalStateException("Unexpected audio encoding: " + i);
    }

    @TargetApi(21)
    private static int writeNonBlockingV21(android.media.AudioTrack audioTrack2, ByteBuffer byteBuffer, int i) {
        return audioTrack2.write(byteBuffer, i, 1);
    }

    @TargetApi(21)
    private int writeNonBlockingWithAvSyncV21(android.media.AudioTrack audioTrack2, ByteBuffer byteBuffer, int i, long j) {
        if (this.avSyncHeader == null) {
            this.avSyncHeader = ByteBuffer.allocate(16);
            this.avSyncHeader.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, i);
            this.avSyncHeader.putLong(8, j * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = i;
        }
        int remaining = this.avSyncHeader.remaining();
        if (remaining > 0) {
            int write = audioTrack2.write(this.avSyncHeader, remaining, 1);
            if (write < 0) {
                this.bytesUntilNextAvSync = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int writeNonBlockingV21 = writeNonBlockingV21(audioTrack2, byteBuffer, i);
        if (writeNonBlockingV21 < 0) {
            this.bytesUntilNextAvSync = 0;
            return writeNonBlockingV21;
        }
        this.bytesUntilNextAvSync -= writeNonBlockingV21;
        return writeNonBlockingV21;
    }

    @TargetApi(21)
    private static void setVolumeInternalV21(android.media.AudioTrack audioTrack2, float f) {
        audioTrack2.setVolume(f);
    }

    private static void setVolumeInternalV3(android.media.AudioTrack audioTrack2, float f) {
        audioTrack2.setStereoVolume(f, f);
    }

    /* access modifiers changed from: private */
    public static class AudioTrackUtil {
        protected android.media.AudioTrack audioTrack;
        private long endPlaybackHeadPosition;
        private long lastRawPlaybackHeadPosition;
        private boolean needsPassthroughWorkaround;
        private long passthroughWorkaroundPauseOffset;
        private long rawPlaybackHeadWrapCount;
        private int sampleRate;
        private long stopPlaybackHeadPosition;
        private long stopTimestampUs;

        public boolean updateTimestamp() {
            return false;
        }

        private AudioTrackUtil() {
        }

        public void reconfigure(android.media.AudioTrack audioTrack2, boolean z) {
            this.audioTrack = audioTrack2;
            this.needsPassthroughWorkaround = z;
            this.stopTimestampUs = C.TIME_UNSET;
            this.lastRawPlaybackHeadPosition = 0;
            this.rawPlaybackHeadWrapCount = 0;
            this.passthroughWorkaroundPauseOffset = 0;
            if (audioTrack2 != null) {
                this.sampleRate = audioTrack2.getSampleRate();
            }
        }

        public void handleEndOfStream(long j) {
            this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
            this.stopTimestampUs = SystemClock.elapsedRealtime() * 1000;
            this.endPlaybackHeadPosition = j;
            this.audioTrack.stop();
        }

        public void pause() {
            if (this.stopTimestampUs == C.TIME_UNSET) {
                this.audioTrack.pause();
            }
        }

        public long getPlaybackHeadPosition() {
            if (this.stopTimestampUs != C.TIME_UNSET) {
                return Math.min(this.endPlaybackHeadPosition, this.stopPlaybackHeadPosition + ((((SystemClock.elapsedRealtime() * 1000) - this.stopTimestampUs) * ((long) this.sampleRate)) / C.MICROS_PER_SECOND));
            }
            int playState = this.audioTrack.getPlayState();
            if (playState == 1) {
                return 0;
            }
            long playbackHeadPosition = 4294967295L & ((long) this.audioTrack.getPlaybackHeadPosition());
            if (this.needsPassthroughWorkaround) {
                if (playState == 2 && playbackHeadPosition == 0) {
                    this.passthroughWorkaroundPauseOffset = this.lastRawPlaybackHeadPosition;
                }
                playbackHeadPosition += this.passthroughWorkaroundPauseOffset;
            }
            if (this.lastRawPlaybackHeadPosition > playbackHeadPosition) {
                this.rawPlaybackHeadWrapCount++;
            }
            this.lastRawPlaybackHeadPosition = playbackHeadPosition;
            return playbackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
        }

        public long getPositionUs() {
            return (getPlaybackHeadPosition() * C.MICROS_PER_SECOND) / ((long) this.sampleRate);
        }

        public long getTimestampNanoTime() {
            throw new UnsupportedOperationException();
        }

        public long getTimestampFramePosition() {
            throw new UnsupportedOperationException();
        }
    }

    @TargetApi(19)
    private static class AudioTrackUtilV19 extends AudioTrackUtil {
        private final AudioTimestamp audioTimestamp = new AudioTimestamp();
        private long lastRawTimestampFramePosition;
        private long lastTimestampFramePosition;
        private long rawTimestampFramePositionWrapCount;

        public AudioTrackUtilV19() {
            super();
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.AudioTrackUtil
        public void reconfigure(android.media.AudioTrack audioTrack, boolean z) {
            super.reconfigure(audioTrack, z);
            this.rawTimestampFramePositionWrapCount = 0;
            this.lastRawTimestampFramePosition = 0;
            this.lastTimestampFramePosition = 0;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.AudioTrackUtil
        public boolean updateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j = this.audioTimestamp.framePosition;
                if (this.lastRawTimestampFramePosition > j) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastRawTimestampFramePosition = j;
                this.lastTimestampFramePosition = j + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.AudioTrackUtil
        public long getTimestampNanoTime() {
            return this.audioTimestamp.nanoTime;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.AudioTrackUtil
        public long getTimestampFramePosition() {
            return this.lastTimestampFramePosition;
        }
    }

    /* access modifiers changed from: private */
    public static final class PlaybackParametersCheckpoint {
        private final long mediaTimeUs;
        private final PlaybackParameters playbackParameters;
        private final long positionUs;

        private PlaybackParametersCheckpoint(PlaybackParameters playbackParameters2, long j, long j2) {
            this.playbackParameters = playbackParameters2;
            this.mediaTimeUs = j;
            this.positionUs = j2;
        }
    }
}
