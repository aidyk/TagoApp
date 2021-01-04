package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class IntroActivity_MembersInjector implements MembersInjector<IntroActivity> {
    private final Provider<AuthService> authServiceProvider;
    private final Provider<RuntimeConfig> runTimeConfigProvider;

    public IntroActivity_MembersInjector(Provider<RuntimeConfig> provider, Provider<AuthService> provider2) {
        this.runTimeConfigProvider = provider;
        this.authServiceProvider = provider2;
    }

    public static MembersInjector<IntroActivity> create(Provider<RuntimeConfig> provider, Provider<AuthService> provider2) {
        return new IntroActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(IntroActivity introActivity) {
        injectRunTimeConfig(introActivity, this.runTimeConfigProvider.get());
        injectAuthService(introActivity, this.authServiceProvider.get());
    }

    public static void injectRunTimeConfig(IntroActivity introActivity, RuntimeConfig runtimeConfig) {
        introActivity.runTimeConfig = runtimeConfig;
    }

    public static void injectAuthService(IntroActivity introActivity, AuthService authService) {
        introActivity.authService = authService;
    }
}
