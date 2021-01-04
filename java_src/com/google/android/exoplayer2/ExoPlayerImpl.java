package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

final class ExoPlayerImpl implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final TrackSelectionArray emptyTrackSelections;
    private final Handler eventHandler;
    private final ExoPlayerImplInternal internalPlayer;
    private boolean isLoading;
    private final CopyOnWriteArraySet<Player.EventListener> listeners;
    private Object manifest;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private int pendingPrepareAcks;
    private int pendingSeekAcks;
    private final Timeline.Period period;
    private boolean playWhenReady;
    private ExoPlayerImplInternal.PlaybackInfo playbackInfo;
    private PlaybackParameters playbackParameters;
    private int playbackState;
    private final Renderer[] renderers;
    private int repeatMode;
    private Timeline timeline;
    private TrackGroupArray trackGroups;
    private TrackSelectionArray trackSelections;
    private final TrackSelector trackSelector;
    private boolean tracksSelected;
    private final Timeline.Window window;

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(Renderer[] rendererArr, TrackSelector trackSelector2, LoadControl loadControl) {
        Log.i(TAG, "Init " + Integer.toHexString(System.identityHashCode(this)) + " [" + ExoPlayerLibraryInfo.VERSION_SLASHY + "] [" + Util.DEVICE_DEBUG_INFO + "]");
        Assertions.checkState(rendererArr.length > 0);
        this.renderers = (Renderer[]) Assertions.checkNotNull(rendererArr);
        this.trackSelector = (TrackSelector) Assertions.checkNotNull(trackSelector2);
        this.playWhenReady = false;
        this.repeatMode = 0;
        this.playbackState = 1;
        this.listeners = new CopyOnWriteArraySet<>();
        this.emptyTrackSelections = new TrackSelectionArray(new TrackSelection[rendererArr.length]);
        this.timeline = Timeline.EMPTY;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.trackGroups = TrackGroupArray.EMPTY;
        this.trackSelections = this.emptyTrackSelections;
        this.playbackParameters = PlaybackParameters.DEFAULT;
        this.eventHandler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()) {
            /* class com.google.android.exoplayer2.ExoPlayerImpl.AnonymousClass1 */

            public void handleMessage(Message message) {
                ExoPlayerImpl.this.handleEvent(message);
            }
        };
        this.playbackInfo = new ExoPlayerImplInternal.PlaybackInfo(0, 0);
        this.internalPlayer = new ExoPlayerImplInternal(rendererArr, trackSelector2, loadControl, this.playWhenReady, this.repeatMode, this.eventHandler, this.playbackInfo, this);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(Player.EventListener eventListener) {
        this.listeners.add(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(Player.EventListener eventListener) {
        this.listeners.remove(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        return this.playbackState;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void prepare(MediaSource mediaSource) {
        prepare(mediaSource, true, true);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        if (z2) {
            if (!this.timeline.isEmpty() || this.manifest != null) {
                this.timeline = Timeline.EMPTY;
                this.manifest = null;
                Iterator<Player.EventListener> it2 = this.listeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onTimelineChanged(this.timeline, this.manifest);
                }
            }
            if (this.tracksSelected) {
                this.tracksSelected = false;
                this.trackGroups = TrackGroupArray.EMPTY;
                this.trackSelections = this.emptyTrackSelections;
                this.trackSelector.onSelectionActivated(null);
                Iterator<Player.EventListener> it3 = this.listeners.iterator();
                while (it3.hasNext()) {
                    it3.next().onTracksChanged(this.trackGroups, this.trackSelections);
                }
            }
        }
        this.pendingPrepareAcks++;
        this.internalPlayer.prepare(mediaSource, z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        if (this.playWhenReady != z) {
            this.playWhenReady = z;
            this.internalPlayer.setPlayWhenReady(z);
            Iterator<Player.EventListener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().onPlayerStateChanged(z, this.playbackState);
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(int i) {
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            Iterator<Player.EventListener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().onRepeatModeChanged(i);
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        return this.repeatMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isLoading() {
        return this.isLoading;
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekToDefaultPosition() {
        seekToDefaultPosition(getCurrentWindowIndex());
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekToDefaultPosition(int i) {
        seekTo(i, C.TIME_UNSET);
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekTo(long j) {
        seekTo(getCurrentWindowIndex(), j);
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekTo(int i, long j) {
        if (i < 0 || (!this.timeline.isEmpty() && i >= this.timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(this.timeline, i, j);
        }
        this.pendingSeekAcks++;
        this.maskingWindowIndex = i;
        if (this.timeline.isEmpty()) {
            this.maskingPeriodIndex = 0;
        } else {
            this.timeline.getWindow(i, this.window);
            long defaultPositionUs = j == C.TIME_UNSET ? this.window.getDefaultPositionUs() : C.msToUs(j);
            int i2 = this.window.firstPeriodIndex;
            long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs() + defaultPositionUs;
            long durationUs = this.timeline.getPeriod(i2, this.period).getDurationUs();
            while (durationUs != C.TIME_UNSET && positionInFirstPeriodUs >= durationUs && i2 < this.window.lastPeriodIndex) {
                positionInFirstPeriodUs -= durationUs;
                i2++;
                durationUs = this.timeline.getPeriod(i2, this.period).getDurationUs();
            }
            this.maskingPeriodIndex = i2;
        }
        if (j == C.TIME_UNSET) {
            this.maskingWindowPositionMs = 0;
            this.internalPlayer.seekTo(this.timeline, i, C.TIME_UNSET);
            return;
        }
        this.maskingWindowPositionMs = j;
        this.internalPlayer.seekTo(this.timeline, i, C.msToUs(j));
        Iterator<Player.EventListener> it2 = this.listeners.iterator();
        while (it2.hasNext()) {
            it2.next().onPositionDiscontinuity();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters2) {
        if (playbackParameters2 == null) {
            playbackParameters2 = PlaybackParameters.DEFAULT;
        }
        this.internalPlayer.setPlaybackParameters(playbackParameters2);
    }

    @Override // com.google.android.exoplayer2.Player
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop() {
        this.internalPlayer.stop();
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        Log.i(TAG, "Release " + Integer.toHexString(System.identityHashCode(this)) + " [" + ExoPlayerLibraryInfo.VERSION_SLASHY + "] [" + Util.DEVICE_DEBUG_INFO + "] [" + ExoPlayerLibraryInfo.registeredModules() + "]");
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void sendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        this.internalPlayer.sendMessages(exoPlayerMessageArr);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void blockingSendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        this.internalPlayer.blockingSendMessages(exoPlayerMessageArr);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        if (this.timeline.isEmpty() || this.pendingSeekAcks > 0) {
            return this.maskingPeriodIndex;
        }
        return this.playbackInfo.periodId.periodIndex;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentWindowIndex() {
        if (this.timeline.isEmpty() || this.pendingSeekAcks > 0) {
            return this.maskingWindowIndex;
        }
        return this.timeline.getPeriod(this.playbackInfo.periodId.periodIndex, this.period).windowIndex;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        if (this.timeline.isEmpty()) {
            return C.TIME_UNSET;
        }
        if (!isPlayingAd()) {
            return this.timeline.getWindow(getCurrentWindowIndex(), this.window).getDurationMs();
        }
        MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        return C.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        if (this.timeline.isEmpty() || this.pendingSeekAcks > 0) {
            return this.maskingWindowPositionMs;
        }
        this.timeline.getPeriod(this.playbackInfo.periodId.periodIndex, this.period);
        return this.period.getPositionInWindowMs() + C.usToMs(this.playbackInfo.positionUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        if (this.timeline.isEmpty() || this.pendingSeekAcks > 0) {
            return this.maskingWindowPositionMs;
        }
        this.timeline.getPeriod(this.playbackInfo.periodId.periodIndex, this.period);
        return this.period.getPositionInWindowMs() + C.usToMs(this.playbackInfo.bufferedPositionUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getBufferedPercentage() {
        if (this.timeline.isEmpty()) {
            return 0;
        }
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        if (bufferedPosition == C.TIME_UNSET || duration == C.TIME_UNSET) {
            return 0;
        }
        if (duration == 0) {
            return 100;
        }
        return Util.constrainValue((int) ((bufferedPosition * 100) / duration), 0, 100);
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isCurrentWindowDynamic() {
        return !this.timeline.isEmpty() && this.timeline.getWindow(getCurrentWindowIndex(), this.window).isDynamic;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isCurrentWindowSeekable() {
        return !this.timeline.isEmpty() && this.timeline.getWindow(getCurrentWindowIndex(), this.window).isSeekable;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        return this.pendingSeekAcks == 0 && this.playbackInfo.periodId.adGroupIndex != -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        if (this.pendingSeekAcks == 0) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        if (this.pendingSeekAcks == 0) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        this.timeline.getPeriod(this.playbackInfo.periodId.periodIndex, this.period);
        return this.period.getPositionInWindowMs() + C.usToMs(this.playbackInfo.contentPositionUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRendererCount() {
        return this.renderers.length;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRendererType(int i) {
        return this.renderers[i].getTrackType();
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackGroupArray getCurrentTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.Player
    public TrackSelectionArray getCurrentTrackSelections() {
        return this.trackSelections;
    }

    @Override // com.google.android.exoplayer2.Player
    public Timeline getCurrentTimeline() {
        return this.timeline;
    }

    @Override // com.google.android.exoplayer2.Player
    public Object getCurrentManifest() {
        return this.manifest;
    }

    /* access modifiers changed from: package-private */
    public void handleEvent(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.pendingPrepareAcks--;
                return;
            case 1:
                this.playbackState = message.arg1;
                Iterator<Player.EventListener> it2 = this.listeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onPlayerStateChanged(this.playWhenReady, this.playbackState);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.isLoading = z;
                Iterator<Player.EventListener> it3 = this.listeners.iterator();
                while (it3.hasNext()) {
                    it3.next().onLoadingChanged(this.isLoading);
                }
                return;
            case 3:
                if (this.pendingPrepareAcks == 0) {
                    TrackSelectorResult trackSelectorResult = (TrackSelectorResult) message.obj;
                    this.tracksSelected = true;
                    this.trackGroups = trackSelectorResult.groups;
                    this.trackSelections = trackSelectorResult.selections;
                    this.trackSelector.onSelectionActivated(trackSelectorResult.info);
                    Iterator<Player.EventListener> it4 = this.listeners.iterator();
                    while (it4.hasNext()) {
                        it4.next().onTracksChanged(this.trackGroups, this.trackSelections);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.pendingSeekAcks - 1;
                this.pendingSeekAcks = i;
                if (i == 0) {
                    this.playbackInfo = (ExoPlayerImplInternal.PlaybackInfo) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<Player.EventListener> it5 = this.listeners.iterator();
                        while (it5.hasNext()) {
                            it5.next().onPositionDiscontinuity();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.pendingSeekAcks == 0) {
                    this.playbackInfo = (ExoPlayerImplInternal.PlaybackInfo) message.obj;
                    Iterator<Player.EventListener> it6 = this.listeners.iterator();
                    while (it6.hasNext()) {
                        it6.next().onPositionDiscontinuity();
                    }
                    return;
                }
                return;
            case 6:
                ExoPlayerImplInternal.SourceInfo sourceInfo = (ExoPlayerImplInternal.SourceInfo) message.obj;
                this.pendingSeekAcks -= sourceInfo.seekAcks;
                if (this.pendingPrepareAcks == 0) {
                    this.timeline = sourceInfo.timeline;
                    this.manifest = sourceInfo.manifest;
                    this.playbackInfo = sourceInfo.playbackInfo;
                    Iterator<Player.EventListener> it7 = this.listeners.iterator();
                    while (it7.hasNext()) {
                        it7.next().onTimelineChanged(this.timeline, this.manifest);
                    }
                    return;
                }
                return;
            case 7:
                PlaybackParameters playbackParameters2 = (PlaybackParameters) message.obj;
                if (!this.playbackParameters.equals(playbackParameters2)) {
                    this.playbackParameters = playbackParameters2;
                    Iterator<Player.EventListener> it8 = this.listeners.iterator();
                    while (it8.hasNext()) {
                        it8.next().onPlaybackParametersChanged(playbackParameters2);
                    }
                    return;
                }
                return;
            case 8:
                ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
                Iterator<Player.EventListener> it9 = this.listeners.iterator();
                while (it9.hasNext()) {
                    it9.next().onPlayerError(exoPlaybackException);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
