package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.support.annotation.RequiresApi;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.SingleResponseOperation;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import io.reactivex.Single;

@RequiresApi(api = 21)
public class MtuRequestOperation extends SingleResponseOperation<Integer> {
    private final int mtu;

    @Inject
    MtuRequestOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, TimeoutConfiguration timeoutConfiguration, int i) {
        super(bluetoothGatt, rxBleGattCallback, BleGattOperationType.ON_MTU_CHANGED, timeoutConfiguration);
        this.mtu = i;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public Single<Integer> getCallback(RxBleGattCallback rxBleGattCallback) {
        return rxBleGattCallback.getOnMtuChanged().firstOrError();
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public boolean startOperation(BluetoothGatt bluetoothGatt) {
        return bluetoothGatt.requestMtu(this.mtu);
    }
}
