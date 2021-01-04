package com.liber8tech.tago.di;

import android.content.Context;
import com.squareup.picasso.Picasso;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;

public final class CoreModule_PicassoFactory implements Factory<Picasso> {
    private final Provider<OkHttpClient> clientProvider;
    private final Provider<Context> ctxProvider;
    private final CoreModule module;

    public CoreModule_PicassoFactory(CoreModule coreModule, Provider<Context> provider, Provider<OkHttpClient> provider2) {
        this.module = coreModule;
        this.ctxProvider = provider;
        this.clientProvider = provider2;
    }

    @Override // javax.inject.Provider
    public Picasso get() {
        return (Picasso) Preconditions.checkNotNull(this.module.picasso(this.ctxProvider.get(), this.clientProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_PicassoFactory create(CoreModule coreModule, Provider<Context> provider, Provider<OkHttpClient> provider2) {
        return new CoreModule_PicassoFactory(coreModule, provider, provider2);
    }

    public static Picasso proxyPicasso(CoreModule coreModule, Context context, OkHttpClient okHttpClient) {
        return (Picasso) Preconditions.checkNotNull(coreModule.picasso(context, okHttpClient), "Cannot return null from a non-@Nullable @Provides method");
    }
}
