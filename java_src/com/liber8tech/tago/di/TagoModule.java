package com.liber8tech.tago.di;

import android.content.Context;
import android.os.Build;
import com.liber8tech.tago.android.TLSCompatibilitySocketFactory;
import com.liber8tech.tago.util.ImageSizeStore;
import com.liber8tech.tago.util.RuntimeConfig;
import com.polidea.rxandroidble2.RxBleClient;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import javax.inject.Singleton;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\nH\u0007J\u0012\u0010\u0012\u001a\u00020\u00132\b\b\u0001\u0010\u0014\u001a\u00020\u0010H\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, d2 = {"Lcom/liber8tech/tago/di/TagoModule;", "", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getCtx", "()Landroid/content/Context;", "imageSizeStore", "Lcom/liber8tech/tago/util/ImageSizeStore;", "provideAuthInterceptor", "Lokhttp3/Interceptor;", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "provideBleClient", "Lcom/polidea/rxandroidble2/RxBleClient;", "provideHttpClient", "Lokhttp3/OkHttpClient;", "headerInterceptor", "provideRetrofit", "Lretrofit2/Retrofit;", "client", "app_release"}, k = 1, mv = {1, 1, 13})
@Module
/* compiled from: TagoModule.kt */
public final class TagoModule {
    @NotNull
    private final Context ctx;

    public TagoModule(@NotNull Context context) {
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
    public final RxBleClient provideBleClient() {
        RxBleClient create = RxBleClient.create(this.ctx);
        Intrinsics.checkExpressionValueIsNotNull(create, "RxBleClient.create(ctx)");
        return create;
    }

    @Provides
    @Named("auth")
    @NotNull
    @Singleton
    public final OkHttpClient provideHttpClient(@Named("header") @NotNull Interceptor interceptor) {
        Intrinsics.checkParameterIsNotNull(interceptor, "headerInterceptor");
        OkHttpClient.Builder addInterceptor = new OkHttpClient.Builder().connectTimeout(60, TimeUnit.SECONDS).readTimeout(60, TimeUnit.SECONDS).writeTimeout(60, TimeUnit.SECONDS).addInterceptor(interceptor).addInterceptor(new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.NONE));
        if (Build.VERSION.SDK_INT < 22) {
            try {
                SSLContext instance = SSLContext.getInstance("TLSv1.2");
                instance.init(null, null, null);
                Intrinsics.checkExpressionValueIsNotNull(instance, "sc");
                SSLSocketFactory socketFactory = instance.getSocketFactory();
                Intrinsics.checkExpressionValueIsNotNull(socketFactory, "sc.socketFactory");
                addInterceptor.sslSocketFactory(new TLSCompatibilitySocketFactory(socketFactory));
            } catch (Exception e) {
                Timber.e("TLSv1.2 compatibility fix exception " + e, new Object[0]);
            }
        }
        OkHttpClient build = addInterceptor.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "clientBuilder.build()");
        return build;
    }

    @Provides
    @Singleton
    @NotNull
    public final Retrofit provideRetrofit(@Named("auth") @NotNull OkHttpClient okHttpClient) {
        Intrinsics.checkParameterIsNotNull(okHttpClient, "client");
        Retrofit build = new Retrofit.Builder().client(okHttpClient).baseUrl("https://api.liber8tech.com/").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "retrofit");
        return build;
    }

    @Provides
    @Named("header")
    @NotNull
    @Singleton
    public final Interceptor provideAuthInterceptor(@NotNull RuntimeConfig runtimeConfig) {
        Intrinsics.checkParameterIsNotNull(runtimeConfig, "runtimeConfig");
        TagoModule$provideAuthInterceptor$1 tagoModule$provideAuthInterceptor$1 = TagoModule$provideAuthInterceptor$1.INSTANCE;
        return new TagoModule$provideAuthInterceptor$2(runtimeConfig);
    }

    @Provides
    @Singleton
    @NotNull
    public final ImageSizeStore imageSizeStore() {
        return new ImageSizeStore();
    }
}
