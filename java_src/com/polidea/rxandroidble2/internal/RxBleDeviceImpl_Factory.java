package com.polidea.rxandroidble2.internal;

import android.bluetooth.BluetoothDevice;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.jakewharton.rxrelay2.BehaviorRelay;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.internal.connection.Connector;

public final class RxBleDeviceImpl_Factory implements Factory<RxBleDeviceImpl> {
    private final Provider<BluetoothDevice> bluetoothDeviceProvider;
    private final Provider<BehaviorRelay<RxBleConnection.RxBleConnectionState>> connectionStateRelayProvider;
    private final Provider<Connector> connectorProvider;

    public RxBleDeviceImpl_Factory(Provider<BluetoothDevice> provider, Provider<Connector> provider2, Provider<BehaviorRelay<RxBleConnection.RxBleConnectionState>> provider3) {
        this.bluetoothDeviceProvider = provider;
        this.connectorProvider = provider2;
        this.connectionStateRelayProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public RxBleDeviceImpl get() {
        return new RxBleDeviceImpl(this.bluetoothDeviceProvider.get(), this.connectorProvider.get(), this.connectionStateRelayProvider.get());
    }

    public static RxBleDeviceImpl_Factory create(Provider<BluetoothDevice> provider, Provider<Connector> provider2, Provider<BehaviorRelay<RxBleConnection.RxBleConnectionState>> provider3) {
        return new RxBleDeviceImpl_Factory(provider, provider2, provider3);
    }

    public static RxBleDeviceImpl newRxBleDeviceImpl(BluetoothDevice bluetoothDevice, Connector connector, BehaviorRelay<RxBleConnection.RxBleConnectionState> behaviorRelay) {
        return new RxBleDeviceImpl(bluetoothDevice, connector, behaviorRelay);
    }
}
