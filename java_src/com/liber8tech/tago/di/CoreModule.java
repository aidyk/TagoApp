package com.liber8tech.tago.di;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.support.v4.app.NotificationManagerCompat;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodManager;
import com.jakewharton.picasso.OkHttp3Downloader;
import com.squareup.picasso.LruCache;
import com.squareup.picasso.Picasso;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.TimeUnit;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0003H\u0007J\u0018\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\n \n*\u0004\u0018\u00010\u000e0\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\n \n*\u0004\u0018\u00010\u00120\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0014H\u0007J\b\u0010\u0015\u001a\u00020\u0016H\u0007J \u0010\u0017\u001a\n \n*\u0004\u0018\u00010\u00180\u00182\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0012H\u0007J\u0010\u0010\u001a\u001a\n \n*\u0004\u0018\u00010\f0\fH\u0007J\u0010\u0010\u001b\u001a\n \n*\u0004\u0018\u00010\u001c0\u001cH\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001d"}, d2 = {"Lcom/liber8tech/tago/di/CoreModule;", "", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getCtx", "()Landroid/content/Context;", "context", "displayMetrics", "Landroid/util/DisplayMetrics;", "kotlin.jvm.PlatformType", "res", "Landroid/content/res/Resources;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "handler", "Landroid/os/Handler;", "httpClient", "Lokhttp3/OkHttpClient;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "notificationManager", "Landroid/support/v4/app/NotificationManagerCompat;", "picasso", "Lcom/squareup/picasso/Picasso;", "client", "resources", "sharedPreferences", "Landroid/content/SharedPreferences;", "app_release"}, k = 1, mv = {1, 1, 13})
@Module
/* compiled from: CoreModule.kt */
public final class CoreModule {
    @NotNull
    private final Context ctx;

    public CoreModule(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        this.ctx = context;
    }

    @NotNull
    public final Context getCtx() {
        return this.ctx;
    }

    @Provides
    @Singleton
    @NotNull
    public final Context context() {
        return this.ctx;
    }

    @Provides
    @Singleton
    public final Resources resources() {
        return this.ctx.getResources();
    }

    @Provides
    @Singleton
    public final DisplayMetrics displayMetrics(@NotNull Resources resources) {
        Intrinsics.checkParameterIsNotNull(resources, "res");
        return resources.getDisplayMetrics();
    }

    @Provides
    @Singleton
    public final SharedPreferences sharedPreferences() {
        return PreferenceManager.getDefaultSharedPreferences(this.ctx);
    }

    @Provides
    @Singleton
    @NotNull
    public final NotificationManagerCompat notificationManager() {
        NotificationManagerCompat from = NotificationManagerCompat.from(this.ctx);
        Intrinsics.checkExpressionValueIsNotNull(from, "NotificationManagerCompat.from(ctx)");
        return from;
    }

    @Provides
    @Singleton
    @NotNull
    public final Handler handler() {
        return new Handler(Looper.getMainLooper());
    }

    @Provides
    @Singleton
    @NotNull
    public final InputMethodManager inputMethodManager() {
        Object systemService = this.ctx.getSystemService("input_method");
        if (systemService != null) {
            return (InputMethodManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    }

    @Provides
    @Singleton
    public final EventBus eventBus() {
        return EventBus.getDefault();
    }

    @Provides
    @Singleton
    public final OkHttpClient httpClient() {
        return new OkHttpClient().newBuilder().connectTimeout(30000, TimeUnit.MILLISECONDS).readTimeout(30000, TimeUnit.MILLISECONDS).writeTimeout(120000, TimeUnit.MILLISECONDS).build();
    }

    @Provides
    @Singleton
    public final Picasso picasso(@NotNull Context context, @NotNull OkHttpClient okHttpClient) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(okHttpClient, "client");
        return new Picasso.Builder(context).downloader(new OkHttp3Downloader(okHttpClient)).memoryCache(new LruCache(context)).build();
    }
}
