package kotlinx.coroutines.channels;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2-\b\u0002\u0010\n\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bj\u0004\u0018\u0001`\u00112-\u0010\u0012\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0013¢\u0006\u0002\b\u0017H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"actor", "Lkotlinx/coroutines/channels/SendChannel;", "E", "Lkotlinx/coroutines/CoroutineScope;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", TtmlNode.START, "Lkotlinx/coroutines/CoroutineStart;", "onCompletion", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/ActorScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/SendChannel;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 13})
/* compiled from: Actor.kt */
public final class ActorKt {
    @ObsoleteCoroutinesApi
    @NotNull
    public static /* synthetic */ SendChannel actor$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, int i, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        int i3 = (i2 & 2) != 0 ? 0 : i;
        if ((i2 & 4) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        if ((i2 & 8) != 0) {
            function1 = null;
        }
        return actor(coroutineScope, coroutineContext, i3, coroutineStart, function1, function2);
    }

    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> SendChannel<E> actor(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, int i, @NotNull CoroutineStart coroutineStart, @Nullable Function1<? super Throwable, Unit> function1, @NotNull Function2<? super ActorScope<E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        LazyActorCoroutine lazyActorCoroutine;
        Intrinsics.checkParameterIsNotNull(coroutineScope, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(coroutineStart, TtmlNode.START);
        Intrinsics.checkParameterIsNotNull(function2, "block");
        CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
        Channel Channel = ChannelKt.Channel(i);
        if (coroutineStart.isLazy()) {
            lazyActorCoroutine = new LazyActorCoroutine(newCoroutineContext, Channel, function2);
        } else {
            lazyActorCoroutine = new ActorCoroutine(newCoroutineContext, Channel, true);
        }
        if (function1 != null) {
            lazyActorCoroutine.invokeOnCompletion(function1);
        }
        lazyActorCoroutine.start(coroutineStart, lazyActorCoroutine, function2);
        return lazyActorCoroutine;
    }
}
