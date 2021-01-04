package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ResetActivity_MembersInjector implements MembersInjector<ResetActivity> {
    private final Provider<AnalyticsService> analyticsProvider;

    public ResetActivity_MembersInjector(Provider<AnalyticsService> provider) {
        this.analyticsProvider = provider;
    }

    public static MembersInjector<ResetActivity> create(Provider<AnalyticsService> provider) {
        return new ResetActivity_MembersInjector(provider);
    }

    public void injectMembers(ResetActivity resetActivity) {
        injectAnalytics(resetActivity, this.analyticsProvider.get());
    }

    public static void injectAnalytics(ResetActivity resetActivity, AnalyticsService analyticsService) {
        resetActivity.analytics = analyticsService;
    }
}
