package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.service.TagoService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class SignInActivity_MembersInjector implements MembersInjector<SignInActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<AuthService> authServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public SignInActivity_MembersInjector(Provider<AuthService> provider, Provider<TagoService> provider2, Provider<AnalyticsService> provider3) {
        this.authServiceProvider = provider;
        this.tagoServiceProvider = provider2;
        this.analyticsProvider = provider3;
    }

    public static MembersInjector<SignInActivity> create(Provider<AuthService> provider, Provider<TagoService> provider2, Provider<AnalyticsService> provider3) {
        return new SignInActivity_MembersInjector(provider, provider2, provider3);
    }

    public void injectMembers(SignInActivity signInActivity) {
        injectAuthService(signInActivity, this.authServiceProvider.get());
        injectTagoService(signInActivity, this.tagoServiceProvider.get());
        injectAnalytics(signInActivity, this.analyticsProvider.get());
    }

    public static void injectAuthService(SignInActivity signInActivity, AuthService authService) {
        signInActivity.authService = authService;
    }

    public static void injectTagoService(SignInActivity signInActivity, TagoService tagoService) {
        signInActivity.tagoService = tagoService;
    }

    public static void injectAnalytics(SignInActivity signInActivity, AnalyticsService analyticsService) {
        signInActivity.analytics = analyticsService;
    }
}
