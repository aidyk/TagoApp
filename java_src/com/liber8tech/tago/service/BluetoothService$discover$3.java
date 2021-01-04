package com.liber8tech.tago.service;

import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$discover$3<T, R> implements Function<T, R> {
    final /* synthetic */ Map $ttl;

    BluetoothService$discover$3(Map map) {
        this.$ttl = map;
    }

    @NotNull
    public final List<RxBleDevice> apply(@NotNull List<RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        return CollectionsKt.sortedWith(CollectionsKt.toList(this.$ttl.keySet()), new BluetoothService$discover$3$$special$$inlined$sortedBy$1());
    }
}
