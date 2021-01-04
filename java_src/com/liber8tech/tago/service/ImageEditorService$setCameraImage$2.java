package com.liber8tech.tago.service;

import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "it", "apply", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$setCameraImage$2<T, R> implements Function<T, R> {
    public static final ImageEditorService$setCameraImage$2 INSTANCE = new ImageEditorService$setCameraImage$2();

    ImageEditorService$setCameraImage$2() {
    }

    public final void apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Unit) obj);
        return Unit.INSTANCE;
    }
}
