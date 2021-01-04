package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.support.annotation.RequiresApi;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.internal.connection.PayloadSizeLimitProvider;
import java.util.concurrent.TimeUnit;

public interface OperationsProvider {
    ConnectionPriorityChangeOperation provideConnectionPriorityChangeOperation(int i, long j, TimeUnit timeUnit);

    CharacteristicLongWriteOperation provideLongWriteOperation(BluetoothGattCharacteristic bluetoothGattCharacteristic, RxBleConnection.WriteOperationAckStrategy writeOperationAckStrategy, RxBleConnection.WriteOperationRetryStrategy writeOperationRetryStrategy, PayloadSizeLimitProvider payloadSizeLimitProvider, byte[] bArr);

    @RequiresApi(api = 21)
    MtuRequestOperation provideMtuChangeOperation(int i);

    CharacteristicReadOperation provideReadCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic);

    DescriptorReadOperation provideReadDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor);

    ReadRssiOperation provideRssiReadOperation();

    ServiceDiscoveryOperation provideServiceDiscoveryOperation(long j, TimeUnit timeUnit);

    CharacteristicWriteOperation provideWriteCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr);

    DescriptorWriteOperation provideWriteDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor, byte[] bArr);
}
