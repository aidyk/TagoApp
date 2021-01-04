package io.reactivex.rxkotlin;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010(\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0002¨\u0006\u0005"}, d2 = {"io/reactivex/rxkotlin/FlowableKt$toIterable$1", "", "(Ljava/util/Iterator;)V", "iterator", "", "rxkotlin"}, k = 1, mv = {1, 1, 8})
/* compiled from: flowable.kt */
public final class FlowableKt$toIterable$1 implements Iterable<T>, KMappedMarker {
    final /* synthetic */ Iterator receiver$0;

    FlowableKt$toIterable$1(Iterator<? extends T> it2) {
        this.receiver$0 = it2;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return this.receiver$0;
    }
}
