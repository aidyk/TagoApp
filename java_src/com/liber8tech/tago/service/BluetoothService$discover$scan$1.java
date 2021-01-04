package com.liber8tech.tago.service;

import com.polidea.rxandroidble2.RxBleDevice;
import com.polidea.rxandroidble2.scan.ScanResult;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kotlin.jvm.PlatformType", "it", "Lcom/polidea/rxandroidble2/scan/ScanResult;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$discover$scan$1<T, R> implements Function<T, R> {
    public static final BluetoothService$discover$scan$1 INSTANCE = new BluetoothService$discover$scan$1();

    BluetoothService$discover$scan$1() {
    }

    public final RxBleDevice apply(@NotNull ScanResult scanResult) {
        Intrinsics.checkParameterIsNotNull(scanResult, "it");
        return scanResult.getBleDevice();
    }
}
