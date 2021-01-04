package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.FirmwareService;
import com.liber8tech.tago.service.TagoService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class SyncActivity_MembersInjector implements MembersInjector<SyncActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<BluetoothService> bluetoothServiceProvider;
    private final Provider<FirmwareService> firmwareServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public SyncActivity_MembersInjector(Provider<BluetoothService> provider, Provider<TagoService> provider2, Provider<FirmwareService> provider3, Provider<AnalyticsService> provider4) {
        this.bluetoothServiceProvider = provider;
        this.tagoServiceProvider = provider2;
        this.firmwareServiceProvider = provider3;
        this.analyticsProvider = provider4;
    }

    public static MembersInjector<SyncActivity> create(Provider<BluetoothService> provider, Provider<TagoService> provider2, Provider<FirmwareService> provider3, Provider<AnalyticsService> provider4) {
        return new SyncActivity_MembersInjector(provider, provider2, provider3, provider4);
    }

    public void injectMembers(SyncActivity syncActivity) {
        injectBluetoothService(syncActivity, this.bluetoothServiceProvider.get());
        injectTagoService(syncActivity, this.tagoServiceProvider.get());
        injectFirmwareService(syncActivity, this.firmwareServiceProvider.get());
        injectAnalytics(syncActivity, this.analyticsProvider.get());
    }

    public static void injectBluetoothService(SyncActivity syncActivity, BluetoothService bluetoothService) {
        syncActivity.bluetoothService = bluetoothService;
    }

    public static void injectTagoService(SyncActivity syncActivity, TagoService tagoService) {
        syncActivity.tagoService = tagoService;
    }

    public static void injectFirmwareService(SyncActivity syncActivity, FirmwareService firmwareService) {
        syncActivity.firmwareService = firmwareService;
    }

    public static void injectAnalytics(SyncActivity syncActivity, AnalyticsService analyticsService) {
        syncActivity.analytics = analyticsService;
    }
}
