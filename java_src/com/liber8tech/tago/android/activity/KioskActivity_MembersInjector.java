package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.TagoService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class KioskActivity_MembersInjector implements MembersInjector<KioskActivity> {
    private final Provider<BluetoothService> bluetoothServiceProvider;
    private final Provider<LocationService> locationServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public KioskActivity_MembersInjector(Provider<LocationService> provider, Provider<TagoService> provider2, Provider<BluetoothService> provider3) {
        this.locationServiceProvider = provider;
        this.tagoServiceProvider = provider2;
        this.bluetoothServiceProvider = provider3;
    }

    public static MembersInjector<KioskActivity> create(Provider<LocationService> provider, Provider<TagoService> provider2, Provider<BluetoothService> provider3) {
        return new KioskActivity_MembersInjector(provider, provider2, provider3);
    }

    public void injectMembers(KioskActivity kioskActivity) {
        injectLocationService(kioskActivity, this.locationServiceProvider.get());
        injectTagoService(kioskActivity, this.tagoServiceProvider.get());
        injectBluetoothService(kioskActivity, this.bluetoothServiceProvider.get());
    }

    public static void injectLocationService(KioskActivity kioskActivity, LocationService locationService) {
        kioskActivity.locationService = locationService;
    }

    public static void injectTagoService(KioskActivity kioskActivity, TagoService tagoService) {
        kioskActivity.tagoService = tagoService;
    }

    public static void injectBluetoothService(KioskActivity kioskActivity, BluetoothService bluetoothService) {
        kioskActivity.bluetoothService = bluetoothService;
    }
}
