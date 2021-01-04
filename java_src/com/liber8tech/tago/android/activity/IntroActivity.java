package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.facebook.share.internal.ShareConstants;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.LoopingMediaSource;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.ui.SimpleExoPlayerView;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.util.Util;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import com.trello.rxlifecycle2.components.support.RxAppCompatActivity;
import io.reactivex.disposables.CompositeDisposable;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\b\u0010 \u001a\u00020\u0014H\u0014J\b\u0010!\u001a\u00020\u0014H\u0014J\b\u0010\"\u001a\u00020\u0014H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006#"}, d2 = {"Lcom/liber8tech/tago/android/activity/IntroActivity;", "Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;", "()V", "authService", "Lcom/liber8tech/tago/service/AuthService;", "getAuthService", "()Lcom/liber8tech/tago/service/AuthService;", "setAuthService", "(Lcom/liber8tech/tago/service/AuthService;)V", "disposeBag", "Lio/reactivex/disposables/CompositeDisposable;", "exoPlayer", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "runTimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "getRunTimeConfig", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "setRunTimeConfig", "(Lcom/liber8tech/tago/util/RuntimeConfig;)V", "initButtons", "", "initStatusBar", "initVideo", "onActivityResult", "requestCode", "", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onStart", "onStop", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: IntroActivity.kt */
public final class IntroActivity extends RxAppCompatActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AuthService authService;
    private final CompositeDisposable disposeBag = new CompositeDisposable();
    private SimpleExoPlayer exoPlayer;
    @Inject
    @NotNull
    public RuntimeConfig runTimeConfig;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    @NotNull
    public final RuntimeConfig getRunTimeConfig() {
        RuntimeConfig runtimeConfig = this.runTimeConfig;
        if (runtimeConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runTimeConfig");
        }
        return runtimeConfig;
    }

    public final void setRunTimeConfig(@NotNull RuntimeConfig runtimeConfig) {
        Intrinsics.checkParameterIsNotNull(runtimeConfig, "<set-?>");
        this.runTimeConfig = runtimeConfig;
    }

    @NotNull
    public final AuthService getAuthService() {
        AuthService authService2 = this.authService;
        if (authService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authService");
        }
        return authService2;
    }

    public final void setAuthService(@NotNull AuthService authService2) {
        Intrinsics.checkParameterIsNotNull(authService2, "<set-?>");
        this.authService = authService2;
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        RuntimeConfig runtimeConfig = this.runTimeConfig;
        if (runtimeConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runTimeConfig");
        }
        if (runtimeConfig.getToken() != null) {
            AnkoInternals.internalStartActivity(this, MainActivity.class, new Pair[0]);
            finish();
            return;
        }
        setContentView(R.layout.activity_intro);
        initVideo();
        initButtons();
        initStatusBar();
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        this.disposeBag.clear();
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onStart() {
        super.onStart();
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("exoPlayer");
        }
        simpleExoPlayer.setPlayWhenReady(true);
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onStop() {
        super.onStop();
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("exoPlayer");
        }
        simpleExoPlayer.setPlayWhenReady(false);
    }

    private final void initVideo() {
        IntroActivity introActivity = this;
        LoopingMediaSource loopingMediaSource = new LoopingMediaSource(new ExtractorMediaSource(Uri.parse("/android_asset/video/tago_intro_video.mp4"), new DefaultDataSourceFactory(introActivity, Util.getUserAgent(introActivity, "tago")), new DefaultExtractorsFactory(), null, null));
        SimpleExoPlayer newSimpleInstance = ExoPlayerFactory.newSimpleInstance(new DefaultRenderersFactory(introActivity), new DefaultTrackSelector(), new DefaultLoadControl());
        Intrinsics.checkExpressionValueIsNotNull(newSimpleInstance, "ExoPlayerFactory.newSimp…(), DefaultLoadControl())");
        this.exoPlayer = newSimpleInstance;
        SimpleExoPlayerView simpleExoPlayerView = (SimpleExoPlayerView) _$_findCachedViewById(R.id.exoPlayerView);
        Intrinsics.checkExpressionValueIsNotNull(simpleExoPlayerView, "exoPlayerView");
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("exoPlayer");
        }
        simpleExoPlayerView.setPlayer(simpleExoPlayer);
        SimpleExoPlayerView simpleExoPlayerView2 = (SimpleExoPlayerView) _$_findCachedViewById(R.id.exoPlayerView);
        Intrinsics.checkExpressionValueIsNotNull(simpleExoPlayerView2, "exoPlayerView");
        simpleExoPlayerView2.setUseController(false);
        SimpleExoPlayerView simpleExoPlayerView3 = (SimpleExoPlayerView) _$_findCachedViewById(R.id.exoPlayerView);
        Intrinsics.checkExpressionValueIsNotNull(simpleExoPlayerView3, "exoPlayerView");
        simpleExoPlayerView3.getPlayer().prepare(loopingMediaSource);
        ((TagoButton) _$_findCachedViewById(R.id.facebook_button)).setOnClickListener(new IntroActivity$initVideo$1(this));
    }

    private final void initButtons() {
        ((TagoButton) _$_findCachedViewById(R.id.btnSignUp)).setColor(TagoButtonColor.SILVER);
        TagoButton tagoButton = (TagoButton) _$_findCachedViewById(R.id.btnSignUp);
        Intrinsics.checkExpressionValueIsNotNull(tagoButton, "btnSignUp");
        TypefacesExtensionKt.semibold(tagoButton);
        ((TagoButton) _$_findCachedViewById(R.id.facebook_button)).setColor(TagoButtonColor.FACEBOOK);
        TagoButton tagoButton2 = (TagoButton) _$_findCachedViewById(R.id.btnSignIn);
        Intrinsics.checkExpressionValueIsNotNull(tagoButton2, "btnSignIn");
        tagoButton2.setOnClickListener(new IntroActivity$inlined$sam$i$android_view_View_OnClickListener$0(new IntroActivity$initButtons$1(this)));
        TagoButton tagoButton3 = (TagoButton) _$_findCachedViewById(R.id.btnSignUp);
        Intrinsics.checkExpressionValueIsNotNull(tagoButton3, "btnSignUp");
        tagoButton3.setOnClickListener(new IntroActivity$inlined$sam$i$android_view_View_OnClickListener$0(new IntroActivity$initButtons$2(this)));
    }

    private final void initStatusBar() {
        if (Build.VERSION.SDK_INT >= 19) {
            getWindow().setFlags(512, 512);
            LinearLayout linearLayout = (LinearLayout) _$_findCachedViewById(R.id.layoutMain);
            Intrinsics.checkExpressionValueIsNotNull(linearLayout, "layoutMain");
            if (linearLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                LinearLayout linearLayout2 = (LinearLayout) _$_findCachedViewById(R.id.layoutMain);
                Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "layoutMain");
                ViewGroup.LayoutParams layoutParams = linearLayout2.getLayoutParams();
                if (layoutParams != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                    ((LinearLayout) _$_findCachedViewById(R.id.layoutMain)).requestLayout();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        AuthService authService2 = this.authService;
        if (authService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authService");
        }
        authService2.getCallbackManager().onActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }
}
