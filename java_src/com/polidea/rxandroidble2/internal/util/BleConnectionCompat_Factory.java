package com.polidea.rxandroidble2.internal.util;

import android.content.Context;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class BleConnectionCompat_Factory implements Factory<BleConnectionCompat> {
    private final Provider<Context> contextProvider;

    public BleConnectionCompat_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public BleConnectionCompat get() {
        return new BleConnectionCompat(this.contextProvider.get());
    }

    public static BleConnectionCompat_Factory create(Provider<Context> provider) {
        return new BleConnectionCompat_Factory(provider);
    }
}
