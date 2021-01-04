package com.liber8tech.tago.service;

import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.BiFunction;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "devices", "<anonymous parameter 1>", "", "apply", "(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$discover$1<T1, T2, R> implements BiFunction<List<RxBleDevice>, Long, List<RxBleDevice>> {
    public static final BluetoothService$discover$1 INSTANCE = new BluetoothService$discover$1();

    BluetoothService$discover$1() {
    }

    @NotNull
    public final List<RxBleDevice> apply(@NotNull List<RxBleDevice> list, @NotNull Long l) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        Intrinsics.checkParameterIsNotNull(l, "<anonymous parameter 1>");
        return list;
    }
}
