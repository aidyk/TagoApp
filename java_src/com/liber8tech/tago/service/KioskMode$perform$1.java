package com.liber8tech.tago.service;

import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.subjects.AsyncSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/subjects/AsyncSubject;", "", "kotlin.jvm.PlatformType", "it", "apply", "(Lkotlin/Unit;)Lio/reactivex/subjects/AsyncSubject;"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskMode.kt */
public final class KioskMode$perform$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ KioskMode this$0;

    KioskMode$perform$1(KioskMode kioskMode) {
        this.this$0 = kioskMode;
    }

    @NotNull
    public final AsyncSubject<Unit> apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
        return this.this$0.doneSignal;
    }
}
