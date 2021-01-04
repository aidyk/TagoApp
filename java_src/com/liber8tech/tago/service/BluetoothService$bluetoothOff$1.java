package com.liber8tech.tago.service;

import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "it", "test", "(Ljava/lang/Boolean;)Z"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$bluetoothOff$1<T> implements Predicate<Boolean> {
    public static final BluetoothService$bluetoothOff$1 INSTANCE = new BluetoothService$bluetoothOff$1();

    BluetoothService$bluetoothOff$1() {
    }

    public final boolean test(@NotNull Boolean bool) {
        Intrinsics.checkParameterIsNotNull(bool, "it");
        return !bool.booleanValue();
    }
}
