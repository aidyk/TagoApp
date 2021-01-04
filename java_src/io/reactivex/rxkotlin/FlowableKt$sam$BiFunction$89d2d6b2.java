package io.reactivex.rxkotlin;

import io.reactivex.annotations.NonNull;
import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 8})
/* compiled from: flowable.kt */
final class FlowableKt$sam$BiFunction$89d2d6b2 implements BiFunction {
    private final /* synthetic */ Function2 function;

    FlowableKt$sam$BiFunction$89d2d6b2(Function2 function2) {
        this.function = function2;
    }

    @Override // io.reactivex.functions.BiFunction
    @NonNull
    public final /* synthetic */ R apply(@NonNull T1 t1, @NonNull T2 t2) {
        return (R) this.function.invoke(t1, t2);
    }
}
