package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.TagoService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ResetChooseDeviceActivity_MembersInjector implements MembersInjector<ResetChooseDeviceActivity> {
    private final Provider<BluetoothService> bluetoothServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public ResetChooseDeviceActivity_MembersInjector(Provider<TagoService> provider, Provider<BluetoothService> provider2) {
        this.tagoServiceProvider = provider;
        this.bluetoothServiceProvider = provider2;
    }

    public static MembersInjector<ResetChooseDeviceActivity> create(Provider<TagoService> provider, Provider<BluetoothService> provider2) {
        return new ResetChooseDeviceActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(ResetChooseDeviceActivity resetChooseDeviceActivity) {
        injectTagoService(resetChooseDeviceActivity, this.tagoServiceProvider.get());
        injectBluetoothService(resetChooseDeviceActivity, this.bluetoothServiceProvider.get());
    }

    public static void injectTagoService(ResetChooseDeviceActivity resetChooseDeviceActivity, TagoService tagoService) {
        resetChooseDeviceActivity.tagoService = tagoService;
    }

    public static void injectBluetoothService(ResetChooseDeviceActivity resetChooseDeviceActivity, BluetoothService bluetoothService) {
        resetChooseDeviceActivity.bluetoothService = bluetoothService;
    }
}
