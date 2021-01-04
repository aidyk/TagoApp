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
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kotlin.jvm.PlatformType", "it", "Lkotlin/Pair;", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$devices$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ boolean $own;
    final /* synthetic */ TagoService this$0;

    TagoService$devices$2(TagoService tagoService, boolean z) {
        this.this$0 = tagoService;
        this.$own = z;
    }

    public final Observable<List<RxBleDevice>> apply(@NotNull Pair<Boolean, Boolean> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "it");
        return this.this$0.get().flatMap(new Function<T, ObservableSource<? extends R>>(this) {
            /* class com.liber8tech.tago.service.TagoService$devices$2.AnonymousClass1 */
            final /* synthetic */ TagoService$devices$2 this$0;

            {
                this.this$0 = r1;
            }

            public final Observable<List<RxBleDevice>> apply(@NotNull final List<? extends TagoDevice> list) {
                Intrinsics.checkParameterIsNotNull(list, "saved");
                return this.this$0.this$0.bluetoothService.discover().map(new Function<T, R>(this) {
                    /* class com.liber8tech.tago.service.TagoService$devices$2.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    @NotNull
                    public final List<RxBleDevice> apply(@NotNull List<? extends RxBleDevice> list) {
                        T t;
                        T t2;
                        Intrinsics.checkParameterIsNotNull(list, "discovered");
                        if (this.this$0.this$0.$own) {
                            ArrayList arrayList = new ArrayList();
                            for (T t3 : list) {
                                T t4 = t3;
                                List list2 = list;
                                Intrinsics.checkExpressionValueIsNotNull(list2, "saved");
                                Iterator<T> it2 = list2.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        t2 = null;
                                        break;
                                    }
                                    t2 = it2.next();
                                    if (Intrinsics.areEqual(t2.getIdentifier(), t4.getMacAddress())) {
                                        break;
                                    }
                                }
                                if (t2 != null) {
                                    arrayList.add(t3);
                                }
                            }
                            return arrayList;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (T t5 : list) {
                            T t6 = t5;
                            List list3 = list;
                            Intrinsics.checkExpressionValueIsNotNull(list3, "saved");
                            Iterator<T> it3 = list3.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    t = null;
                                    break;
                                }
                                t = it3.next();
                                if (Intrinsics.areEqual(t.getIdentifier(), t6.getMacAddress())) {
                                    break;
                                }
                            }
                            if (t == null) {
                                arrayList2.add(t5);
                            }
                        }
                        return arrayList2;
                    }
                }).takeUntil(this.this$0.this$0.bluetoothService.bluetoothOff());
            }
        });
    }
}
