package com.liber8tech.tago.service;

import com.liber8tech.tago.model.ExtendedConnection;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.subjects.AsyncSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/subjects/AsyncSubject;", "Lcom/liber8tech/tago/model/ExtendedConnection;", "kotlin.jvm.PlatformType", "it", "", "apply", "(Lkotlin/Unit;)Lio/reactivex/subjects/AsyncSubject;"}, k = 3, mv = {1, 1, 13})
/* compiled from: StartCommunication.kt */
public final class StartCommunication$perform$tets$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ StartCommunication this$0;

    StartCommunication$perform$tets$1(StartCommunication startCommunication) {
        this.this$0 = startCommunication;
    }

    @NotNull
    public final AsyncSubject<ExtendedConnection> apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
        return this.this$0.doneSignal;
    }
}
