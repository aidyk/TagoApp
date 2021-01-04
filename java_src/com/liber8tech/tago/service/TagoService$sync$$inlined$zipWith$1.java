package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import io.reactivex.functions.BiFunction;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import net.glxn.qrgen.core.scheme.EnterpriseWifi;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\b\b\n\u0002\b\b\n\u0002\b\b\n\u0002\b\b\n\u0002\b\b\n\u0002\b\b\n\u0002\b\b\n\u0002\b\t\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00012\u0006\u0010\u0004\u001a\u0002H\u00022\u0006\u0010\u0005\u001a\u0002H\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "R", "T", EnterpriseWifi.USER, "t", "u", "apply", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "io/reactivex/rxkotlin/ObservablesKt$zipWith$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: Observables.kt */
public final class TagoService$sync$$inlined$zipWith$1<T1, T2, R> implements BiFunction<List<? extends TagoDevice>, List<? extends TagoDevice>, R> {
    @Override // io.reactivex.functions.BiFunction
    public final R apply(List<? extends TagoDevice> list, List<? extends TagoDevice> list2) {
        return (R) new Pair(list, list2);
    }
}
