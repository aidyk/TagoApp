package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.AuthService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class SignUpActivity_MembersInjector implements MembersInjector<SignUpActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<AuthService> authServiceProvider;

    public SignUpActivity_MembersInjector(Provider<AuthService> provider, Provider<AnalyticsService> provider2) {
        this.authServiceProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<SignUpActivity> create(Provider<AuthService> provider, Provider<AnalyticsService> provider2) {
        return new SignUpActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(SignUpActivity signUpActivity) {
        injectAuthService(signUpActivity, this.authServiceProvider.get());
        injectAnalytics(signUpActivity, this.analyticsProvider.get());
    }

    public static void injectAuthService(SignUpActivity signUpActivity, AuthService authService) {
        signUpActivity.authService = authService;
    }

    public static void injectAnalytics(SignUpActivity signUpActivity, AnalyticsService analyticsService) {
        signUpActivity.analytics = analyticsService;
    }
}
