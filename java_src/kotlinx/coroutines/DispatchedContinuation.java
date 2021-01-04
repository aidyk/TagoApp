package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.UndispatchedEventLoop;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0002\u0010\u0007J\u0017\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\b¢\u0006\u0002\u0010\u0018J\u0011\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\bJ\t\u0010\u001d\u001a\u00020\u001eH\bJ\u0016\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\b¢\u0006\u0002\u0010\u0018J\u0011\u0010 \u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\bJ\u001e\u0010!\u001a\u00020\u00152\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\n\u0010$\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010%\u001a\u00020&H\u0016R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u000e¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0006X\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\t8\u0000X\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038VX\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0004¢\u0006\u0002\n\u0000\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlinx/coroutines/DispatchedContinuation;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlin/coroutines/Continuation;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "continuation", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "_state", "", "_state$annotations", "()V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "countOrElement", "delegate", "getDelegate", "()Lkotlin/coroutines/Continuation;", "dispatchYield", "", "value", "dispatchYield$kotlinx_coroutines_core", "(Ljava/lang/Object;)V", "resumeCancellable", "resumeCancellableWithException", "exception", "", "resumeCancelled", "", "resumeUndispatched", "resumeUndispatchedWithException", "resumeWith", "result", "Lkotlin/Result;", "takeState", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: Dispatched.kt */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements Continuation<T> {
    @JvmField
    @Nullable
    public Object _state = DispatchedKt.UNDEFINED;
    @JvmField
    @NotNull
    public final Continuation<T> continuation;
    @JvmField
    @NotNull
    public final Object countOrElement = ThreadContextKt.threadContextElements(getContext());
    @JvmField
    @NotNull
    public final CoroutineDispatcher dispatcher;

    public static /* synthetic */ void _state$annotations() {
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.continuation.getContext();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: kotlin.coroutines.Continuation<? super T> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DispatchedContinuation(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Continuation<? super T> continuation2) {
        super(0);
        Intrinsics.checkParameterIsNotNull(coroutineDispatcher, "dispatcher");
        Intrinsics.checkParameterIsNotNull(continuation2, "continuation");
        this.dispatcher = coroutineDispatcher;
        this.continuation = continuation2;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @Nullable
    public Object takeState() {
        Object obj = this._state;
        if (obj != DispatchedKt.UNDEFINED) {
            this._state = DispatchedKt.UNDEFINED;
            return obj;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlinx.coroutines.DispatchedTask
    @NotNull
    public Continuation<T> getDelegate() {
        return this;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        CoroutineContext context = this.continuation.getContext();
        Object state = CompletedExceptionallyKt.toState(obj);
        if (this.dispatcher.isDispatchNeeded(context)) {
            this._state = state;
            this.resumeMode = 0;
            this.dispatcher.dispatch(context, this);
            return;
        }
        UndispatchedEventLoop undispatchedEventLoop = UndispatchedEventLoop.INSTANCE;
        UndispatchedEventLoop.EventLoop eventLoop = UndispatchedEventLoop.threadLocalEventLoop.get();
        if (eventLoop.isActive) {
            this._state = state;
            this.resumeMode = 0;
            eventLoop.queue.addLast(this);
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventLoop, "eventLoop");
        try {
            eventLoop.isActive = true;
            CoroutineContext context2 = getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context2, this.countOrElement);
            try {
                this.continuation.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                while (true) {
                    Runnable removeFirstOrNull = eventLoop.queue.removeFirstOrNull();
                    if (removeFirstOrNull != null) {
                        removeFirstOrNull.run();
                    } else {
                        eventLoop.isActive = false;
                        return;
                    }
                }
            } finally {
                ThreadContextKt.restoreThreadContext(context2, updateThreadContext);
            }
        } catch (Throwable th) {
            eventLoop.isActive = false;
            throw th;
        }
    }

    public final void resumeCancellable(T t) {
        boolean z;
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = t;
            this.resumeMode = 1;
            this.dispatcher.dispatch(getContext(), this);
            return;
        }
        UndispatchedEventLoop undispatchedEventLoop = UndispatchedEventLoop.INSTANCE;
        UndispatchedEventLoop.EventLoop eventLoop = UndispatchedEventLoop.threadLocalEventLoop.get();
        if (eventLoop.isActive) {
            this._state = t;
            this.resumeMode = 1;
            eventLoop.queue.addLast(this);
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventLoop, "eventLoop");
        try {
            eventLoop.isActive = true;
            Job job = (Job) getContext().get(Job.Key);
            if (job == null || job.isActive()) {
                z = false;
            } else {
                Result.Companion companion = Result.Companion;
                resumeWith(Result.m4constructorimpl(ResultKt.createFailure(job.getCancellationException())));
                z = true;
            }
            if (!z) {
                CoroutineContext context = getContext();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
                try {
                    Continuation<T> continuation2 = this.continuation;
                    Result.Companion companion2 = Result.Companion;
                    continuation2.resumeWith(Result.m4constructorimpl(t));
                    Unit unit = Unit.INSTANCE;
                } finally {
                    InlineMarker.finallyStart(1);
                    ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                    InlineMarker.finallyEnd(1);
                }
            }
            while (true) {
                Runnable removeFirstOrNull = eventLoop.queue.removeFirstOrNull();
                if (removeFirstOrNull != null) {
                    removeFirstOrNull.run();
                } else {
                    InlineMarker.finallyStart(1);
                    eventLoop.isActive = false;
                    InlineMarker.finallyEnd(1);
                    return;
                }
            }
        } catch (Throwable th) {
            InlineMarker.finallyStart(1);
            eventLoop.isActive = false;
            InlineMarker.finallyEnd(1);
            throw th;
        }
    }

    public final void resumeCancellableWithException(@NotNull Throwable th) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(th, "exception");
        CoroutineContext context = this.continuation.getContext();
        CompletedExceptionally completedExceptionally = new CompletedExceptionally(th);
        if (this.dispatcher.isDispatchNeeded(context)) {
            this._state = new CompletedExceptionally(th);
            this.resumeMode = 1;
            this.dispatcher.dispatch(context, this);
            return;
        }
        UndispatchedEventLoop undispatchedEventLoop = UndispatchedEventLoop.INSTANCE;
        UndispatchedEventLoop.EventLoop eventLoop = UndispatchedEventLoop.threadLocalEventLoop.get();
        if (eventLoop.isActive) {
            this._state = completedExceptionally;
            this.resumeMode = 1;
            eventLoop.queue.addLast(this);
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventLoop, "eventLoop");
        try {
            eventLoop.isActive = true;
            Job job = (Job) getContext().get(Job.Key);
            if (job == null || job.isActive()) {
                z = false;
            } else {
                Result.Companion companion = Result.Companion;
                resumeWith(Result.m4constructorimpl(ResultKt.createFailure(job.getCancellationException())));
                z = true;
            }
            if (!z) {
                CoroutineContext context2 = getContext();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context2, this.countOrElement);
                try {
                    Continuation<T> continuation2 = this.continuation;
                    Result.Companion companion2 = Result.Companion;
                    continuation2.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
                    Unit unit = Unit.INSTANCE;
                } finally {
                    InlineMarker.finallyStart(1);
                    ThreadContextKt.restoreThreadContext(context2, updateThreadContext);
                    InlineMarker.finallyEnd(1);
                }
            }
            while (true) {
                Runnable removeFirstOrNull = eventLoop.queue.removeFirstOrNull();
                if (removeFirstOrNull != null) {
                    removeFirstOrNull.run();
                } else {
                    InlineMarker.finallyStart(1);
                    eventLoop.isActive = false;
                    InlineMarker.finallyEnd(1);
                    return;
                }
            }
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            eventLoop.isActive = false;
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    public final boolean resumeCancelled() {
        Job job = (Job) getContext().get(Job.Key);
        if (job == null || job.isActive()) {
            return false;
        }
        Result.Companion companion = Result.Companion;
        resumeWith(Result.m4constructorimpl(ResultKt.createFailure(job.getCancellationException())));
        return true;
    }

    public final void resumeUndispatched(T t) {
        CoroutineContext context = getContext();
        Object updateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
        try {
            Continuation<T> continuation2 = this.continuation;
            Result.Companion companion = Result.Companion;
            continuation2.resumeWith(Result.m4constructorimpl(t));
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            InlineMarker.finallyEnd(1);
        }
    }

    public final void resumeUndispatchedWithException(@NotNull Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "exception");
        CoroutineContext context = getContext();
        Object updateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
        try {
            Continuation<T> continuation2 = this.continuation;
            Result.Companion companion = Result.Companion;
            continuation2.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(th)));
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            InlineMarker.finallyEnd(1);
        }
    }

    public final void dispatchYield$kotlinx_coroutines_core(T t) {
        CoroutineContext context = this.continuation.getContext();
        this._state = t;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(context, this);
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + DebugKt.toDebugString(this.continuation) + ']';
    }
}
