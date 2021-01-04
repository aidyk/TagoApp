package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.AuthService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ChangePasswordActivity_MembersInjector implements MembersInjector<ChangePasswordActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<AuthService> authServiceProvider;

    public ChangePasswordActivity_MembersInjector(Provider<AuthService> provider, Provider<AnalyticsService> provider2) {
        this.authServiceProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<ChangePasswordActivity> create(Provider<AuthService> provider, Provider<AnalyticsService> provider2) {
        return new ChangePasswordActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(ChangePasswordActivity changePasswordActivity) {
        injectAuthService(changePasswordActivity, this.authServiceProvider.get());
        injectAnalytics(changePasswordActivity, this.analyticsProvider.get());
    }

    public static void injectAuthService(ChangePasswordActivity changePasswordActivity, AuthService authService) {
        changePasswordActivity.authService = authService;
    }

    public static void injectAnalytics(ChangePasswordActivity changePasswordActivity, AnalyticsService analyticsService) {
        changePasswordActivity.analytics = analyticsService;
    }
}
