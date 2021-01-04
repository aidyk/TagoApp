package io.reactivex.rxkotlin;

import io.reactivex.functions.Action;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 2}, k = 3, mv = {1, 1, 8})
/* compiled from: subscribers.kt */
final class SubscribersKt$sam$Action$fd62537c implements Action {
    private final /* synthetic */ Function0 function;

    SubscribersKt$sam$Action$fd62537c(Function0 function0) {
        this.function = function0;
    }

    @Override // io.reactivex.functions.Action
    public final /* synthetic */ void run() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
