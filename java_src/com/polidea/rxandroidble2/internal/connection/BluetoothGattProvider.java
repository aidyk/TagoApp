package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import java.util.concurrent.atomic.AtomicReference;

@ConnectionScope
public class BluetoothGattProvider {
    private final AtomicReference<BluetoothGatt> reference = new AtomicReference<>();

    @Inject
    BluetoothGattProvider() {
    }

    public BluetoothGatt getBluetoothGatt() {
        return this.reference.get();
    }

    public void updateBluetoothGatt(@NonNull BluetoothGatt bluetoothGatt) {
        this.reference.compareAndSet(null, bluetoothGatt);
    }
}
