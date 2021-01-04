package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.TickerChannelsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 13})
@DebugMetadata(c = "kotlinx/coroutines/channels/TickerChannelsKt$ticker$3", f = "TickerChannels.kt", i = {}, l = {70, 73, 74}, m = "invokeSuspend", n = {}, s = {})
/* compiled from: TickerChannels.kt */
final class TickerChannelsKt$ticker$3 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $delayMillis;
    final /* synthetic */ long $initialDelayMillis;
    final /* synthetic */ TickerMode $mode;
    int label;
    private ProducerScope p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    TickerChannelsKt$ticker$3(TickerMode tickerMode, long j, long j2, Continuation continuation) {
        super(2, continuation);
        this.$mode = tickerMode;
        this.$delayMillis = j;
        this.$initialDelayMillis = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        TickerChannelsKt$ticker$3 tickerChannelsKt$ticker$3 = new TickerChannelsKt$ticker$3(this.$mode, this.$delayMillis, this.$initialDelayMillis, continuation);
        tickerChannelsKt$ticker$3.p$ = (ProducerScope) obj;
        return tickerChannelsKt$ticker$3;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((TickerChannelsKt$ticker$3) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                if (!(obj instanceof Result.Failure)) {
                    ProducerScope producerScope = this.p$;
                    switch (TickerChannelsKt.WhenMappings.$EnumSwitchMapping$0[this.$mode.ordinal()]) {
                        case 1:
                            long j = this.$delayMillis;
                            long j2 = this.$initialDelayMillis;
                            SendChannel channel = producerScope.getChannel();
                            this.label = 1;
                            if (TickerChannelsKt.fixedPeriodTicker(j, j2, channel, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 2:
                            long j3 = this.$delayMillis;
                            long j4 = this.$initialDelayMillis;
                            SendChannel channel2 = producerScope.getChannel();
                            this.label = 2;
                            if (TickerChannelsKt.fixedDelayTicker(j3, j4, channel2, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                    }
                } else {
                    throw ((Result.Failure) obj).exception;
                }
            case 1:
                if (obj instanceof Result.Failure) {
                    throw ((Result.Failure) obj).exception;
                }
                break;
            case 2:
                if (obj instanceof Result.Failure) {
                    throw ((Result.Failure) obj).exception;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
