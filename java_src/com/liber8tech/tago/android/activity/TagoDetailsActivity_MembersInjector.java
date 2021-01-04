package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.TagoService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class TagoDetailsActivity_MembersInjector implements MembersInjector<TagoDetailsActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public TagoDetailsActivity_MembersInjector(Provider<TagoService> provider, Provider<AnalyticsService> provider2) {
        this.tagoServiceProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<TagoDetailsActivity> create(Provider<TagoService> provider, Provider<AnalyticsService> provider2) {
        return new TagoDetailsActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(TagoDetailsActivity tagoDetailsActivity) {
        injectTagoService(tagoDetailsActivity, this.tagoServiceProvider.get());
        injectAnalytics(tagoDetailsActivity, this.analyticsProvider.get());
    }

    public static void injectTagoService(TagoDetailsActivity tagoDetailsActivity, TagoService tagoService) {
        tagoDetailsActivity.tagoService = tagoService;
    }

    public static void injectAnalytics(TagoDetailsActivity tagoDetailsActivity, AnalyticsService analyticsService) {
        tagoDetailsActivity.analytics = analyticsService;
    }
}
