package com.liber8tech.tago.android;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class TagoApplication_MembersInjector implements MembersInjector<TagoApplication> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;

    public TagoApplication_MembersInjector(Provider<RuntimeConfig> provider, Provider<AnalyticsService> provider2) {
        this.runtimeConfigProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<TagoApplication> create(Provider<RuntimeConfig> provider, Provider<AnalyticsService> provider2) {
        return new TagoApplication_MembersInjector(provider, provider2);
    }

    public void injectMembers(TagoApplication tagoApplication) {
        injectRuntimeConfig(tagoApplication, this.runtimeConfigProvider.get());
        injectAnalytics(tagoApplication, this.analyticsProvider.get());
    }

    public static void injectRuntimeConfig(TagoApplication tagoApplication, RuntimeConfig runtimeConfig) {
        tagoApplication.runtimeConfig = runtimeConfig;
    }

    public static void injectAnalytics(TagoApplication tagoApplication, AnalyticsService analyticsService) {
        tagoApplication.analytics = analyticsService;
    }
}
