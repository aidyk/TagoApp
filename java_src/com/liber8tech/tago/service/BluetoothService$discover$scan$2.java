package com.liber8tech.tago.service;

import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/polidea/rxandroidble2/RxBleDevice;", "test"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$discover$scan$2<T> implements Predicate<RxBleDevice> {
    public static final BluetoothService$discover$scan$2 INSTANCE = new BluetoothService$discover$scan$2();

    BluetoothService$discover$scan$2() {
    }

    public final boolean test(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "it");
        String name = rxBleDevice.getName();
        if (name != null) {
            String str = name;
            if (StringsKt.contains((CharSequence) str, (CharSequence) "tago", true) || StringsKt.contains((CharSequence) str, (CharSequence) "production", true)) {
                return true;
            }
        }
        return false;
    }
}
