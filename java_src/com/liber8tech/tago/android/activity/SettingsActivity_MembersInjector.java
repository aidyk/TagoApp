package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.StoreService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class SettingsActivity_MembersInjector implements MembersInjector<SettingsActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<IAPService> iapServiceProvider;
    private final Provider<ImageEditorService> imageEditorServiceProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;
    private final Provider<StoreService> storeServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public SettingsActivity_MembersInjector(Provider<RuntimeConfig> provider, Provider<TagoService> provider2, Provider<ImageEditorService> provider3, Provider<StoreService> provider4, Provider<IAPService> provider5, Provider<AnalyticsService> provider6) {
        this.runtimeConfigProvider = provider;
        this.tagoServiceProvider = provider2;
        this.imageEditorServiceProvider = provider3;
        this.storeServiceProvider = provider4;
        this.iapServiceProvider = provider5;
        this.analyticsProvider = provider6;
    }

    public static MembersInjector<SettingsActivity> create(Provider<RuntimeConfig> provider, Provider<TagoService> provider2, Provider<ImageEditorService> provider3, Provider<StoreService> provider4, Provider<IAPService> provider5, Provider<AnalyticsService> provider6) {
        return new SettingsActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public void injectMembers(SettingsActivity settingsActivity) {
        injectRuntimeConfig(settingsActivity, this.runtimeConfigProvider.get());
        injectTagoService(settingsActivity, this.tagoServiceProvider.get());
        injectImageEditorService(settingsActivity, this.imageEditorServiceProvider.get());
        injectStoreService(settingsActivity, this.storeServiceProvider.get());
        injectIapService(settingsActivity, this.iapServiceProvider.get());
        injectAnalytics(settingsActivity, this.analyticsProvider.get());
    }

    public static void injectRuntimeConfig(SettingsActivity settingsActivity, RuntimeConfig runtimeConfig) {
        settingsActivity.runtimeConfig = runtimeConfig;
    }

    public static void injectTagoService(SettingsActivity settingsActivity, TagoService tagoService) {
        settingsActivity.tagoService = tagoService;
    }

    public static void injectImageEditorService(SettingsActivity settingsActivity, ImageEditorService imageEditorService) {
        settingsActivity.imageEditorService = imageEditorService;
    }

    public static void injectStoreService(SettingsActivity settingsActivity, StoreService storeService) {
        settingsActivity.storeService = storeService;
    }

    public static void injectIapService(SettingsActivity settingsActivity, IAPService iAPService) {
        settingsActivity.iapService = iAPService;
    }

    public static void injectAnalytics(SettingsActivity settingsActivity, AnalyticsService analyticsService) {
        settingsActivity.analytics = analyticsService;
    }
}
