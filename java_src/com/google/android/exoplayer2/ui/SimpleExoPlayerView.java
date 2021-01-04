package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.TextRenderer;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.ui.PlaybackControlView;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.List;

@TargetApi(16)
public final class SimpleExoPlayerView extends FrameLayout {
    private static final int SURFACE_TYPE_NONE = 0;
    private static final int SURFACE_TYPE_SURFACE_VIEW = 1;
    private static final int SURFACE_TYPE_TEXTURE_VIEW = 2;
    private final ImageView artworkView;
    private final ComponentListener componentListener;
    private final AspectRatioFrameLayout contentFrame;
    private final PlaybackControlView controller;
    private boolean controllerAutoShow;
    private boolean controllerHideOnTouch;
    private int controllerShowTimeoutMs;
    private Bitmap defaultArtwork;
    private final FrameLayout overlayFrameLayout;
    private SimpleExoPlayer player;
    private final View shutterView;
    private final SubtitleView subtitleView;
    private final View surfaceView;
    private boolean useArtwork;
    private boolean useController;

    public SimpleExoPlayerView(Context context) {
        this(context, null);
    }

    public SimpleExoPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleExoPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z;
        boolean z2;
        int i2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        if (isInEditMode()) {
            this.contentFrame = null;
            this.shutterView = null;
            this.surfaceView = null;
            this.artworkView = null;
            this.subtitleView = null;
            this.controller = null;
            this.componentListener = null;
            this.overlayFrameLayout = null;
            ImageView imageView = new ImageView(context, attributeSet);
            if (Util.SDK_INT >= 23) {
                configureEditModeLogoV23(getResources(), imageView);
            } else {
                configureEditModeLogo(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i5 = R.layout.exo_simple_player_view;
        int i6 = 5000;
        boolean z5 = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SimpleExoPlayerView, 0, 0);
            try {
                i5 = obtainStyledAttributes.getResourceId(R.styleable.SimpleExoPlayerView_player_layout_id, i5);
                z4 = obtainStyledAttributes.getBoolean(R.styleable.SimpleExoPlayerView_use_artwork, true);
                i4 = obtainStyledAttributes.getResourceId(R.styleable.SimpleExoPlayerView_default_artwork, 0);
                z3 = obtainStyledAttributes.getBoolean(R.styleable.SimpleExoPlayerView_use_controller, true);
                i3 = obtainStyledAttributes.getInt(R.styleable.SimpleExoPlayerView_surface_type, 1);
                i2 = obtainStyledAttributes.getInt(R.styleable.SimpleExoPlayerView_resize_mode, 0);
                i6 = obtainStyledAttributes.getInt(R.styleable.SimpleExoPlayerView_show_timeout, 5000);
                z2 = obtainStyledAttributes.getBoolean(R.styleable.SimpleExoPlayerView_hide_on_touch, true);
                z = obtainStyledAttributes.getBoolean(R.styleable.SimpleExoPlayerView_auto_show, true);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            z4 = true;
            i4 = 0;
            z3 = true;
            i3 = 1;
            i2 = 0;
            z2 = true;
            z = true;
        }
        LayoutInflater.from(context).inflate(i5, this);
        this.componentListener = new ComponentListener();
        setDescendantFocusability(262144);
        this.contentFrame = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        if (this.contentFrame != null) {
            setResizeModeRaw(this.contentFrame, i2);
        }
        this.shutterView = findViewById(R.id.exo_shutter);
        if (this.contentFrame == null || i3 == 0) {
            this.surfaceView = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            this.surfaceView = i3 == 2 ? new TextureView(context) : new SurfaceView(context);
            this.surfaceView.setLayoutParams(layoutParams);
            this.contentFrame.addView(this.surfaceView, 0);
        }
        this.overlayFrameLayout = (FrameLayout) findViewById(R.id.exo_overlay);
        this.artworkView = (ImageView) findViewById(R.id.exo_artwork);
        this.useArtwork = z4 && this.artworkView != null;
        if (i4 != 0) {
            this.defaultArtwork = BitmapFactory.decodeResource(context.getResources(), i4);
        }
        this.subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        if (this.subtitleView != null) {
            this.subtitleView.setUserDefaultStyle();
            this.subtitleView.setUserDefaultTextSize();
        }
        PlaybackControlView playbackControlView = (PlaybackControlView) findViewById(R.id.exo_controller);
        View findViewById = findViewById(R.id.exo_controller_placeholder);
        if (playbackControlView != null) {
            this.controller = playbackControlView;
        } else if (findViewById != null) {
            this.controller = new PlaybackControlView(context, attributeSet);
            this.controller.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(this.controller, indexOfChild);
        } else {
            this.controller = null;
        }
        this.controllerShowTimeoutMs = this.controller == null ? 0 : i6;
        this.controllerHideOnTouch = z2;
        this.controllerAutoShow = z;
        this.useController = (!z3 || this.controller == null) ? false : z5;
        hideController();
    }

    public static void switchTargetView(@NonNull SimpleExoPlayer simpleExoPlayer, @Nullable SimpleExoPlayerView simpleExoPlayerView, @Nullable SimpleExoPlayerView simpleExoPlayerView2) {
        if (simpleExoPlayerView != simpleExoPlayerView2) {
            if (simpleExoPlayerView2 != null) {
                simpleExoPlayerView2.setPlayer(simpleExoPlayer);
            }
            if (simpleExoPlayerView != null) {
                simpleExoPlayerView.setPlayer(null);
            }
        }
    }

    public SimpleExoPlayer getPlayer() {
        return this.player;
    }

    public void setPlayer(SimpleExoPlayer simpleExoPlayer) {
        if (this.player != simpleExoPlayer) {
            if (this.player != null) {
                this.player.removeListener(this.componentListener);
                this.player.clearTextOutput(this.componentListener);
                this.player.clearVideoListener(this.componentListener);
                if (this.surfaceView instanceof TextureView) {
                    this.player.clearVideoTextureView((TextureView) this.surfaceView);
                } else if (this.surfaceView instanceof SurfaceView) {
                    this.player.clearVideoSurfaceView((SurfaceView) this.surfaceView);
                }
            }
            this.player = simpleExoPlayer;
            if (this.useController) {
                this.controller.setPlayer(simpleExoPlayer);
            }
            if (this.shutterView != null) {
                this.shutterView.setVisibility(0);
            }
            if (simpleExoPlayer != null) {
                if (this.surfaceView instanceof TextureView) {
                    simpleExoPlayer.setVideoTextureView((TextureView) this.surfaceView);
                } else if (this.surfaceView instanceof SurfaceView) {
                    simpleExoPlayer.setVideoSurfaceView((SurfaceView) this.surfaceView);
                }
                simpleExoPlayer.setVideoListener(this.componentListener);
                simpleExoPlayer.setTextOutput(this.componentListener);
                simpleExoPlayer.addListener(this.componentListener);
                maybeShowController(false);
                updateForCurrentTrackSelections();
                return;
            }
            hideController();
            hideArtwork();
        }
    }

    public void setResizeMode(int i) {
        Assertions.checkState(this.contentFrame != null);
        this.contentFrame.setResizeMode(i);
    }

    public boolean getUseArtwork() {
        return this.useArtwork;
    }

    public void setUseArtwork(boolean z) {
        Assertions.checkState(!z || this.artworkView != null);
        if (this.useArtwork != z) {
            this.useArtwork = z;
            updateForCurrentTrackSelections();
        }
    }

    public Bitmap getDefaultArtwork() {
        return this.defaultArtwork;
    }

    public void setDefaultArtwork(Bitmap bitmap) {
        if (this.defaultArtwork != bitmap) {
            this.defaultArtwork = bitmap;
            updateForCurrentTrackSelections();
        }
    }

    public boolean getUseController() {
        return this.useController;
    }

    public void setUseController(boolean z) {
        Assertions.checkState(!z || this.controller != null);
        if (this.useController != z) {
            this.useController = z;
            if (z) {
                this.controller.setPlayer(this.player);
            } else if (this.controller != null) {
                this.controller.hide();
                this.controller.setPlayer(null);
            }
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        maybeShowController(true);
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return this.useController && this.controller.dispatchMediaKeyEvent(keyEvent);
    }

    public void showController() {
        showController(shouldShowControllerIndefinitely());
    }

    public void hideController() {
        if (this.controller != null) {
            this.controller.hide();
        }
    }

    public int getControllerShowTimeoutMs() {
        return this.controllerShowTimeoutMs;
    }

    public void setControllerShowTimeoutMs(int i) {
        Assertions.checkState(this.controller != null);
        this.controllerShowTimeoutMs = i;
    }

    public boolean getControllerHideOnTouch() {
        return this.controllerHideOnTouch;
    }

    public void setControllerHideOnTouch(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controllerHideOnTouch = z;
    }

    public boolean getControllerAutoShow() {
        return this.controllerAutoShow;
    }

    public void setControllerAutoShow(boolean z) {
        this.controllerAutoShow = z;
    }

    public void setControllerVisibilityListener(PlaybackControlView.VisibilityListener visibilityListener) {
        Assertions.checkState(this.controller != null);
        this.controller.setVisibilityListener(visibilityListener);
    }

    public void setControlDispatcher(PlaybackControlView.ControlDispatcher controlDispatcher) {
        Assertions.checkState(this.controller != null);
        this.controller.setControlDispatcher(controlDispatcher);
    }

    public void setRewindIncrementMs(int i) {
        Assertions.checkState(this.controller != null);
        this.controller.setRewindIncrementMs(i);
    }

    public void setFastForwardIncrementMs(int i) {
        Assertions.checkState(this.controller != null);
        this.controller.setFastForwardIncrementMs(i);
    }

    public void setRepeatToggleModes(int i) {
        Assertions.checkState(this.controller != null);
        this.controller.setRepeatToggleModes(i);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controller.setShowMultiWindowTimeBar(z);
    }

    public View getVideoSurfaceView() {
        return this.surfaceView;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.overlayFrameLayout;
    }

    public SubtitleView getSubtitleView() {
        return this.subtitleView;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.useController || this.player == null || motionEvent.getActionMasked() != 0) {
            return false;
        }
        if (!this.controller.isVisible()) {
            maybeShowController(true);
        } else if (this.controllerHideOnTouch) {
            this.controller.hide();
        }
        return true;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.useController || this.player == null) {
            return false;
        }
        maybeShowController(true);
        return true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void maybeShowController(boolean z) {
        if (this.useController) {
            boolean z2 = this.controller.isVisible() && this.controller.getShowTimeoutMs() <= 0;
            boolean shouldShowControllerIndefinitely = shouldShowControllerIndefinitely();
            if (z || z2 || shouldShowControllerIndefinitely) {
                showController(shouldShowControllerIndefinitely);
            }
        }
    }

    private boolean shouldShowControllerIndefinitely() {
        if (this.player == null) {
            return true;
        }
        int playbackState = this.player.getPlaybackState();
        if (!this.controllerAutoShow || (playbackState != 1 && playbackState != 4 && this.player.getPlayWhenReady())) {
            return false;
        }
        return true;
    }

    private void showController(boolean z) {
        if (this.useController) {
            this.controller.setShowTimeoutMs(z ? 0 : this.controllerShowTimeoutMs);
            this.controller.show();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateForCurrentTrackSelections() {
        if (this.player != null) {
            TrackSelectionArray currentTrackSelections = this.player.getCurrentTrackSelections();
            for (int i = 0; i < currentTrackSelections.length; i++) {
                if (this.player.getRendererType(i) == 2 && currentTrackSelections.get(i) != null) {
                    hideArtwork();
                    return;
                }
            }
            if (this.shutterView != null) {
                this.shutterView.setVisibility(0);
            }
            if (this.useArtwork) {
                for (int i2 = 0; i2 < currentTrackSelections.length; i2++) {
                    TrackSelection trackSelection = currentTrackSelections.get(i2);
                    if (trackSelection != null) {
                        for (int i3 = 0; i3 < trackSelection.length(); i3++) {
                            Metadata metadata = trackSelection.getFormat(i3).metadata;
                            if (metadata != null && setArtworkFromMetadata(metadata)) {
                                return;
                            }
                        }
                        continue;
                    }
                }
                if (setArtworkFromBitmap(this.defaultArtwork)) {
                    return;
                }
            }
            hideArtwork();
        }
    }

    private boolean setArtworkFromMetadata(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof ApicFrame) {
                byte[] bArr = ((ApicFrame) entry).pictureData;
                return setArtworkFromBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            }
        }
        return false;
    }

    private boolean setArtworkFromBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width > 0 && height > 0) {
                if (this.contentFrame != null) {
                    this.contentFrame.setAspectRatio(((float) width) / ((float) height));
                }
                this.artworkView.setImageBitmap(bitmap);
                this.artworkView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private void hideArtwork() {
        if (this.artworkView != null) {
            this.artworkView.setImageResource(17170445);
            this.artworkView.setVisibility(4);
        }
    }

    @TargetApi(23)
    private static void configureEditModeLogoV23(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
    }

    private static void configureEditModeLogo(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color));
    }

    private static void setResizeModeRaw(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* access modifiers changed from: private */
    public final class ComponentListener implements SimpleExoPlayer.VideoListener, TextRenderer.Output, Player.EventListener {
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
        public void onPositionDiscontinuity() {
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onRepeatModeChanged(int i) {
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onTimelineChanged(Timeline timeline, Object obj) {
        }

        private ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.text.TextRenderer.Output
        public void onCues(List<Cue> list) {
            if (SimpleExoPlayerView.this.subtitleView != null) {
                SimpleExoPlayerView.this.subtitleView.onCues(list);
            }
        }

        @Override // com.google.android.exoplayer2.SimpleExoPlayer.VideoListener
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            if (SimpleExoPlayerView.this.contentFrame != null) {
                SimpleExoPlayerView.this.contentFrame.setAspectRatio(i2 == 0 ? 1.0f : (((float) i) * f) / ((float) i2));
            }
        }

        @Override // com.google.android.exoplayer2.SimpleExoPlayer.VideoListener
        public void onRenderedFirstFrame() {
            if (SimpleExoPlayerView.this.shutterView != null) {
                SimpleExoPlayerView.this.shutterView.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            SimpleExoPlayerView.this.updateForCurrentTrackSelections();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            SimpleExoPlayerView.this.maybeShowController(false);
        }
    }
}
