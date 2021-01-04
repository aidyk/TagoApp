package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class SelectTagoActivity_MembersInjector implements MembersInjector<SelectTagoActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<BluetoothService> bluetoothServiceProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public SelectTagoActivity_MembersInjector(Provider<BluetoothService> provider, Provider<TagoService> provider2, Provider<RuntimeConfig> provider3, Provider<AnalyticsService> provider4) {
        this.bluetoothServiceProvider = provider;
        this.tagoServiceProvider = provider2;
        this.runtimeConfigProvider = provider3;
        this.analyticsProvider = provider4;
    }

    public static MembersInjector<SelectTagoActivity> create(Provider<BluetoothService> provider, Provider<TagoService> provider2, Provider<RuntimeConfig> provider3, Provider<AnalyticsService> provider4) {
        return new SelectTagoActivity_MembersInjector(provider, provider2, provider3, provider4);
    }

    public void injectMembers(SelectTagoActivity selectTagoActivity) {
        injectBluetoothService(selectTagoActivity, this.bluetoothServiceProvider.get());
        injectTagoService(selectTagoActivity, this.tagoServiceProvider.get());
        injectRuntimeConfig(selectTagoActivity, this.runtimeConfigProvider.get());
        injectAnalytics(selectTagoActivity, this.analyticsProvider.get());
    }

    public static void injectBluetoothService(SelectTagoActivity selectTagoActivity, BluetoothService bluetoothService) {
        selectTagoActivity.bluetoothService = bluetoothService;
    }

    public static void injectTagoService(SelectTagoActivity selectTagoActivity, TagoService tagoService) {
        selectTagoActivity.tagoService = tagoService;
    }

    public static void injectRuntimeConfig(SelectTagoActivity selectTagoActivity, RuntimeConfig runtimeConfig) {
        selectTagoActivity.runtimeConfig = runtimeConfig;
    }

    public static void injectAnalytics(SelectTagoActivity selectTagoActivity, AnalyticsService analyticsService) {
        selectTagoActivity.analytics = analyticsService;
    }
}
