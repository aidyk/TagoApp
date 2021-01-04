package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class PackActivity_MembersInjector implements MembersInjector<PackActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<IAPService> iapServiceProvider;
    private final Provider<ImageEditorService> imageServiceProvider;

    public PackActivity_MembersInjector(Provider<IAPService> provider, Provider<ImageEditorService> provider2, Provider<AnalyticsService> provider3) {
        this.iapServiceProvider = provider;
        this.imageServiceProvider = provider2;
        this.analyticsProvider = provider3;
    }

    public static MembersInjector<PackActivity> create(Provider<IAPService> provider, Provider<ImageEditorService> provider2, Provider<AnalyticsService> provider3) {
        return new PackActivity_MembersInjector(provider, provider2, provider3);
    }

    public void injectMembers(PackActivity packActivity) {
        injectIapService(packActivity, this.iapServiceProvider.get());
        injectImageService(packActivity, this.imageServiceProvider.get());
        injectAnalytics(packActivity, this.analyticsProvider.get());
    }

    public static void injectIapService(PackActivity packActivity, IAPService iAPService) {
        packActivity.iapService = iAPService;
    }

    public static void injectImageService(PackActivity packActivity, ImageEditorService imageEditorService) {
        packActivity.imageService = imageEditorService;
    }

    public static void injectAnalytics(PackActivity packActivity, AnalyticsService analyticsService) {
        packActivity.analytics = analyticsService;
    }
}
