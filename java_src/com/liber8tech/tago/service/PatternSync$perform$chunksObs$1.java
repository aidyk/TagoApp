package com.liber8tech.tago.service;

import com.liber8tech.tago.protocol.Message;
import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "chunk", "Lcom/liber8tech/tago/protocol/Message;", "apply", "(Lkotlin/Unit;Lcom/liber8tech/tago/protocol/Message;)V"}, k = 3, mv = {1, 1, 13})
/* compiled from: PatternSync.kt */
public final class PatternSync$perform$chunksObs$1<T1, T2, R> implements BiFunction<Unit, Message, Unit> {
    final /* synthetic */ Ref.IntRef $chunkIndex;
    final /* synthetic */ double $steps;
    final /* synthetic */ PatternSync this$0;

    PatternSync$perform$chunksObs$1(PatternSync patternSync, Ref.IntRef intRef, double d) {
        this.this$0 = patternSync;
        this.$chunkIndex = intRef;
        this.$steps = d;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // io.reactivex.functions.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Unit unit, Message message) {
        apply(unit, message);
        return Unit.INSTANCE;
    }

    public final void apply(@NotNull Unit unit, @NotNull Message message) {
        Intrinsics.checkParameterIsNotNull(unit, "<anonymous parameter 0>");
        Intrinsics.checkParameterIsNotNull(message, "chunk");
        this.this$0.sendBuffer.onNext(message);
        PatternSync patternSync = this.this$0;
        Ref.IntRef intRef = this.$chunkIndex;
        intRef.element++;
        double d = (double) intRef.element;
        double d2 = this.$steps;
        Double.isNaN(d);
        PatternSync.updateProgress$default(patternSync, Double.valueOf(d / d2), null, 2, null);
    }
}
