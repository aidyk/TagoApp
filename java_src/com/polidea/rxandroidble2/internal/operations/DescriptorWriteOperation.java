package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.SingleResponseOperation;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.util.ByteAssociationUtil;
import io.reactivex.Single;

public class DescriptorWriteOperation extends SingleResponseOperation<byte[]> {
    private final int bluetoothGattCharacteristicDefaultWriteType;
    private BluetoothGattDescriptor bluetoothGattDescriptor;
    private byte[] data;

    DescriptorWriteOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, @Named("operation-timeout") TimeoutConfiguration timeoutConfiguration, int i, BluetoothGattDescriptor bluetoothGattDescriptor2, byte[] bArr) {
        super(bluetoothGatt, rxBleGattCallback, BleGattOperationType.DESCRIPTOR_WRITE, timeoutConfiguration);
        this.bluetoothGattCharacteristicDefaultWriteType = i;
        this.bluetoothGattDescriptor = bluetoothGattDescriptor2;
        this.data = bArr;
    }

    /* JADX DEBUG: Type inference failed for r2v4. Raw type applied. Possible types: io.reactivex.Single<R>, io.reactivex.Single<byte[]> */
    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public Single<byte[]> getCallback(RxBleGattCallback rxBleGattCallback) {
        return (Single<R>) rxBleGattCallback.getOnDescriptorWrite().filter(ByteAssociationUtil.descriptorPredicate(this.bluetoothGattDescriptor)).firstOrError().map(ByteAssociationUtil.getBytesFromAssociation());
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public boolean startOperation(BluetoothGatt bluetoothGatt) {
        this.bluetoothGattDescriptor.setValue(this.data);
        BluetoothGattCharacteristic characteristic = this.bluetoothGattDescriptor.getCharacteristic();
        int writeType = characteristic.getWriteType();
        characteristic.setWriteType(this.bluetoothGattCharacteristicDefaultWriteType);
        boolean writeDescriptor = bluetoothGatt.writeDescriptor(this.bluetoothGattDescriptor);
        characteristic.setWriteType(writeType);
        return writeDescriptor;
    }
}
