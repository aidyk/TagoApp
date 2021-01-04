package com.liber8tech.tago.android;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.support.multidex.MultiDex;
import android.util.DisplayMetrics;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.core.CrashlyticsCore;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.di.TagoComponent;
import com.liber8tech.tago.util.RuntimeConfig;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.Realm;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J\b\u0010\u0019\u001a\u00020\u0016H\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8FX\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Lcom/liber8tech/tago/android/TagoApplication;", "Landroid/app/Application;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "component", "Lcom/liber8tech/tago/di/TagoComponent;", "getComponent", "()Lcom/liber8tech/tago/di/TagoComponent;", "component$delegate", "Lkotlin/Lazy;", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "getRuntimeConfig", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "setRuntimeConfig", "(Lcom/liber8tech/tago/util/RuntimeConfig;)V", "attachBaseContext", "", "context", "Landroid/content/Context;", "onCreate", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoApplication.kt */
public final class TagoApplication extends Application {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TagoApplication.class), "component", "getComponent()Lcom/liber8tech/tago/di/TagoComponent;"))};
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static TagoApplication instance = null;
    private static final boolean mock = false;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @NotNull
    private final Lazy component$delegate = LazyKt.lazy(new TagoApplication$component$2(this));
    @Inject
    @NotNull
    public RuntimeConfig runtimeConfig;

    @NotNull
    public final TagoComponent getComponent() {
        Lazy lazy = this.component$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TagoComponent) lazy.getValue();
    }

    @NotNull
    public static final /* synthetic */ TagoApplication access$getInstance$cp() {
        TagoApplication tagoApplication = instance;
        if (tagoApplication == null) {
            Intrinsics.throwUninitializedPropertyAccessException("instance");
        }
        return tagoApplication;
    }

    @NotNull
    public final RuntimeConfig getRuntimeConfig() {
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        return runtimeConfig2;
    }

    public final void setRuntimeConfig(@NotNull RuntimeConfig runtimeConfig2) {
        Intrinsics.checkParameterIsNotNull(runtimeConfig2, "<set-?>");
        this.runtimeConfig = runtimeConfig2;
    }

    @NotNull
    public final AnalyticsService getAnalytics() {
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        return analyticsService;
    }

    public final void setAnalytics(@NotNull AnalyticsService analyticsService) {
        Intrinsics.checkParameterIsNotNull(analyticsService, "<set-?>");
        this.analytics = analyticsService;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nXD¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/liber8tech/tago/android/TagoApplication$Companion;", "", "()V", "instance", "Lcom/liber8tech/tago/android/TagoApplication;", "getInstance", "()Lcom/liber8tech/tago/android/TagoApplication;", "setInstance", "(Lcom/liber8tech/tago/android/TagoApplication;)V", "mock", "", "getMock", "()Z", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: TagoApplication.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getMock() {
            return TagoApplication.mock;
        }

        @NotNull
        public final TagoApplication getInstance() {
            return TagoApplication.access$getInstance$cp();
        }

        public final void setInstance(@NotNull TagoApplication tagoApplication) {
            Intrinsics.checkParameterIsNotNull(tagoApplication, "<set-?>");
            TagoApplication.instance = tagoApplication;
        }
    }

    public void onCreate() {
        super.onCreate();
        instance = this;
        getComponent().inject(this);
        TagoApplication tagoApplication = instance;
        if (tagoApplication == null) {
            Intrinsics.throwUninitializedPropertyAccessException("instance");
        }
        TagoApplication tagoApplication2 = tagoApplication;
        Kit[] kitArr = new Kit[1];
        Crashlytics.Builder builder = new Crashlytics.Builder();
        CrashlyticsCore.Builder builder2 = new CrashlyticsCore.Builder();
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        kitArr[0] = builder.core(builder2.disabled(!runtimeConfig2.getCrashlyticsEnable()).build()).build();
        Fabric.with(tagoApplication2, kitArr);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        RuntimeConfig runtimeConfig3 = this.runtimeConfig;
        if (runtimeConfig3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        analyticsService.enableDryRun(true ^ runtimeConfig3.getAnalyticsEnable());
        Realm.init(this);
        Constants constants = Constants.INSTANCE;
        Resources resources = getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Intrinsics.checkExpressionValueIsNotNull(displayMetrics, "resources.displayMetrics");
        constants.setTagoCameraGapHeightPx(((float) displayMetrics.widthPixels) * 0.22794117f);
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super.attachBaseContext(context);
        MultiDex.install(this);
    }
}
