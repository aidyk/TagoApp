package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.FirmwareService;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.ProfileService;
import com.liber8tech.tago.service.StoreService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class MainActivity_MembersInjector implements MembersInjector<MainActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<FirmwareService> firmwareServiceProvider;
    private final Provider<IAPService> iapServiceProvider;
    private final Provider<ImageEditorService> imageEditorServiceProvider;
    private final Provider<LocationService> locationServiceProvider;
    private final Provider<ProfileService> profileServiceProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;
    private final Provider<StoreService> storeServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public MainActivity_MembersInjector(Provider<RuntimeConfig> provider, Provider<LocationService> provider2, Provider<ImageEditorService> provider3, Provider<AnalyticsService> provider4, Provider<FirmwareService> provider5, Provider<StoreService> provider6, Provider<IAPService> provider7, Provider<ProfileService> provider8, Provider<TagoService> provider9) {
        this.runtimeConfigProvider = provider;
        this.locationServiceProvider = provider2;
        this.imageEditorServiceProvider = provider3;
        this.analyticsProvider = provider4;
        this.firmwareServiceProvider = provider5;
        this.storeServiceProvider = provider6;
        this.iapServiceProvider = provider7;
        this.profileServiceProvider = provider8;
        this.tagoServiceProvider = provider9;
    }

    public static MembersInjector<MainActivity> create(Provider<RuntimeConfig> provider, Provider<LocationService> provider2, Provider<ImageEditorService> provider3, Provider<AnalyticsService> provider4, Provider<FirmwareService> provider5, Provider<StoreService> provider6, Provider<IAPService> provider7, Provider<ProfileService> provider8, Provider<TagoService> provider9) {
        return new MainActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public void injectMembers(MainActivity mainActivity) {
        injectRuntimeConfig(mainActivity, this.runtimeConfigProvider.get());
        injectLocationService(mainActivity, this.locationServiceProvider.get());
        injectImageEditorService(mainActivity, this.imageEditorServiceProvider.get());
        injectAnalytics(mainActivity, this.analyticsProvider.get());
        injectFirmwareService(mainActivity, this.firmwareServiceProvider.get());
        injectStoreService(mainActivity, this.storeServiceProvider.get());
        injectIapService(mainActivity, this.iapServiceProvider.get());
        injectProfileService(mainActivity, this.profileServiceProvider.get());
        injectTagoService(mainActivity, this.tagoServiceProvider.get());
    }

    public static void injectRuntimeConfig(MainActivity mainActivity, RuntimeConfig runtimeConfig) {
        mainActivity.runtimeConfig = runtimeConfig;
    }

    public static void injectLocationService(MainActivity mainActivity, LocationService locationService) {
        mainActivity.locationService = locationService;
    }

    public static void injectImageEditorService(MainActivity mainActivity, ImageEditorService imageEditorService) {
        mainActivity.imageEditorService = imageEditorService;
    }

    public static void injectAnalytics(MainActivity mainActivity, AnalyticsService analyticsService) {
        mainActivity.analytics = analyticsService;
    }

    public static void injectFirmwareService(MainActivity mainActivity, FirmwareService firmwareService) {
        mainActivity.firmwareService = firmwareService;
    }

    public static void injectStoreService(MainActivity mainActivity, StoreService storeService) {
        mainActivity.storeService = storeService;
    }

    public static void injectIapService(MainActivity mainActivity, IAPService iAPService) {
        mainActivity.iapService = iAPService;
    }

    public static void injectProfileService(MainActivity mainActivity, ProfileService profileService) {
        mainActivity.profileService = profileService;
    }

    public static void injectTagoService(MainActivity mainActivity, TagoService tagoService) {
        mainActivity.tagoService = tagoService;
    }
}
