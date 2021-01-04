package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.BluetoothService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ResetSyncActivity_MembersInjector implements MembersInjector<ResetSyncActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<BluetoothService> bluetoothServiceProvider;

    public ResetSyncActivity_MembersInjector(Provider<BluetoothService> provider, Provider<AnalyticsService> provider2) {
        this.bluetoothServiceProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<ResetSyncActivity> create(Provider<BluetoothService> provider, Provider<AnalyticsService> provider2) {
        return new ResetSyncActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(ResetSyncActivity resetSyncActivity) {
        injectBluetoothService(resetSyncActivity, this.bluetoothServiceProvider.get());
        injectAnalytics(resetSyncActivity, this.analyticsProvider.get());
    }

    public static void injectBluetoothService(ResetSyncActivity resetSyncActivity, BluetoothService bluetoothService) {
        resetSyncActivity.bluetoothService = bluetoothService;
    }

    public static void injectAnalytics(ResetSyncActivity resetSyncActivity, AnalyticsService analyticsService) {
        resetSyncActivity.analytics = analyticsService;
    }
}
