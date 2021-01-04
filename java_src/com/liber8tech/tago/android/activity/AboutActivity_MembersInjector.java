package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class AboutActivity_MembersInjector implements MembersInjector<AboutActivity> {
    private final Provider<AnalyticsService> analyticsProvider;

    public AboutActivity_MembersInjector(Provider<AnalyticsService> provider) {
        this.analyticsProvider = provider;
    }

    public static MembersInjector<AboutActivity> create(Provider<AnalyticsService> provider) {
        return new AboutActivity_MembersInjector(provider);
    }

    public void injectMembers(AboutActivity aboutActivity) {
        injectAnalytics(aboutActivity, this.analyticsProvider.get());
    }

    public static void injectAnalytics(AboutActivity aboutActivity, AnalyticsService analyticsService) {
        aboutActivity.analytics = analyticsService;
    }
}
