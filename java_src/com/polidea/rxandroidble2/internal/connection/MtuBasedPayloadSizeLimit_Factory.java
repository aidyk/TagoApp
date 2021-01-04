package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.RxBleConnection;

public final class MtuBasedPayloadSizeLimit_Factory implements Factory<MtuBasedPayloadSizeLimit> {
    private final Provider<Integer> gattWriteMtuOverheadProvider;
    private final Provider<RxBleConnection> rxBleConnectionProvider;

    public MtuBasedPayloadSizeLimit_Factory(Provider<RxBleConnection> provider, Provider<Integer> provider2) {
        this.rxBleConnectionProvider = provider;
        this.gattWriteMtuOverheadProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public MtuBasedPayloadSizeLimit get() {
        return new MtuBasedPayloadSizeLimit(this.rxBleConnectionProvider.get(), this.gattWriteMtuOverheadProvider.get().intValue());
    }

    public static MtuBasedPayloadSizeLimit_Factory create(Provider<RxBleConnection> provider, Provider<Integer> provider2) {
        return new MtuBasedPayloadSizeLimit_Factory(provider, provider2);
    }

    public static MtuBasedPayloadSizeLimit newMtuBasedPayloadSizeLimit(RxBleConnection rxBleConnection, int i) {
        return new MtuBasedPayloadSizeLimit(rxBleConnection, i);
    }
}
