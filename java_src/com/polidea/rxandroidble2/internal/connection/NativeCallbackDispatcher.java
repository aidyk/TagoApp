package com.polidea.rxandroidble2.internal.connection;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import bleshadow.javax.inject.Inject;

/* access modifiers changed from: package-private */
public class NativeCallbackDispatcher {
    private BluetoothGattCallback nativeCallback;

    @Inject
    NativeCallbackDispatcher() {
    }

    public void notifyNativeChangedCallback(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
        }
    }

    public void notifyNativeConnectionStateCallback(BluetoothGatt bluetoothGatt, int i, int i2) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onConnectionStateChange(bluetoothGatt, i, i2);
        }
    }

    public void notifyNativeDescriptorReadCallback(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onDescriptorRead(bluetoothGatt, bluetoothGattDescriptor, i);
        }
    }

    public void notifyNativeDescriptorWriteCallback(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        }
    }

    @TargetApi(21)
    public void notifyNativeMtuChangedCallback(BluetoothGatt bluetoothGatt, int i, int i2) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onMtuChanged(bluetoothGatt, i, i2);
        }
    }

    public void notifyNativeReadRssiCallback(BluetoothGatt bluetoothGatt, int i, int i2) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onReadRemoteRssi(bluetoothGatt, i, i2);
        }
    }

    public void notifyNativeReliableWriteCallback(BluetoothGatt bluetoothGatt, int i) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onReliableWriteCompleted(bluetoothGatt, i);
        }
    }

    public void notifyNativeServicesDiscoveredCallback(BluetoothGatt bluetoothGatt, int i) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onServicesDiscovered(bluetoothGatt, i);
        }
    }

    public void notifyNativeWriteCallback(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
        }
    }

    /* access modifiers changed from: package-private */
    public void setNativeCallback(BluetoothGattCallback bluetoothGattCallback) {
        this.nativeCallback = bluetoothGattCallback;
    }

    /* access modifiers changed from: package-private */
    public void notifyNativeReadCallback(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        if (this.nativeCallback != null) {
            this.nativeCallback.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
        }
    }
}
