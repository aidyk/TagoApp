package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.ProfileService;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ProfileActivity_MembersInjector implements MembersInjector<ProfileActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<ProfileService> profileServiceProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;

    public ProfileActivity_MembersInjector(Provider<ProfileService> provider, Provider<AnalyticsService> provider2, Provider<RuntimeConfig> provider3) {
        this.profileServiceProvider = provider;
        this.analyticsProvider = provider2;
        this.runtimeConfigProvider = provider3;
    }

    public static MembersInjector<ProfileActivity> create(Provider<ProfileService> provider, Provider<AnalyticsService> provider2, Provider<RuntimeConfig> provider3) {
        return new ProfileActivity_MembersInjector(provider, provider2, provider3);
    }

    public void injectMembers(ProfileActivity profileActivity) {
        injectProfileService(profileActivity, this.profileServiceProvider.get());
        injectAnalytics(profileActivity, this.analyticsProvider.get());
        injectRuntimeConfig(profileActivity, this.runtimeConfigProvider.get());
    }

    public static void injectProfileService(ProfileActivity profileActivity, ProfileService profileService) {
        profileActivity.profileService = profileService;
    }

    public static void injectAnalytics(ProfileActivity profileActivity, AnalyticsService analyticsService) {
        profileActivity.analytics = analyticsService;
    }

    public static void injectRuntimeConfig(ProfileActivity profileActivity, RuntimeConfig runtimeConfig) {
        profileActivity.runtimeConfig = runtimeConfig;
    }
}
