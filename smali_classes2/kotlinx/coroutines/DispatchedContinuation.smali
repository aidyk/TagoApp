.class public final Lkotlinx/coroutines/DispatchedContinuation;
.super Lkotlinx/coroutines/DispatchedTask;
.source "Dispatched.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/DispatchedContinuation\n+ 2 Dispatched.kt\nkotlinx/coroutines/UndispatchedEventLoop\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,278:1\n151#1,12:333\n163#1,2:348\n165#1:351\n151#1,7:383\n169#1:390\n170#1,2:394\n172#1:397\n31#2,15:279\n61#2,3:294\n64#2,2:302\n76#2:304\n66#2,9:305\n46#2:314\n31#2,15:315\n61#2,3:330\n64#2,2:352\n76#2:354\n66#2,9:355\n46#2:364\n31#2,15:365\n61#2,3:380\n64#2,2:398\n76#2:400\n66#2,9:401\n46#2:410\n67#3,5:297\n67#3,3:345\n71#3:350\n67#3,3:391\n71#3:396\n67#3,5:411\n67#3,5:416\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/DispatchedContinuation\n*L\n124#1,12:333\n124#1,2:348\n124#1:351\n141#1,7:383\n141#1:390\n141#1,2:394\n141#1:397\n109#1,15:279\n109#1,3:294\n109#1,2:302\n109#1:304\n109#1,9:305\n109#1:314\n124#1,15:315\n124#1,3:330\n124#1,2:352\n124#1:354\n124#1,9:355\n124#1:364\n141#1,15:365\n141#1,3:380\n141#1,2:398\n141#1:400\n141#1,9:401\n141#1:410\n109#1,5:297\n124#1,3:345\n124#1:350\n141#1,3:391\n141#1:396\n162#1,5:411\n169#1,5:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0002\u0010\u0007J\u0017\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\u0086\u0008\u00a2\u0006\u0002\u0010\u0018J\u0011\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0086\u0008J\t\u0010\u001d\u001a\u00020\u001eH\u0086\u0008J\u0016\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\u0086\u0008\u00a2\u0006\u0002\u0010\u0018J\u0011\u0010 \u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0086\u0008J\u001e\u0010!\u001a\u00020\u00152\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J\n\u0010$\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010%\u001a\u00020&H\u0016R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\t8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlin/coroutines/Continuation;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "continuation",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V",
        "_state",
        "",
        "_state$annotations",
        "()V",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "countOrElement",
        "delegate",
        "getDelegate",
        "()Lkotlin/coroutines/Continuation;",
        "dispatchYield",
        "",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)V",
        "resumeCancellable",
        "resumeCancellableWithException",
        "exception",
        "",
        "resumeCancelled",
        "",
        "resumeUndispatched",
        "resumeUndispatchedWithException",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "takeState",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field public _state:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final countOrElement:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 87
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic _state$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dispatchYield$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 177
    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 178
    iput p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 179
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 99
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final resumeCancellable(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 121
    iput v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 122
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 124
    :cond_0
    sget-object v0, Lkotlinx/coroutines/UndispatchedEventLoop;->INSTANCE:Lkotlinx/coroutines/UndispatchedEventLoop;

    .line 316
    sget-object v0, Lkotlinx/coroutines/UndispatchedEventLoop;->threadLocalEventLoop:Lkotlinx/coroutines/internal/ThreadLocalWithInitialValue;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadLocalWithInitialValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;

    .line 317
    iget-boolean v2, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    if-eqz v2, :cond_1

    .line 323
    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 324
    iput v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 325
    iget-object p1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/ArrayQueue;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const-string v2, "eventLoop"

    .line 329
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 331
    :try_start_0
    iput-boolean v1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    .line 333
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v4, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_2

    .line 334
    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 335
    invoke-interface {v3}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 344
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 345
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 349
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 350
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    .line 353
    :cond_3
    :goto_1
    iget-object p1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ArrayQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 355
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 353
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 354
    iput-boolean v2, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 362
    :try_start_3
    iget-object v3, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/ArrayQueue;->clear()V

    .line 363
    new-instance v3, Lkotlinx/coroutines/DispatchException;

    const-string v4, "Unexpected exception in undispatched event loop, clearing pending tasks"

    invoke-direct {v3, v4, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 354
    iput-boolean v2, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public final resumeCancellableWithException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 135
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    .line 136
    iget-object v2, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 137
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 138
    iput v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 139
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 141
    :cond_0
    sget-object v0, Lkotlinx/coroutines/UndispatchedEventLoop;->INSTANCE:Lkotlinx/coroutines/UndispatchedEventLoop;

    .line 366
    sget-object v0, Lkotlinx/coroutines/UndispatchedEventLoop;->threadLocalEventLoop:Lkotlinx/coroutines/internal/ThreadLocalWithInitialValue;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadLocalWithInitialValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;

    .line 367
    iget-boolean v2, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    if-eqz v2, :cond_1

    .line 373
    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 374
    iput v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 375
    iget-object p1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/ArrayQueue;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "eventLoop"

    .line 379
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 381
    :try_start_0
    iput-boolean v3, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    .line 383
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v4, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v2, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_2

    .line 384
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 390
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    iget-object v4, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 391
    invoke-static {v2, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 394
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 395
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 396
    invoke-static {v2, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v2, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    .line 399
    :cond_3
    :goto_1
    iget-object p1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ArrayQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 401
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 399
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 400
    iput-boolean v1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 408
    :try_start_3
    iget-object v2, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ArrayQueue;->clear()V

    .line 409
    new-instance v2, Lkotlinx/coroutines/DispatchException;

    const-string v4, "Unexpected exception in undispatched event loop, clearing pending tasks"

    invoke-direct {v2, v4, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 400
    iput-boolean v1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public final resumeCancelled()Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final resumeUndispatched(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 411
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 163
    :try_start_0
    iget-object v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 164
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 415
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public final resumeUndispatchedWithException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 416
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 170
    :try_start_0
    iget-object v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 171
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 420
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 102
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 103
    invoke-static {p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->toState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 105
    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 106
    iput v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 107
    iget-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 109
    :cond_0
    sget-object v0, Lkotlinx/coroutines/UndispatchedEventLoop;->INSTANCE:Lkotlinx/coroutines/UndispatchedEventLoop;

    .line 280
    sget-object v0, Lkotlinx/coroutines/UndispatchedEventLoop;->threadLocalEventLoop:Lkotlinx/coroutines/internal/ThreadLocalWithInitialValue;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadLocalWithInitialValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;

    .line 281
    iget-boolean v2, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    if-eqz v2, :cond_1

    .line 287
    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 288
    iput v3, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 289
    iget-object p1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/ArrayQueue;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v1, "eventLoop"

    .line 293
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 295
    :try_start_0
    iput-boolean v1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    .line 110
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 297
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v4, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 112
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 303
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ArrayQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 305
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 304
    :cond_2
    iput-boolean v3, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 301
    :try_start_3
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 312
    :try_start_4
    iget-object v1, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->queue:Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ArrayQueue;->clear()V

    .line 313
    new-instance v1, Lkotlinx/coroutines/DispatchException;

    const-string v2, "Unexpected exception in undispatched event loop, clearing pending tasks"

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 304
    :goto_2
    iput-boolean v3, v0, Lkotlinx/coroutines/UndispatchedEventLoop$EventLoop;->isActive:Z

    throw p1
.end method

.method public takeState()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 93
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 94
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
