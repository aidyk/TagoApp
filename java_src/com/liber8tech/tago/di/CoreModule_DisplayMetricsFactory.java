package com.liber8tech.tago.di;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

public final class CoreModule_DisplayMetricsFactory implements Factory<DisplayMetrics> {
    private final CoreModule module;
    private final Provider<Resources> resProvider;

    public CoreModule_DisplayMetricsFactory(CoreModule coreModule, Provider<Resources> provider) {
        this.module = coreModule;
        this.resProvider = provider;
    }

    @Override // javax.inject.Provider
    public DisplayMetrics get() {
        return (DisplayMetrics) Preconditions.checkNotNull(this.module.displayMetrics(this.resProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_DisplayMetricsFactory create(CoreModule coreModule, Provider<Resources> provider) {
        return new CoreModule_DisplayMetricsFactory(coreModule, provider);
    }

    public static DisplayMetrics proxyDisplayMetrics(CoreModule coreModule, Resources resources) {
        return (DisplayMetrics) Preconditions.checkNotNull(coreModule.displayMetrics(resources), "Cannot return null from a non-@Nullable @Provides method");
    }
}
