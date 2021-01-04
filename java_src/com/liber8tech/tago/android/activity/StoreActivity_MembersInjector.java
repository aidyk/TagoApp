package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.StoreService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class StoreActivity_MembersInjector implements MembersInjector<StoreActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<IAPService> iapServiceProvider;
    private final Provider<ImageEditorService> imageServiceProvider;
    private final Provider<StoreService> storeServiceProvider;

    public StoreActivity_MembersInjector(Provider<StoreService> provider, Provider<IAPService> provider2, Provider<ImageEditorService> provider3, Provider<AnalyticsService> provider4) {
        this.storeServiceProvider = provider;
        this.iapServiceProvider = provider2;
        this.imageServiceProvider = provider3;
        this.analyticsProvider = provider4;
    }

    public static MembersInjector<StoreActivity> create(Provider<StoreService> provider, Provider<IAPService> provider2, Provider<ImageEditorService> provider3, Provider<AnalyticsService> provider4) {
        return new StoreActivity_MembersInjector(provider, provider2, provider3, provider4);
    }

    public void injectMembers(StoreActivity storeActivity) {
        injectStoreService(storeActivity, this.storeServiceProvider.get());
        injectIapService(storeActivity, this.iapServiceProvider.get());
        injectImageService(storeActivity, this.imageServiceProvider.get());
        injectAnalytics(storeActivity, this.analyticsProvider.get());
    }

    public static void injectStoreService(StoreActivity storeActivity, StoreService storeService) {
        storeActivity.storeService = storeService;
    }

    public static void injectIapService(StoreActivity storeActivity, IAPService iAPService) {
        storeActivity.iapService = iAPService;
    }

    public static void injectImageService(StoreActivity storeActivity, ImageEditorService imageEditorService) {
        storeActivity.imageService = imageEditorService;
    }

    public static void injectAnalytics(StoreActivity storeActivity, AnalyticsService analyticsService) {
        storeActivity.analytics = analyticsService;
    }
}
