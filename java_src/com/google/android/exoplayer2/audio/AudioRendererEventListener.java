package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.util.Assertions;

public interface AudioRendererEventListener {
    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format);

    void onAudioSessionId(int i);

    void onAudioTrackUnderrun(int i, long j, long j2);

    public static final class EventDispatcher {
        private final Handler handler;
        private final AudioRendererEventListener listener;

        public EventDispatcher(Handler handler2, AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler2) : null;
            this.listener = audioRendererEventListener;
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher.AnonymousClass1 */

                    public void run() {
                        EventDispatcher.this.listener.onAudioEnabled(decoderCounters);
                    }
                });
            }
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher.AnonymousClass2 */

                    public void run() {
                        EventDispatcher.this.listener.onAudioDecoderInitialized(str, j, j2);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher.AnonymousClass3 */

                    public void run() {
                        EventDispatcher.this.listener.onAudioInputFormatChanged(format);
                    }
                });
            }
        }

        public void audioTrackUnderrun(final int i, final long j, final long j2) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher.AnonymousClass4 */

                    public void run() {
                        EventDispatcher.this.listener.onAudioTrackUnderrun(i, j, j2);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher.AnonymousClass5 */

                    public void run() {
                        decoderCounters.ensureUpdated();
                        EventDispatcher.this.listener.onAudioDisabled(decoderCounters);
                    }
                });
            }
        }

        public void audioSessionId(final int i) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher.AnonymousClass6 */

                    public void run() {
                        EventDispatcher.this.listener.onAudioSessionId(i);
                    }
                });
            }
        }
    }
}
