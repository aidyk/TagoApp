package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ContactUsActivity_MembersInjector implements MembersInjector<ContactUsActivity> {
    private final Provider<AnalyticsService> analyticsProvider;

    public ContactUsActivity_MembersInjector(Provider<AnalyticsService> provider) {
        this.analyticsProvider = provider;
    }

    public static MembersInjector<ContactUsActivity> create(Provider<AnalyticsService> provider) {
        return new ContactUsActivity_MembersInjector(provider);
    }

    public void injectMembers(ContactUsActivity contactUsActivity) {
        injectAnalytics(contactUsActivity, this.analyticsProvider.get());
    }

    public static void injectAnalytics(ContactUsActivity contactUsActivity, AnalyticsService analyticsService) {
        contactUsActivity.analytics = analyticsService;
    }
}
