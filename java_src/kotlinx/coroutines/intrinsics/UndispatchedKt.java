package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\b\u001a>\u0010\b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\t2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\n\u001aR\u0010\b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0002*\u001e\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f2\u0006\u0010\r\u001a\u0002H\u000b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a>\u0010\u000f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\t2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\n\u001aR\u0010\u000f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\u0002*\u001e\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f2\u0006\u0010\r\u001a\u0002H\u000b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001aY\u0010\u0010\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\u00020\u00112\u0006\u0010\r\u001a\u0002H\u000b2'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u0012H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001aY\u0010\u0014\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\u00020\u00112\u0006\u0010\r\u001a\u0002H\u000b2'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u0012H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001a?\u0010\u0015\u001a\u0004\u0018\u00010\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00112\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\t2\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\b\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"startDirect", "", "T", "completion", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/Function0;", "", "startCoroutineUndispatched", "Lkotlin/Function1;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "startCoroutineUnintercepted", "startUndispatchedOrReturn", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/AbstractCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "startUndispatchedOrReturnIgnoreTimeout", "undispatchedResult", "shouldThrow", "", "", "startBlock", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 13})
/* compiled from: Undispatched.kt */
public final class UndispatchedKt {
    public static final <T> void startCoroutineUnintercepted(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(function1, "receiver$0");
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        try {
            Object invoke = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuation);
            if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m4constructorimpl(invoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <R, T> void startCoroutineUnintercepted(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(function2, "receiver$0");
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        try {
            Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, continuation);
            if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m4constructorimpl(invoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
        }
    }

    /* JADX INFO: finally extract failed */
    public static final <T> void startCoroutineUndispatched(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(function1, "receiver$0");
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        try {
            CoroutineContext context = continuation.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            try {
                Object invoke = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuation);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    Result.Companion companion = Result.Companion;
                    continuation.resumeWith(Result.m4constructorimpl(invoke));
                }
            } catch (Throwable th) {
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th2)));
        }
    }

    /* JADX INFO: finally extract failed */
    public static final <R, T> void startCoroutineUndispatched(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(function2, "receiver$0");
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        try {
            CoroutineContext context = continuation.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            try {
                Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, continuation);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    Result.Companion companion = Result.Companion;
                    continuation.resumeWith(Result.m4constructorimpl(invoke));
                }
            } catch (Throwable th) {
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th2)));
        }
    }

    private static final <T> void startDirect(Continuation<? super T> continuation, Function0<? extends Object> function0) {
        try {
            Object invoke = function0.invoke();
            if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m4constructorimpl(invoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
        }
    }

    @Nullable
    public static final <T, R> Object startUndispatchedOrReturn(@NotNull AbstractCoroutine<? super T> abstractCoroutine, R r, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object obj;
        Intrinsics.checkParameterIsNotNull(abstractCoroutine, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "block");
        abstractCoroutine.initParentJob$kotlinx_coroutines_core();
        try {
            obj = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, abstractCoroutine);
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th);
        }
        if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (!abstractCoroutine.makeCompletingOnce$kotlinx_coroutines_core(obj, 4)) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object state$kotlinx_coroutines_core = abstractCoroutine.getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return state$kotlinx_coroutines_core;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) state$kotlinx_coroutines_core;
        Throwable th2 = completedExceptionally.cause;
        throw completedExceptionally.cause;
    }

    @Nullable
    public static final <T, R> Object startUndispatchedOrReturnIgnoreTimeout(@NotNull AbstractCoroutine<? super T> abstractCoroutine, R r, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object obj;
        Intrinsics.checkParameterIsNotNull(abstractCoroutine, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "block");
        abstractCoroutine.initParentJob$kotlinx_coroutines_core();
        try {
            obj = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, abstractCoroutine);
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th);
        }
        if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (!abstractCoroutine.makeCompletingOnce$kotlinx_coroutines_core(obj, 4)) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object state$kotlinx_coroutines_core = abstractCoroutine.getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return state$kotlinx_coroutines_core;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) state$kotlinx_coroutines_core;
        Throwable th2 = completedExceptionally.cause;
        if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).coroutine != abstractCoroutine) {
            throw completedExceptionally.cause;
        } else if (!(obj instanceof CompletedExceptionally)) {
            return obj;
        } else {
            throw ((CompletedExceptionally) obj).cause;
        }
    }

    private static final <T> Object undispatchedResult(@NotNull AbstractCoroutine<? super T> abstractCoroutine, Function1<? super Throwable, Boolean> function1, Function0<? extends Object> function0) {
        Object obj;
        try {
            obj = function0.invoke();
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th);
        }
        if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (!abstractCoroutine.makeCompletingOnce$kotlinx_coroutines_core(obj, 4)) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object state$kotlinx_coroutines_core = abstractCoroutine.getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return state$kotlinx_coroutines_core;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) state$kotlinx_coroutines_core;
        if (function1.invoke(completedExceptionally.cause).booleanValue()) {
            throw completedExceptionally.cause;
        } else if (!(obj instanceof CompletedExceptionally)) {
            return obj;
        } else {
            throw ((CompletedExceptionally) obj).cause;
        }
    }
}
