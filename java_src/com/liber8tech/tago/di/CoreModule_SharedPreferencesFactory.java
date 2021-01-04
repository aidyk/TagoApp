package com.liber8tech.tago.di;

import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class CoreModule_SharedPreferencesFactory implements Factory<SharedPreferences> {
    private final CoreModule module;

    public CoreModule_SharedPreferencesFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public SharedPreferences get() {
        return (SharedPreferences) Preconditions.checkNotNull(this.module.sharedPreferences(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_SharedPreferencesFactory create(CoreModule coreModule) {
        return new CoreModule_SharedPreferencesFactory(coreModule);
    }

    public static SharedPreferences proxySharedPreferences(CoreModule coreModule) {
        return (SharedPreferences) Preconditions.checkNotNull(coreModule.sharedPreferences(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
