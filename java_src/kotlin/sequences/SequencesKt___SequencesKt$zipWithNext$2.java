package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 13})
@DebugMetadata(c = "kotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2", f = "_Sequences.kt", i = {0, 0, 0}, l = {1676, 1683}, m = "invokeSuspend", n = {"iterator", "current", "next"}, s = {"L$1", "L$2", "L$3"})
/* compiled from: _Sequences.kt */
final class SequencesKt___SequencesKt$zipWithNext$2 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Sequence $this_zipWithNext;
    final /* synthetic */ Function2 $transform;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    private SequenceScope p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$zipWithNext$2(Sequence sequence, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_zipWithNext = sequence;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        SequencesKt___SequencesKt$zipWithNext$2 sequencesKt___SequencesKt$zipWithNext$2 = new SequencesKt___SequencesKt$zipWithNext$2(this.$this_zipWithNext, this.$transform, continuation);
        sequencesKt___SequencesKt$zipWithNext$2.p$ = (SequenceScope) obj;
        return sequencesKt___SequencesKt$zipWithNext$2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$zipWithNext$2) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SequencesKt___SequencesKt$zipWithNext$2 sequencesKt___SequencesKt$zipWithNext$2;
        SequenceScope sequenceScope;
        Iterator it2;
        Object obj2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                if (!(obj instanceof Result.Failure)) {
                    SequenceScope sequenceScope2 = this.p$;
                    Iterator it3 = this.$this_zipWithNext.iterator();
                    if (it3.hasNext()) {
                        Object next = it3.next();
                        sequenceScope = sequenceScope2;
                        sequencesKt___SequencesKt$zipWithNext$2 = this;
                        obj2 = coroutine_suspended;
                        obj3 = next;
                        it2 = it3;
                        break;
                    } else {
                        return Unit.INSTANCE;
                    }
                } else {
                    throw ((Result.Failure) obj).exception;
                }
            case 1:
                Object obj4 = this.L$3;
                Object obj5 = this.L$2;
                it2 = (Iterator) this.L$1;
                sequenceScope = (SequenceScope) this.L$0;
                if (!(obj instanceof Result.Failure)) {
                    sequencesKt___SequencesKt$zipWithNext$2 = this;
                    obj2 = coroutine_suspended;
                    obj3 = obj4;
                    break;
                } else {
                    throw ((Result.Failure) obj).exception;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it2.hasNext()) {
            Object next2 = it2.next();
            Object invoke = sequencesKt___SequencesKt$zipWithNext$2.$transform.invoke(obj3, next2);
            sequencesKt___SequencesKt$zipWithNext$2.L$0 = sequenceScope;
            sequencesKt___SequencesKt$zipWithNext$2.L$1 = it2;
            sequencesKt___SequencesKt$zipWithNext$2.L$2 = obj3;
            sequencesKt___SequencesKt$zipWithNext$2.L$3 = next2;
            sequencesKt___SequencesKt$zipWithNext$2.label = 1;
            if (sequenceScope.yield(invoke, sequencesKt___SequencesKt$zipWithNext$2) == obj2) {
                return obj2;
            }
            obj3 = next2;
        }
        return Unit.INSTANCE;
    }
}
