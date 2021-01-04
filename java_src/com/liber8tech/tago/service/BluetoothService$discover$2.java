package com.liber8tech.tago.service;

import android.os.SystemClock;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Consumer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "devices", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$discover$2<T> implements Consumer<List<RxBleDevice>> {
    final /* synthetic */ Map $ttl;

    BluetoothService$discover$2(Map map) {
        this.$ttl = map;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Consumer
    public /* bridge */ /* synthetic */ void accept(List<RxBleDevice> list) {
        accept((List<? extends RxBleDevice>) list);
    }

    public final void accept(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            this.$ttl.put(it2.next(), Long.valueOf(elapsedRealtime));
        }
        Iterator it3 = this.$ttl.entrySet().iterator();
        while (it3.hasNext()) {
            if (elapsedRealtime - ((Number) ((Map.Entry) it3.next()).getValue()).longValue() > 8000) {
                it3.remove();
            }
        }
    }
}
