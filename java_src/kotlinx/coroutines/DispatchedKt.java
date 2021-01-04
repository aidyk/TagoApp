package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.UndispatchedEventLoop;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0004\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0000\u001a.\u0010\n\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00060\f2\u0006\u0010\r\u001a\u00020\tH\u0000\u001a%\u0010\u000e\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\f2\u0006\u0010\u000f\u001a\u0002H\u0006H\u0000¢\u0006\u0002\u0010\u0010\u001a \u0010\u0011\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a%\u0010\u0014\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\f2\u0006\u0010\u000f\u001a\u0002H\u0006H\u0000¢\u0006\u0002\u0010\u0010\u001a \u0010\u0015\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a\u0012\u0010\u0016\u001a\u00020\u0017*\b\u0012\u0004\u0012\u00020\u00050\u0018H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003¨\u0006\u0019"}, d2 = {"UNDEFINED", "Lkotlinx/coroutines/internal/Symbol;", "UNDEFINED$annotations", "()V", "dispatch", "", "T", "Lkotlinx/coroutines/DispatchedTask;", "mode", "", "resume", "delegate", "Lkotlin/coroutines/Continuation;", "useMode", "resumeCancellable", "value", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "resumeCancellableWithException", "exception", "", "resumeDirect", "resumeDirectWithException", "yieldUndispatched", "", "Lkotlinx/coroutines/DispatchedContinuation;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 13})
/* compiled from: Dispatched.kt */
public final class DispatchedKt {
    private static final Symbol UNDEFINED = new Symbol("UNDEFINED");

    private static /* synthetic */ void UNDEFINED$annotations() {
    }

    public static final <T> void resumeCancellable(@NotNull Continuation<? super T> continuation, T t) {
        Intrinsics.checkParameterIsNotNull(continuation, "receiver$0");
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            boolean z = true;
            if (dispatchedContinuation.dispatcher.isDispatchNeeded(dispatchedContinuation.getContext())) {
                dispatchedContinuation._state = t;
                dispatchedContinuation.resumeMode = 1;
                dispatchedContinuation.dispatcher.dispatch(dispatchedContinuation.getContext(), dispatchedContinuation);
                return;
            }
            UndispatchedEventLoop undispatchedEventLoop = UndispatchedEventLoop.INSTANCE;
            UndispatchedEventLoop.EventLoop eventLoop = UndispatchedEventLoop.threadLocalEventLoop.get();
            if (eventLoop.isActive) {
                dispatchedContinuation._state = t;
                dispatchedContinuation.resumeMode = 1;
                eventLoop.queue.addLast(dispatchedContinuation);
                return;
            }
            Intrinsics.checkExpressionValueIsNotNull(eventLoop, "eventLoop");
            try {
                eventLoop.isActive = true;
                Job job = (Job) dispatchedContinuation.getContext().get(Job.Key);
                if (job == null || job.isActive()) {
                    z = false;
                } else {
                    Result.Companion companion = Result.Companion;
                    dispatchedContinuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(job.getCancellationException())));
                }
                if (!z) {
                    CoroutineContext context = dispatchedContinuation.getContext();
                    Object updateThreadContext = ThreadContextKt.updateThreadContext(context, dispatchedContinuation.countOrElement);
                    try {
                        Continuation<T> continuation2 = dispatchedContinuation.continuation;
                        Result.Companion companion2 = Result.Companion;
                        continuation2.resumeWith(Result.m4constructorimpl(t));
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                    }
                }
                while (true) {
                    Runnable removeFirstOrNull = eventLoop.queue.removeFirstOrNull();
                    if (removeFirstOrNull != null) {
                        removeFirstOrNull.run();
                    } else {
                        eventLoop.isActive = false;
                        return;
                    }
                }
            } catch (Throwable th) {
                eventLoop.isActive = false;
                throw th;
            }
        } else {
            Result.Companion companion3 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(t));
        }
    }

    public static final <T> void resumeCancellableWithException(@NotNull Continuation<? super T> continuation, @NotNull Throwable th) {
        Intrinsics.checkParameterIsNotNull(continuation, "receiver$0");
        Intrinsics.checkParameterIsNotNull(th, "exception");
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            CoroutineContext context = dispatchedContinuation.continuation.getContext();
            CompletedExceptionally completedExceptionally = new CompletedExceptionally(th);
            boolean z = true;
            if (dispatchedContinuation.dispatcher.isDispatchNeeded(context)) {
                dispatchedContinuation._state = new CompletedExceptionally(th);
                dispatchedContinuation.resumeMode = 1;
                dispatchedContinuation.dispatcher.dispatch(context, dispatchedContinuation);
                return;
            }
            UndispatchedEventLoop undispatchedEventLoop = UndispatchedEventLoop.INSTANCE;
            UndispatchedEventLoop.EventLoop eventLoop = UndispatchedEventLoop.threadLocalEventLoop.get();
            if (eventLoop.isActive) {
                dispatchedContinuation._state = completedExceptionally;
                dispatchedContinuation.resumeMode = 1;
                eventLoop.queue.addLast(dispatchedContinuation);
                return;
            }
            Intrinsics.checkExpressionValueIsNotNull(eventLoop, "eventLoop");
            try {
                eventLoop.isActive = true;
                Job job = (Job) dispatchedContinuation.getContext().get(Job.Key);
                if (job == null || job.isActive()) {
                    z = false;
                } else {
                    Result.Companion companion = Result.Companion;
                    dispatchedContinuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(job.getCancellationException())));
                }
                if (!z) {
                    CoroutineContext context2 = dispatchedContinuation.getContext();
                    Object updateThreadContext = ThreadContextKt.updateThreadContext(context2, dispatchedContinuation.countOrElement);
                    try {
                        Continuation<T> continuation2 = dispatchedContinuation.continuation;
                        Result.Companion companion2 = Result.Companion;
                        continuation2.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        ThreadContextKt.restoreThreadContext(context2, updateThreadContext);
                    }
                }
                while (true) {
                    Runnable removeFirstOrNull = eventLoop.queue.removeFirstOrNull();
                    if (removeFirstOrNull != null) {
                        removeFirstOrNull.run();
                    } else {
                        eventLoop.isActive = false;
                        return;
                    }
                }
            } catch (Throwable th2) {
                eventLoop.isActive = false;
                throw th2;
            }
        } else {
            Result.Companion companion3 = Result.Companion;
            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
        }
    }

    public static final <T> void resumeDirect(@NotNull Continuation<? super T> continuation, T t) {
        Intrinsics.checkParameterIsNotNull(continuation, "receiver$0");
        if (continuation instanceof DispatchedContinuation) {
            Continuation<T> continuation2 = ((DispatchedContinuation) continuation).continuation;
            Result.Companion companion = Result.Companion;
            continuation2.resumeWith(Result.m4constructorimpl(t));
            return;
        }
        Result.Companion companion2 = Result.Companion;
        continuation.resumeWith(Result.m4constructorimpl(t));
    }

    public static final <T> void resumeDirectWithException(@NotNull Continuation<? super T> continuation, @NotNull Throwable th) {
        Intrinsics.checkParameterIsNotNull(continuation, "receiver$0");
        Intrinsics.checkParameterIsNotNull(th, "exception");
        if (continuation instanceof DispatchedContinuation) {
            Continuation<T> continuation2 = ((DispatchedContinuation) continuation).continuation;
            Result.Companion companion = Result.Companion;
            continuation2.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
            return;
        }
        Result.Companion companion2 = Result.Companion;
        continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
    }

    public static final boolean yieldUndispatched(@NotNull DispatchedContinuation<? super Unit> dispatchedContinuation) {
        Intrinsics.checkParameterIsNotNull(dispatchedContinuation, "receiver$0");
        UndispatchedEventLoop undispatchedEventLoop = UndispatchedEventLoop.INSTANCE;
        Unit unit = Unit.INSTANCE;
        UndispatchedEventLoop.EventLoop eventLoop = UndispatchedEventLoop.threadLocalEventLoop.get();
        if (!eventLoop.isActive) {
            Intrinsics.checkExpressionValueIsNotNull(eventLoop, "eventLoop");
            try {
                eventLoop.isActive = true;
                dispatchedContinuation.run();
                while (true) {
                    Runnable removeFirstOrNull = eventLoop.queue.removeFirstOrNull();
                    if (removeFirstOrNull != null) {
                        removeFirstOrNull.run();
                    } else {
                        eventLoop.isActive = false;
                        return false;
                    }
                }
            } catch (Throwable th) {
                eventLoop.isActive = false;
                throw th;
            }
        } else if (eventLoop.queue.isEmpty()) {
            return false;
        } else {
            dispatchedContinuation._state = unit;
            dispatchedContinuation.resumeMode = 1;
            eventLoop.queue.addLast(dispatchedContinuation);
            return true;
        }
    }

    public static /* synthetic */ void dispatch$default(DispatchedTask dispatchedTask, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        dispatch(dispatchedTask, i);
    }

    public static final <T> void dispatch(@NotNull DispatchedTask<? super T> dispatchedTask, int i) {
        Intrinsics.checkParameterIsNotNull(dispatchedTask, "receiver$0");
        Continuation<? super T> delegate = dispatchedTask.getDelegate();
        if (!ResumeModeKt.isDispatchedMode(i) || !(delegate instanceof DispatchedContinuation) || ResumeModeKt.isCancellableMode(i) != ResumeModeKt.isCancellableMode(dispatchedTask.resumeMode)) {
            resume(dispatchedTask, delegate, i);
            return;
        }
        CoroutineDispatcher coroutineDispatcher = ((DispatchedContinuation) delegate).dispatcher;
        CoroutineContext context = delegate.getContext();
        if (coroutineDispatcher.isDispatchNeeded(context)) {
            coroutineDispatcher.dispatch(context, dispatchedTask);
        } else {
            UndispatchedEventLoop.INSTANCE.resumeUndispatched(dispatchedTask);
        }
    }

    public static final <T> void resume(@NotNull DispatchedTask<? super T> dispatchedTask, @NotNull Continuation<? super T> continuation, int i) {
        Intrinsics.checkParameterIsNotNull(dispatchedTask, "receiver$0");
        Intrinsics.checkParameterIsNotNull(continuation, "delegate");
        Object takeState = dispatchedTask.takeState();
        Throwable exceptionalResult = dispatchedTask.getExceptionalResult(takeState);
        if (exceptionalResult != null) {
            ResumeModeKt.resumeWithExceptionMode(continuation, exceptionalResult, i);
        } else {
            ResumeModeKt.resumeMode(continuation, dispatchedTask.getSuccessfulResult(takeState), i);
        }
    }
}
