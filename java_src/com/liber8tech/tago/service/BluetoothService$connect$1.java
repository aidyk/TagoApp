package com.liber8tech.tago.service;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.RxBleDeviceServices;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lcom/polidea/rxandroidble2/RxBleConnection;", "kotlin.jvm.PlatformType", "connection", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$connect$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    public static final BluetoothService$connect$1 INSTANCE = new BluetoothService$connect$1();

    BluetoothService$connect$1() {
    }

    public final Observable<RxBleConnection> apply(@NotNull final RxBleConnection rxBleConnection) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        return rxBleConnection.discoverServices().flatMap(new Function<T, SingleSource<? extends R>>() {
            /* class com.liber8tech.tago.service.BluetoothService$connect$1.AnonymousClass1 */

            public final Single<RxBleConnection> apply(@NotNull RxBleDeviceServices rxBleDeviceServices) {
                Intrinsics.checkParameterIsNotNull(rxBleDeviceServices, "it");
                List<BluetoothGattService> bluetoothGattServices = rxBleDeviceServices.getBluetoothGattServices();
                Intrinsics.checkExpressionValueIsNotNull(bluetoothGattServices, "it.bluetoothGattServices");
                for (T t : bluetoothGattServices) {
                    Intrinsics.checkExpressionValueIsNotNull(t, "it");
                    if (Intrinsics.areEqual(t.getUuid(), BluetoothService.uartId)) {
                        BluetoothGattCharacteristic characteristic = t.getCharacteristic(BluetoothService.Companion.getTxId());
                        BluetoothGattCharacteristic characteristic2 = t.getCharacteristic(BluetoothService.Companion.getRxId());
                        Intrinsics.checkExpressionValueIsNotNull(characteristic, "tx");
                        characteristic.setWriteType(1);
                        BluetoothGattDescriptor descriptor = characteristic2.getDescriptor(BluetoothService.clientId);
                        Intrinsics.checkExpressionValueIsNotNull(descriptor, "descriptor");
                        descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                        return rxBleConnection.writeDescriptor(descriptor, descriptor.getValue()).toSingleDefault(rxBleConnection);
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }).toObservable();
    }
}
