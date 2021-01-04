package com.google.android.exoplayer2.util;

import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackParameters;

public final class StandaloneMediaClock implements MediaClock {
    private long baseElapsedMs;
    private long baseUs;
    private PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
    private boolean started;

    public void start() {
        if (!this.started) {
            this.baseElapsedMs = SystemClock.elapsedRealtime();
            this.started = true;
        }
    }

    public void stop() {
        if (this.started) {
            setPositionUs(getPositionUs());
            this.started = false;
        }
    }

    public void setPositionUs(long j) {
        this.baseUs = j;
        if (this.started) {
            this.baseElapsedMs = SystemClock.elapsedRealtime();
        }
    }

    public void synchronize(MediaClock mediaClock) {
        setPositionUs(mediaClock.getPositionUs());
        this.playbackParameters = mediaClock.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        long j = this.baseUs;
        if (!this.started) {
            return j;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.baseElapsedMs;
        if (this.playbackParameters.speed == 1.0f) {
            return j + C.msToUs(elapsedRealtime);
        }
        return j + this.playbackParameters.getSpeedAdjustedDurationUs(elapsedRealtime);
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters2) {
        if (this.started) {
            setPositionUs(getPositionUs());
        }
        this.playbackParameters = playbackParameters2;
        return playbackParameters2;
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }
}
