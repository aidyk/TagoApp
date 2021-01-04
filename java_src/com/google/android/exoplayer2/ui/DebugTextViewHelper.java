package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import java.util.Locale;

public final class DebugTextViewHelper implements Runnable, Player.EventListener {
    private static final int REFRESH_INTERVAL_MS = 1000;
    private final SimpleExoPlayer player;
    private boolean started;
    private final TextView textView;

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onLoadingChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onRepeatModeChanged(int i) {
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onTimelineChanged(Timeline timeline, Object obj) {
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public DebugTextViewHelper(SimpleExoPlayer simpleExoPlayer, TextView textView2) {
        this.player = simpleExoPlayer;
        this.textView = textView2;
    }

    public void start() {
        if (!this.started) {
            this.started = true;
            this.player.addListener(this);
            updateAndPost();
        }
    }

    public void stop() {
        if (this.started) {
            this.started = false;
            this.player.removeListener(this);
            this.textView.removeCallbacks(this);
        }
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlayerStateChanged(boolean z, int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPositionDiscontinuity() {
        updateAndPost();
    }

    public void run() {
        updateAndPost();
    }

    @SuppressLint({"SetTextI18n"})
    private void updateAndPost() {
        TextView textView2 = this.textView;
        textView2.setText(getPlayerStateString() + getPlayerWindowIndexString() + getVideoString() + getAudioString());
        this.textView.removeCallbacks(this);
        this.textView.postDelayed(this, 1000);
    }

    private String getPlayerStateString() {
        String str = "playWhenReady:" + this.player.getPlayWhenReady() + " playbackState:";
        switch (this.player.getPlaybackState()) {
            case 1:
                return str + "idle";
            case 2:
                return str + "buffering";
            case 3:
                return str + "ready";
            case 4:
                return str + "ended";
            default:
                return str + "unknown";
        }
    }

    private String getPlayerWindowIndexString() {
        return " window:" + this.player.getCurrentWindowIndex();
    }

    private String getVideoString() {
        Format videoFormat = this.player.getVideoFormat();
        if (videoFormat == null) {
            return "";
        }
        return "\n" + videoFormat.sampleMimeType + "(id:" + videoFormat.id + " r:" + videoFormat.width + "x" + videoFormat.height + getPixelAspectRatioString(videoFormat.pixelWidthHeightRatio) + getDecoderCountersBufferCountString(this.player.getVideoDecoderCounters()) + ")";
    }

    private String getAudioString() {
        Format audioFormat = this.player.getAudioFormat();
        if (audioFormat == null) {
            return "";
        }
        return "\n" + audioFormat.sampleMimeType + "(id:" + audioFormat.id + " hz:" + audioFormat.sampleRate + " ch:" + audioFormat.channelCount + getDecoderCountersBufferCountString(this.player.getAudioDecoderCounters()) + ")";
    }

    private static String getDecoderCountersBufferCountString(DecoderCounters decoderCounters) {
        if (decoderCounters == null) {
            return "";
        }
        decoderCounters.ensureUpdated();
        return " rb:" + decoderCounters.renderedOutputBufferCount + " sb:" + decoderCounters.skippedOutputBufferCount + " db:" + decoderCounters.droppedOutputBufferCount + " mcdb:" + decoderCounters.maxConsecutiveDroppedOutputBufferCount;
    }

    private static String getPixelAspectRatioString(float f) {
        if (f == -1.0f || f == 1.0f) {
            return "";
        }
        return " par:" + String.format(Locale.US, "%.02f", Float.valueOf(f));
    }
}
