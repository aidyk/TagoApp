package com.liber8tech.tago.service;

import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetDevice.kt */
public final class ResetDevice$perform$sendObs$3<T, R> implements Function<T, R> {
    public static final ResetDevice$perform$sendObs$3 INSTANCE = new ResetDevice$perform$sendObs$3();

    ResetDevice$perform$sendObs$3() {
    }

    public final void apply(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "it");
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((byte[]) obj);
        return Unit.INSTANCE;
    }
}
