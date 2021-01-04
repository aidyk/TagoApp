package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.SingleResponseOperation;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.util.ByteAssociationUtil;
import io.reactivex.Single;

public class CharacteristicReadOperation extends SingleResponseOperation<byte[]> {
    private final BluetoothGattCharacteristic bluetoothGattCharacteristic;

    CharacteristicReadOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, @Named("operation-timeout") TimeoutConfiguration timeoutConfiguration, BluetoothGattCharacteristic bluetoothGattCharacteristic2) {
        super(bluetoothGatt, rxBleGattCallback, BleGattOperationType.CHARACTERISTIC_READ, timeoutConfiguration);
        this.bluetoothGattCharacteristic = bluetoothGattCharacteristic2;
    }

    /* JADX DEBUG: Type inference failed for r2v4. Raw type applied. Possible types: io.reactivex.Single<R>, io.reactivex.Single<byte[]> */
    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public Single<byte[]> getCallback(RxBleGattCallback rxBleGattCallback) {
        return (Single<R>) rxBleGattCallback.getOnCharacteristicRead().filter(ByteAssociationUtil.characteristicUUIDPredicate(this.bluetoothGattCharacteristic.getUuid())).firstOrError().map(ByteAssociationUtil.getBytesFromAssociation());
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public boolean startOperation(BluetoothGatt bluetoothGatt) {
        return bluetoothGatt.readCharacteristic(this.bluetoothGattCharacteristic);
    }
}
