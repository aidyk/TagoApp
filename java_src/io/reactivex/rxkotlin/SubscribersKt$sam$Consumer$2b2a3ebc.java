package io.reactivex.rxkotlin;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 8})
/* compiled from: subscribers.kt */
final class SubscribersKt$sam$Consumer$2b2a3ebc implements Consumer {
    private final /* synthetic */ Function1 function;

    SubscribersKt$sam$Consumer$2b2a3ebc(Function1 function1) {
        this.function = function1;
    }

    @Override // io.reactivex.functions.Consumer
    public final /* synthetic */ void accept(T t) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t), "invoke(...)");
    }
}
