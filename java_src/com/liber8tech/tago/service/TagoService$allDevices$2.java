package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0001\u0012<\u0012:\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003 \u0005*\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0018\u00010\u00020\u0002 \u0005*B\u0012<\u0012:\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003 \u0005*\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0002H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lkotlin/Pair;", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kotlin.jvm.PlatformType", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$allDevices$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ TagoService this$0;

    TagoService$allDevices$2(TagoService tagoService) {
        this.this$0 = tagoService;
    }

    public final Observable<Pair<List<RxBleDevice>, List<RxBleDevice>>> apply(@NotNull Pair<Boolean, Boolean> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "it");
        return this.this$0.get().flatMap(new Function<T, ObservableSource<? extends R>>(this) {
            /* class com.liber8tech.tago.service.TagoService$allDevices$2.AnonymousClass1 */
            final /* synthetic */ TagoService$allDevices$2 this$0;

            {
                this.this$0 = r1;
            }

            public final Observable<Pair<List<RxBleDevice>, List<RxBleDevice>>> apply(@NotNull final List<? extends TagoDevice> list) {
                Intrinsics.checkParameterIsNotNull(list, "saved");
                return this.this$0.this$0.bluetoothService.discover().map(new Function<T, R>() {
                    /* class com.liber8tech.tago.service.TagoService$allDevices$2.AnonymousClass1.AnonymousClass1 */

                    @NotNull
                    public final Pair<List<RxBleDevice>, List<RxBleDevice>> apply(@NotNull List<? extends RxBleDevice> list) {
                        T t;
                        Intrinsics.checkParameterIsNotNull(list, "discovered");
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (T t2 : list) {
                            List list2 = list;
                            Intrinsics.checkExpressionValueIsNotNull(list2, "saved");
                            Iterator<T> it2 = list2.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    t = null;
                                    break;
                                }
                                t = it2.next();
                                if (Intrinsics.areEqual(t.getIdentifier(), t2.getMacAddress())) {
                                    break;
                                }
                            }
                            if (t != null) {
                                arrayList.add(t2);
                            } else {
                                arrayList2.add(t2);
                            }
                        }
                        return new Pair<>(arrayList, arrayList2);
                    }
                }).takeUntil(this.this$0.this$0.bluetoothService.bluetoothOff());
            }
        });
    }
}
