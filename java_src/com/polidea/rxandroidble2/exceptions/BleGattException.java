package com.polidea.rxandroidble2.exceptions;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothGatt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.polidea.rxandroidble2.utils.GattStatusParser;

public class BleGattException extends BleException {
    public static final int UNKNOWN_STATUS = -1;
    private final BleGattOperationType bleGattOperationType;
    @Nullable
    private final BluetoothGatt gatt;
    private final int status;

    @Deprecated
    public BleGattException(int i, BleGattOperationType bleGattOperationType2) {
        super(createMessage(null, i, bleGattOperationType2));
        this.gatt = null;
        this.status = i;
        this.bleGattOperationType = bleGattOperationType2;
    }

    public BleGattException(@NonNull BluetoothGatt bluetoothGatt, int i, BleGattOperationType bleGattOperationType2) {
        super(createMessage(bluetoothGatt, i, bleGattOperationType2));
        this.gatt = bluetoothGatt;
        this.status = i;
        this.bleGattOperationType = bleGattOperationType2;
    }

    public BleGattException(BluetoothGatt bluetoothGatt, BleGattOperationType bleGattOperationType2) {
        this(bluetoothGatt, -1, bleGattOperationType2);
    }

    public String getMacAddress() {
        return getMacAddress(this.gatt);
    }

    public BleGattOperationType getBleGattOperationType() {
        return this.bleGattOperationType;
    }

    public int getStatus() {
        return this.status;
    }

    private static String getMacAddress(@Nullable BluetoothGatt bluetoothGatt) {
        if (bluetoothGatt == null || bluetoothGatt.getDevice() == null) {
            return null;
        }
        return bluetoothGatt.getDevice().getAddress();
    }

    @SuppressLint({"DefaultLocale"})
    private static String createMessage(@Nullable BluetoothGatt bluetoothGatt, int i, BleGattOperationType bleGattOperationType2) {
        if (i == -1) {
            return String.format("GATT exception from MAC address %s, with type %s", getMacAddress(bluetoothGatt), bleGattOperationType2);
        }
        return String.format("GATT exception from MAC address %s, status %d (%s), type %s. (Look up status 0x%02x here %s)", getMacAddress(bluetoothGatt), Integer.valueOf(i), GattStatusParser.getGattCallbackStatusDescription(i), bleGattOperationType2, Integer.valueOf(i), "https://android.googlesource.com/platform/external/bluetooth/bluedroid/+/android-5.1.0_r1/stack/include/gatt_api.h");
    }
}
