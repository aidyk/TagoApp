package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.AuthService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ForgetPasswordActivity_MembersInjector implements MembersInjector<ForgetPasswordActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<AuthService> authServiceProvider;

    public ForgetPasswordActivity_MembersInjector(Provider<AuthService> provider, Provider<AnalyticsService> provider2) {
        this.authServiceProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<ForgetPasswordActivity> create(Provider<AuthService> provider, Provider<AnalyticsService> provider2) {
        return new ForgetPasswordActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(ForgetPasswordActivity forgetPasswordActivity) {
        injectAuthService(forgetPasswordActivity, this.authServiceProvider.get());
        injectAnalytics(forgetPasswordActivity, this.analyticsProvider.get());
    }

    public static void injectAuthService(ForgetPasswordActivity forgetPasswordActivity, AuthService authService) {
        forgetPasswordActivity.authService = authService;
    }

    public static void injectAnalytics(ForgetPasswordActivity forgetPasswordActivity, AnalyticsService analyticsService) {
        forgetPasswordActivity.analytics = analyticsService;
    }
}
