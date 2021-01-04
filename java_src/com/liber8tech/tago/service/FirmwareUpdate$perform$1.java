package com.liber8tech.tago.service;

import com.liber8tech.tago.model.SyncState;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.subjects.BehaviorSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/liber8tech/tago/model/SyncState;", "kotlin.jvm.PlatformType", "it", "", "apply", "(Lkotlin/Unit;)Lio/reactivex/subjects/BehaviorSubject;"}, k = 3, mv = {1, 1, 13})
/* compiled from: FirmwareUpdate.kt */
public final class FirmwareUpdate$perform$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ FirmwareUpdate this$0;

    FirmwareUpdate$perform$1(FirmwareUpdate firmwareUpdate) {
        this.this$0 = firmwareUpdate;
    }

    @NotNull
    public final BehaviorSubject<SyncState> apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
        return this.this$0.progress;
    }
}
