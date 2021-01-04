package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.ui.TimeBar;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Locale;
import kotlinx.coroutines.scheduling.WorkQueueKt;

public class PlaybackControlView extends FrameLayout {
    public static final ControlDispatcher DEFAULT_CONTROL_DISPATCHER = new ControlDispatcher() {
        /* class com.google.android.exoplayer2.ui.PlaybackControlView.AnonymousClass1 */

        @Override // com.google.android.exoplayer2.ui.PlaybackControlView.ControlDispatcher
        public boolean dispatchSetPlayWhenReady(Player player, boolean z) {
            player.setPlayWhenReady(z);
            return true;
        }

        @Override // com.google.android.exoplayer2.ui.PlaybackControlView.ControlDispatcher
        public boolean dispatchSeekTo(Player player, int i, long j) {
            player.seekTo(i, j);
            return true;
        }

        @Override // com.google.android.exoplayer2.ui.PlaybackControlView.ControlDispatcher
        public boolean dispatchSetRepeatMode(Player player, int i) {
            player.setRepeatMode(i);
            return true;
        }
    };
    public static final int DEFAULT_FAST_FORWARD_MS = 15000;
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_REWIND_MS = 5000;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    private static final long MAX_POSITION_FOR_SEEK_TO_PREVIOUS = 3000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private long[] adGroupTimesMs;
    private final ComponentListener componentListener;
    private ControlDispatcher controlDispatcher;
    private final TextView durationView;
    private final View fastForwardButton;
    private int fastForwardMs;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private final Runnable hideAction;
    private long hideAtMs;
    private boolean isAttachedToWindow;
    private boolean multiWindowTimeBar;
    private final View nextButton;
    private final View pauseButton;
    private final Timeline.Period period;
    private final View playButton;
    private boolean[] playedAdGroups;
    private Player player;
    private final TextView positionView;
    private final View previousButton;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final View rewindButton;
    private int rewindMs;
    private boolean scrubbing;
    private boolean showMultiWindowTimeBar;
    private int showTimeoutMs;
    private final TimeBar timeBar;
    private final Runnable updateProgressAction;
    private VisibilityListener visibilityListener;
    private final Timeline.Window window;

    public interface ControlDispatcher {
        boolean dispatchSeekTo(Player player, int i, long j);

        boolean dispatchSetPlayWhenReady(Player player, boolean z);

        boolean dispatchSetRepeatMode(Player player, int i);
    }

    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean isHandledMediaKey(int i) {
        return i == 90 || i == 89 || i == 85 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
    }

    public PlaybackControlView(Context context) {
        this(context, null);
    }

    public PlaybackControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlaybackControlView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.updateProgressAction = new Runnable() {
            /* class com.google.android.exoplayer2.ui.PlaybackControlView.AnonymousClass2 */

            public void run() {
                PlaybackControlView.this.updateProgress();
            }
        };
        this.hideAction = new Runnable() {
            /* class com.google.android.exoplayer2.ui.PlaybackControlView.AnonymousClass3 */

            public void run() {
                PlaybackControlView.this.hide();
            }
        };
        int i2 = R.layout.exo_playback_control_view;
        this.rewindMs = 5000;
        this.fastForwardMs = 15000;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlaybackControlView, 0, 0);
            try {
                this.rewindMs = obtainStyledAttributes.getInt(R.styleable.PlaybackControlView_rewind_increment, this.rewindMs);
                this.fastForwardMs = obtainStyledAttributes.getInt(R.styleable.PlaybackControlView_fastforward_increment, this.fastForwardMs);
                this.showTimeoutMs = obtainStyledAttributes.getInt(R.styleable.PlaybackControlView_show_timeout, this.showTimeoutMs);
                i2 = obtainStyledAttributes.getResourceId(R.styleable.PlaybackControlView_controller_layout_id, i2);
                this.repeatToggleModes = getRepeatToggleModes(obtainStyledAttributes, this.repeatToggleModes);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.period = new Timeline.Period();
        this.window = new Timeline.Window();
        this.formatBuilder = new StringBuilder();
        this.formatter = new Formatter(this.formatBuilder, Locale.getDefault());
        this.adGroupTimesMs = new long[0];
        this.playedAdGroups = new boolean[0];
        this.componentListener = new ComponentListener();
        this.controlDispatcher = DEFAULT_CONTROL_DISPATCHER;
        LayoutInflater.from(context).inflate(i2, this);
        setDescendantFocusability(262144);
        this.durationView = (TextView) findViewById(R.id.exo_duration);
        this.positionView = (TextView) findViewById(R.id.exo_position);
        this.timeBar = (TimeBar) findViewById(R.id.exo_progress);
        if (this.timeBar != null) {
            this.timeBar.setListener(this.componentListener);
        }
        this.playButton = findViewById(R.id.exo_play);
        if (this.playButton != null) {
            this.playButton.setOnClickListener(this.componentListener);
        }
        this.pauseButton = findViewById(R.id.exo_pause);
        if (this.pauseButton != null) {
            this.pauseButton.setOnClickListener(this.componentListener);
        }
        this.previousButton = findViewById(R.id.exo_prev);
        if (this.previousButton != null) {
            this.previousButton.setOnClickListener(this.componentListener);
        }
        this.nextButton = findViewById(R.id.exo_next);
        if (this.nextButton != null) {
            this.nextButton.setOnClickListener(this.componentListener);
        }
        this.rewindButton = findViewById(R.id.exo_rew);
        if (this.rewindButton != null) {
            this.rewindButton.setOnClickListener(this.componentListener);
        }
        this.fastForwardButton = findViewById(R.id.exo_ffwd);
        if (this.fastForwardButton != null) {
            this.fastForwardButton.setOnClickListener(this.componentListener);
        }
        this.repeatToggleButton = (ImageView) findViewById(R.id.exo_repeat_toggle);
        if (this.repeatToggleButton != null) {
            this.repeatToggleButton.setOnClickListener(this.componentListener);
        }
        Resources resources = context.getResources();
        this.repeatOffButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_off);
        this.repeatOneButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_one);
        this.repeatAllButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_all);
        this.repeatOffButtonContentDescription = resources.getString(R.string.exo_controls_repeat_off_description);
        this.repeatOneButtonContentDescription = resources.getString(R.string.exo_controls_repeat_one_description);
        this.repeatAllButtonContentDescription = resources.getString(R.string.exo_controls_repeat_all_description);
    }

    private static int getRepeatToggleModes(TypedArray typedArray, int i) {
        return typedArray.getInt(R.styleable.PlaybackControlView_repeat_toggle_modes, i);
    }

    public Player getPlayer() {
        return this.player;
    }

    public void setPlayer(Player player2) {
        if (this.player != player2) {
            if (this.player != null) {
                this.player.removeListener(this.componentListener);
            }
            this.player = player2;
            if (player2 != null) {
                player2.addListener(this.componentListener);
            }
            updateAll();
        }
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.showMultiWindowTimeBar = z;
        updateTimeBarMode();
    }

    public void setVisibilityListener(VisibilityListener visibilityListener2) {
        this.visibilityListener = visibilityListener2;
    }

    public void setControlDispatcher(ControlDispatcher controlDispatcher2) {
        if (controlDispatcher2 == null) {
            controlDispatcher2 = DEFAULT_CONTROL_DISPATCHER;
        }
        this.controlDispatcher = controlDispatcher2;
    }

    public void setRewindIncrementMs(int i) {
        this.rewindMs = i;
        updateNavigation();
    }

    public void setFastForwardIncrementMs(int i) {
        this.fastForwardMs = i;
        updateNavigation();
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void setShowTimeoutMs(int i) {
        this.showTimeoutMs = i;
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public void setRepeatToggleModes(int i) {
        this.repeatToggleModes = i;
        if (this.player != null) {
            int repeatMode = this.player.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 0);
            } else if (i == 1 && repeatMode == 2) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 1);
            } else if (i == 2 && repeatMode == 1) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 2);
            }
        }
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            if (this.visibilityListener != null) {
                this.visibilityListener.onVisibilityChange(getVisibility());
            }
            updateAll();
            requestPlayPauseFocus();
        }
        hideAfterTimeout();
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            if (this.visibilityListener != null) {
                this.visibilityListener.onVisibilityChange(getVisibility());
            }
            removeCallbacks(this.updateProgressAction);
            removeCallbacks(this.hideAction);
            this.hideAtMs = C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void hideAfterTimeout() {
        removeCallbacks(this.hideAction);
        if (this.showTimeoutMs > 0) {
            this.hideAtMs = SystemClock.uptimeMillis() + ((long) this.showTimeoutMs);
            if (this.isAttachedToWindow) {
                postDelayed(this.hideAction, (long) this.showTimeoutMs);
                return;
            }
            return;
        }
        this.hideAtMs = C.TIME_UNSET;
    }

    private void updateAll() {
        updatePlayPauseButton();
        updateNavigation();
        updateRepeatModeButton();
        updateProgress();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updatePlayPauseButton() {
        boolean z;
        if (isVisible() && this.isAttachedToWindow) {
            boolean z2 = true;
            int i = 0;
            boolean z3 = this.player != null && this.player.getPlayWhenReady();
            if (this.playButton != null) {
                z = (z3 && this.playButton.isFocused()) | false;
                this.playButton.setVisibility(z3 ? 8 : 0);
            } else {
                z = false;
            }
            if (this.pauseButton != null) {
                if (z3 || !this.pauseButton.isFocused()) {
                    z2 = false;
                }
                z |= z2;
                View view = this.pauseButton;
                if (!z3) {
                    i = 8;
                }
                view.setVisibility(i);
            }
            if (z) {
                requestPlayPauseFocus();
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateNavigation() {
        boolean z;
        boolean z2;
        boolean z3;
        if (isVisible() && this.isAttachedToWindow) {
            Timeline currentTimeline = this.player != null ? this.player.getCurrentTimeline() : null;
            boolean z4 = true;
            if (currentTimeline != null && !currentTimeline.isEmpty()) {
                int currentWindowIndex = this.player.getCurrentWindowIndex();
                currentTimeline.getWindow(currentWindowIndex, this.window);
                z2 = this.window.isSeekable;
                z = !currentTimeline.isFirstWindow(currentWindowIndex, this.player.getRepeatMode()) || z2 || !this.window.isDynamic;
                z3 = !currentTimeline.isLastWindow(currentWindowIndex, this.player.getRepeatMode()) || this.window.isDynamic;
                if (this.player.isPlayingAd()) {
                    hide();
                }
            } else {
                z3 = false;
                z2 = false;
                z = false;
            }
            setButtonEnabled(z, this.previousButton);
            setButtonEnabled(z3, this.nextButton);
            setButtonEnabled(this.fastForwardMs > 0 && z2, this.fastForwardButton);
            if (this.rewindMs <= 0 || !z2) {
                z4 = false;
            }
            setButtonEnabled(z4, this.rewindButton);
            if (this.timeBar != null) {
                this.timeBar.setEnabled(z2);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateRepeatModeButton() {
        if (isVisible() && this.isAttachedToWindow && this.repeatToggleButton != null) {
            if (this.repeatToggleModes == 0) {
                this.repeatToggleButton.setVisibility(8);
            } else if (this.player == null) {
                setButtonEnabled(false, this.repeatToggleButton);
            } else {
                setButtonEnabled(true, this.repeatToggleButton);
                switch (this.player.getRepeatMode()) {
                    case 0:
                        this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                        this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
                        break;
                    case 1:
                        this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                        this.repeatToggleButton.setContentDescription(this.repeatOneButtonContentDescription);
                        break;
                    case 2:
                        this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                        this.repeatToggleButton.setContentDescription(this.repeatAllButtonContentDescription);
                        break;
                }
                this.repeatToggleButton.setVisibility(0);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateTimeBarMode() {
        if (this.player != null) {
            this.multiWindowTimeBar = this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(this.player.getCurrentTimeline(), this.window);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateProgress() {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        int i2;
        long j6;
        if (isVisible() && this.isAttachedToWindow) {
            boolean z = true;
            if (this.player != null) {
                Timeline currentTimeline = this.player.getCurrentTimeline();
                if (!currentTimeline.isEmpty()) {
                    int currentWindowIndex = this.player.getCurrentWindowIndex();
                    int i3 = this.multiWindowTimeBar ? 0 : currentWindowIndex;
                    int windowCount = this.multiWindowTimeBar ? currentTimeline.getWindowCount() - 1 : currentWindowIndex;
                    j5 = 0;
                    i = 0;
                    j4 = 0;
                    while (true) {
                        if (i3 > windowCount) {
                            break;
                        }
                        if (i3 == currentWindowIndex) {
                            j4 = j5;
                        }
                        currentTimeline.getWindow(i3, this.window);
                        if (this.window.durationUs == C.TIME_UNSET) {
                            Assertions.checkState(this.multiWindowTimeBar ^ z);
                            break;
                        }
                        int i4 = this.window.firstPeriodIndex;
                        while (i4 <= this.window.lastPeriodIndex) {
                            currentTimeline.getPeriod(i4, this.period);
                            int adGroupCount = this.period.getAdGroupCount();
                            int i5 = i;
                            int i6 = 0;
                            while (i6 < adGroupCount) {
                                long adGroupTimeUs = this.period.getAdGroupTimeUs(i6);
                                if (adGroupTimeUs != Long.MIN_VALUE) {
                                    j6 = adGroupTimeUs;
                                } else if (this.period.durationUs == C.TIME_UNSET) {
                                    i2 = currentWindowIndex;
                                    i6++;
                                    currentWindowIndex = i2;
                                } else {
                                    j6 = this.period.durationUs;
                                }
                                long positionInWindowUs = j6 + this.period.getPositionInWindowUs();
                                if (positionInWindowUs >= 0) {
                                    i2 = currentWindowIndex;
                                    if (positionInWindowUs <= this.window.durationUs) {
                                        if (i5 == this.adGroupTimesMs.length) {
                                            int length = this.adGroupTimesMs.length == 0 ? 1 : this.adGroupTimesMs.length * 2;
                                            this.adGroupTimesMs = Arrays.copyOf(this.adGroupTimesMs, length);
                                            this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                        }
                                        this.adGroupTimesMs[i5] = C.usToMs(positionInWindowUs + j5);
                                        this.playedAdGroups[i5] = this.period.hasPlayedAdGroup(i6);
                                        i5++;
                                    }
                                } else {
                                    i2 = currentWindowIndex;
                                }
                                i6++;
                                currentWindowIndex = i2;
                            }
                            i4++;
                            i = i5;
                        }
                        j5 += this.window.durationUs;
                        i3++;
                        z = true;
                    }
                } else {
                    j5 = 0;
                    j4 = 0;
                    i = 0;
                }
                j3 = C.usToMs(j5);
                long usToMs = C.usToMs(j4);
                if (this.player.isPlayingAd()) {
                    j2 = usToMs + this.player.getContentPosition();
                    j = j2;
                } else {
                    long currentPosition = this.player.getCurrentPosition() + usToMs;
                    long bufferedPosition = usToMs + this.player.getBufferedPosition();
                    j2 = currentPosition;
                    j = bufferedPosition;
                }
                if (this.timeBar != null) {
                    this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i);
                }
            } else {
                j3 = 0;
                j2 = 0;
                j = 0;
            }
            if (this.durationView != null) {
                this.durationView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, j3));
            }
            if (this.positionView != null && !this.scrubbing) {
                this.positionView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, j2));
            }
            if (this.timeBar != null) {
                this.timeBar.setPosition(j2);
                this.timeBar.setBufferedPosition(j);
                this.timeBar.setDuration(j3);
            }
            removeCallbacks(this.updateProgressAction);
            int playbackState = this.player == null ? 1 : this.player.getPlaybackState();
            if (playbackState != 1 && playbackState != 4) {
                long j7 = 1000;
                if (this.player.getPlayWhenReady() && playbackState == 3) {
                    long j8 = 1000 - (j2 % 1000);
                    j7 = j8 < 200 ? 1000 + j8 : j8;
                }
                postDelayed(this.updateProgressAction, j7);
            }
        }
    }

    private void requestPlayPauseFocus() {
        boolean z = this.player != null && this.player.getPlayWhenReady();
        if (!z && this.playButton != null) {
            this.playButton.requestFocus();
        } else if (z && this.pauseButton != null) {
            this.pauseButton.requestFocus();
        }
    }

    private void setButtonEnabled(boolean z, View view) {
        if (view != null) {
            view.setEnabled(z);
            int i = 0;
            if (Util.SDK_INT >= 11) {
                setViewAlphaV11(view, z ? 1.0f : 0.3f);
                view.setVisibility(0);
                return;
            }
            if (!z) {
                i = 4;
            }
            view.setVisibility(i);
        }
    }

    @TargetApi(11)
    private void setViewAlphaV11(View view, float f) {
        view.setAlpha(f);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void previous() {
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!currentTimeline.isEmpty()) {
            int currentWindowIndex = this.player.getCurrentWindowIndex();
            currentTimeline.getWindow(currentWindowIndex, this.window);
            int previousWindowIndex = currentTimeline.getPreviousWindowIndex(currentWindowIndex, this.player.getRepeatMode());
            if (previousWindowIndex == -1 || (this.player.getCurrentPosition() > MAX_POSITION_FOR_SEEK_TO_PREVIOUS && (!this.window.isDynamic || this.window.isSeekable))) {
                seekTo(0);
            } else {
                seekTo(previousWindowIndex, C.TIME_UNSET);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void next() {
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!currentTimeline.isEmpty()) {
            int currentWindowIndex = this.player.getCurrentWindowIndex();
            int nextWindowIndex = currentTimeline.getNextWindowIndex(currentWindowIndex, this.player.getRepeatMode());
            if (nextWindowIndex != -1) {
                seekTo(nextWindowIndex, C.TIME_UNSET);
            } else if (currentTimeline.getWindow(currentWindowIndex, this.window, false).isDynamic) {
                seekTo(currentWindowIndex, C.TIME_UNSET);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void rewind() {
        if (this.rewindMs > 0) {
            seekTo(Math.max(this.player.getCurrentPosition() - ((long) this.rewindMs), 0L));
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void fastForward() {
        if (this.fastForwardMs > 0) {
            long duration = this.player.getDuration();
            long currentPosition = this.player.getCurrentPosition() + ((long) this.fastForwardMs);
            if (duration != C.TIME_UNSET) {
                currentPosition = Math.min(currentPosition, duration);
            }
            seekTo(currentPosition);
        }
    }

    private void seekTo(long j) {
        seekTo(this.player.getCurrentWindowIndex(), j);
    }

    private void seekTo(int i, long j) {
        if (!this.controlDispatcher.dispatchSeekTo(this.player, i, j)) {
            updateProgress();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void seekToTimeBarPosition(long j) {
        int i;
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (this.multiWindowTimeBar && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            i = 0;
            while (true) {
                long durationMs = currentTimeline.getWindow(i, this.window).getDurationMs();
                if (j < durationMs) {
                    break;
                } else if (i == windowCount - 1) {
                    j = durationMs;
                    break;
                } else {
                    j -= durationMs;
                    i++;
                }
            }
        } else {
            i = this.player.getCurrentWindowIndex();
        }
        seekTo(i, j);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        if (this.hideAtMs != C.TIME_UNSET) {
            long uptimeMillis = this.hideAtMs - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.hideAction, uptimeMillis);
            }
        }
        updateAll();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        removeCallbacks(this.hideAction);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (this.player == null || !isHandledMediaKey(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode != 85) {
                switch (keyCode) {
                    case 87:
                        next();
                        break;
                    case 88:
                        previous();
                        break;
                    case 89:
                        rewind();
                        break;
                    case 90:
                        fastForward();
                        break;
                    default:
                        switch (keyCode) {
                            case 126:
                                this.controlDispatcher.dispatchSetPlayWhenReady(this.player, true);
                                break;
                            case WorkQueueKt.MASK /*{ENCODED_INT: 127}*/:
                                this.controlDispatcher.dispatchSetPlayWhenReady(this.player, false);
                                break;
                        }
                }
            } else {
                this.controlDispatcher.dispatchSetPlayWhenReady(this.player, !this.player.getPlayWhenReady());
            }
        }
        return true;
    }

    private static boolean canShowMultiWindowTimeBar(Timeline timeline, Timeline.Window window2) {
        if (timeline.getWindowCount() > 100) {
            return false;
        }
        int windowCount = timeline.getWindowCount();
        for (int i = 0; i < windowCount; i++) {
            if (timeline.getWindow(i, window2).durationUs == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    private final class ComponentListener implements Player.EventListener, TimeBar.OnScrubListener, View.OnClickListener {
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
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        }

        private ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long j) {
            PlaybackControlView.this.removeCallbacks(PlaybackControlView.this.hideAction);
            PlaybackControlView.this.scrubbing = true;
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long j) {
            if (PlaybackControlView.this.positionView != null) {
                PlaybackControlView.this.positionView.setText(Util.getStringForTime(PlaybackControlView.this.formatBuilder, PlaybackControlView.this.formatter, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long j, boolean z) {
            PlaybackControlView.this.scrubbing = false;
            if (!z && PlaybackControlView.this.player != null) {
                PlaybackControlView.this.seekToTimeBarPosition(j);
            }
            PlaybackControlView.this.hideAfterTimeout();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            PlaybackControlView.this.updatePlayPauseButton();
            PlaybackControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onRepeatModeChanged(int i) {
            PlaybackControlView.this.updateRepeatModeButton();
            PlaybackControlView.this.updateNavigation();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPositionDiscontinuity() {
            PlaybackControlView.this.updateNavigation();
            PlaybackControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onTimelineChanged(Timeline timeline, Object obj) {
            PlaybackControlView.this.updateNavigation();
            PlaybackControlView.this.updateTimeBarMode();
            PlaybackControlView.this.updateProgress();
        }

        public void onClick(View view) {
            if (PlaybackControlView.this.player != null) {
                if (PlaybackControlView.this.nextButton == view) {
                    PlaybackControlView.this.next();
                } else if (PlaybackControlView.this.previousButton == view) {
                    PlaybackControlView.this.previous();
                } else if (PlaybackControlView.this.fastForwardButton == view) {
                    PlaybackControlView.this.fastForward();
                } else if (PlaybackControlView.this.rewindButton == view) {
                    PlaybackControlView.this.rewind();
                } else if (PlaybackControlView.this.playButton == view) {
                    PlaybackControlView.this.controlDispatcher.dispatchSetPlayWhenReady(PlaybackControlView.this.player, true);
                } else if (PlaybackControlView.this.pauseButton == view) {
                    PlaybackControlView.this.controlDispatcher.dispatchSetPlayWhenReady(PlaybackControlView.this.player, false);
                } else if (PlaybackControlView.this.repeatToggleButton == view) {
                    PlaybackControlView.this.controlDispatcher.dispatchSetRepeatMode(PlaybackControlView.this.player, RepeatModeUtil.getNextRepeatMode(PlaybackControlView.this.player.getRepeatMode(), PlaybackControlView.this.repeatToggleModes));
                }
            }
            PlaybackControlView.this.hideAfterTimeout();
        }
    }
}
