package kotlinx.coroutines;

import kotlin.TypeCastException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final /* synthetic */ class BuildersKt__BuildersKt {
    public static /* synthetic */ Object runBlocking$default(CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return BuildersKt.runBlocking(coroutineContext, function2);
    }

    public static final <T> T runBlocking(CoroutineContext coroutineContext, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "block");
        Thread currentThread = Thread.currentThread();
        CoroutineContext.Element element = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        boolean z = element == null;
        if (z) {
            Intrinsics.checkExpressionValueIsNotNull(currentThread, "currentThread");
            element = new BlockingEventLoop(currentThread);
        } else if (!(element instanceof EventLoop)) {
            element = null;
        }
        EventLoop eventLoop = (EventLoop) element;
        GlobalScope globalScope = GlobalScope.INSTANCE;
        if (z) {
            if (eventLoop != null) {
                coroutineContext = coroutineContext.plus(eventLoop);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.ContinuationInterceptor");
            }
        }
        CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(globalScope, coroutineContext);
        Intrinsics.checkExpressionValueIsNotNull(currentThread, "currentThread");
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(newCoroutineContext, currentThread, eventLoop, z);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, function2);
        return (T) blockingCoroutine.joinBlocking();
    }
}
