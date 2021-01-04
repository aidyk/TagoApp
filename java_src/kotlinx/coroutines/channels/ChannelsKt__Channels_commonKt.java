package kotlinx.coroutines.channels;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

public final /* synthetic */ class ChannelsKt__Channels_commonKt {
    public static final <E, R> R consume(BroadcastChannel<E> broadcastChannel, Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(broadcastChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "block");
        ReceiveChannel<E> openSubscription = broadcastChannel.openSubscription();
        try {
            return (R) function1.invoke(openSubscription);
        } finally {
            InlineMarker.finallyStart(1);
            openSubscription.cancel();
            InlineMarker.finallyEnd(1);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x009f A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object consumeEach(kotlinx.coroutines.channels.BroadcastChannel<E> r9, kotlin.jvm.functions.Function1<? super E, kotlin.Unit> r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
        // Method dump skipped, instructions count: 238
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.consumeEach(kotlinx.coroutines.channels.BroadcastChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Function1<Throwable, Unit> consumes(ReceiveChannel<?> receiveChannel) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        return new ChannelsKt__Channels_commonKt$consumes$1(receiveChannel);
    }

    public static final Function1<Throwable, Unit> consumesAll(ReceiveChannel<?>... receiveChannelArr) {
        Intrinsics.checkParameterIsNotNull(receiveChannelArr, "channels");
        return new ChannelsKt__Channels_commonKt$consumesAll$1(receiveChannelArr);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0029, code lost:
        throw r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001c, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0020, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r2.cancel(r0);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R> R consume(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r2, kotlin.jvm.functions.Function1<? super kotlinx.coroutines.channels.ReceiveChannel<? extends E>, ? extends R> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "block"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            java.lang.Object r3 = r3.invoke(r2)     // Catch:{ Throwable -> 0x001e }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r2.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r3
        L_0x001c:
            r3 = move-exception
            goto L_0x0020
        L_0x001e:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x001c }
        L_0x0020:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r2.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.consume(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x009d A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object consumeEach(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, kotlin.jvm.functions.Function1<? super E, kotlin.Unit> r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
        // Method dump skipped, instructions count: 242
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.consumeEach(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c7 A[Catch:{ Throwable -> 0x010b }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00c8 A[Catch:{ Throwable -> 0x010b }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d3 A[Catch:{ Throwable -> 0x010b }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object consumeEachIndexed(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super kotlin.collections.IndexedValue<? extends E>, kotlin.Unit> r17, kotlin.coroutines.Continuation<? super kotlin.Unit> r18) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.consumeEachIndexed(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f0  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object elementAt(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, int r13, kotlin.coroutines.Continuation<? super E> r14) {
        /*
        // Method dump skipped, instructions count: 344
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.elementAt(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object elementAtOrElse(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, int r12, kotlin.jvm.functions.Function1<? super java.lang.Integer, ? extends E> r13, kotlin.coroutines.Continuation<? super E> r14) {
        /*
        // Method dump skipped, instructions count: 306
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.elementAtOrElse(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b0  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object elementAtOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, int r12, kotlin.coroutines.Continuation<? super E> r13) {
        /*
        // Method dump skipped, instructions count: 264
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.elementAtOrNull(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object find(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super E> r15) {
        /*
        // Method dump skipped, instructions count: 294
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.find(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00fd  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object findLast(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super E> r15) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.findLast(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object first(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r8, kotlin.coroutines.Continuation<? super E> r9) {
        /*
        // Method dump skipped, instructions count: 232
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.first(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object first(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super E> r13) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.first(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00c8, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00c9, code lost:
        r4 = r10;
        r10 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00cc, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00cd, code lost:
        r1 = r9;
        r9 = r10;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00cc A[ExcHandler: Throwable (r10v4 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r9 
      PHI: (r9v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r9v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:39:0x00a2, B:40:?, B:34:0x0085, B:35:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:34:0x0085] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object firstOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, kotlin.coroutines.Continuation<? super E> r10) {
        /*
        // Method dump skipped, instructions count: 228
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.firstOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object firstOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super E> r14) {
        /*
        // Method dump skipped, instructions count: 280
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.firstOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0059  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object indexOf(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, E r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
        // Method dump skipped, instructions count: 286
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.indexOf(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00be  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cc  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object indexOfFirst(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super java.lang.Integer> r15) {
        /*
        // Method dump skipped, instructions count: 314
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.indexOfFirst(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00dc A[Catch:{ Throwable -> 0x0137 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00dd A[Catch:{ Throwable -> 0x0137 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ed A[Catch:{ Throwable -> 0x0137 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x011a A[Catch:{ Throwable -> 0x0137 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object indexOfLast(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r17, kotlin.coroutines.Continuation<? super java.lang.Integer> r18) {
        /*
        // Method dump skipped, instructions count: 348
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.indexOfLast(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00c5  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x011b A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x011c  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0129  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0145  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object last(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, kotlin.coroutines.Continuation<? super E> r10) {
        /*
        // Method dump skipped, instructions count: 366
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.last(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00da A[Catch:{ Throwable -> 0x0138 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00db A[Catch:{ Throwable -> 0x0138 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ea A[Catch:{ Throwable -> 0x0138 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0116 A[Catch:{ Throwable -> 0x0138 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x012b  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object last(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r17, kotlin.coroutines.Continuation<? super E> r18) {
        /*
        // Method dump skipped, instructions count: 350
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.last(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d8 A[Catch:{ Throwable -> 0x0127 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d9 A[Catch:{ Throwable -> 0x0127 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00e9 A[Catch:{ Throwable -> 0x0127 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0110 A[Catch:{ Throwable -> 0x0127 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object lastIndexOf(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, E r17, kotlin.coroutines.Continuation<? super java.lang.Integer> r18) {
        /*
        // Method dump skipped, instructions count: 326
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.lastIndexOf(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0155, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0156, code lost:
        r4 = r9;
        r3 = r10;
        r9 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x015a, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x015b, code lost:
        r3 = r10;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0128 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0129  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x015a A[ExcHandler: Throwable (r10v4 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r9 
      PHI: (r9v5 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r9v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:49:0x00ef, B:50:?, B:44:0x00d2, B:45:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:44:0x00d2] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object lastOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, kotlin.coroutines.Continuation<? super E> r10) {
        /*
        // Method dump skipped, instructions count: 376
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.lastOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00bb A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00bc  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f0  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object lastOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super E> r14) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.lastOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00f6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x010f  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object single(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r8, kotlin.coroutines.Continuation<? super E> r9) {
        /*
        // Method dump skipped, instructions count: 314
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.single(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00da A[Catch:{ Throwable -> 0x0147 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00db A[Catch:{ Throwable -> 0x0147 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ea A[Catch:{ Throwable -> 0x0147 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0116 A[Catch:{ Throwable -> 0x0147 }] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x013d  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object single(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r17, kotlin.coroutines.Continuation<? super E> r18) {
        /*
        // Method dump skipped, instructions count: 364
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.single(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0120, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0121, code lost:
        r1 = r10;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x007d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0103 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x010f  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0113  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0120 A[ExcHandler: Throwable (r10v3 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r9 
      PHI: (r9v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r9v5 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v5 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v6 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v6 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:58:0x0107, B:59:?, B:45:0x00cb, B:46:?, B:40:0x00ae, B:41:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:45:0x00cb] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object singleOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, kotlin.coroutines.Continuation<? super E> r10) {
        /*
        // Method dump skipped, instructions count: 316
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.singleOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00e0 A[Catch:{ Throwable -> 0x014a }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e1 A[Catch:{ Throwable -> 0x014a }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00f5 A[Catch:{ Throwable -> 0x014a }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0123 A[Catch:{ Throwable -> 0x014a }] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0146 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0147  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object singleOrNull(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r19, kotlin.coroutines.Continuation<? super E> r20) {
        /*
        // Method dump skipped, instructions count: 368
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.singleOrNull(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel drop$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.drop(receiveChannel, i, coroutineContext);
    }

    public static final <E> ReceiveChannel<E> drop(ReceiveChannel<? extends E> receiveChannel, int i, CoroutineContext coroutineContext) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$drop$1(receiveChannel, i, null), 2, null);
    }

    public static /* synthetic */ ReceiveChannel dropWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.dropWhile(receiveChannel, coroutineContext, function2);
    }

    public static final <E> ReceiveChannel<E> dropWhile(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$dropWhile$1(receiveChannel, function2, null), 2, null);
    }

    public static /* synthetic */ ReceiveChannel filter$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.filter(receiveChannel, coroutineContext, function2);
    }

    public static final <E> ReceiveChannel<E> filter(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$filter$1(receiveChannel, function2, null), 2, null);
    }

    public static /* synthetic */ ReceiveChannel filterIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.filterIndexed(receiveChannel, coroutineContext, function3);
    }

    public static final <E> ReceiveChannel<E> filterIndexed(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function3<? super Integer, ? super E, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function3, "predicate");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$filterIndexed$1(receiveChannel, function3, null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX DEBUG: Type inference failed for r4v2. Raw type applied. Possible types: ? super E */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.util.Collection] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e3 A[Catch:{ Throwable -> 0x0145 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e4 A[Catch:{ Throwable -> 0x0145 }] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f1 A[Catch:{ Throwable -> 0x0145 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0132 A[Catch:{ Throwable -> 0x0145 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object filterIndexedTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r17, C r18, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, java.lang.Boolean> r19, kotlin.coroutines.Continuation<? super C> r20) {
        /*
        // Method dump skipped, instructions count: 366
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterIndexedTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX DEBUG: Type inference failed for r15v1. Raw type applied. Possible types: ? super E, java.lang.Object */
    /* JADX WARN: Type inference failed for: r12v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r12v10, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0073  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0128 A[Catch:{ Throwable -> 0x01b8 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0129 A[Catch:{ Throwable -> 0x01b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0136 A[Catch:{ Throwable -> 0x01b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0179 A[Catch:{ Throwable -> 0x01b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x01a5 A[Catch:{ Throwable -> 0x01b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object filterIndexedTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, C r19, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, java.lang.Boolean> r20, kotlin.coroutines.Continuation<? super C> r21) {
        /*
        // Method dump skipped, instructions count: 482
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterIndexedTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel filterNot$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.filterNot(receiveChannel, coroutineContext, function2);
    }

    public static final <E> ReceiveChannel<E> filterNot(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        return ChannelsKt.filter(receiveChannel, coroutineContext, new ChannelsKt__Channels_commonKt$filterNot$1(function2, null));
    }

    public static final <E> ReceiveChannel<E> filterNotNull(ReceiveChannel<? extends E> receiveChannel) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        ReceiveChannel<E> receiveChannel2 = filter$default(receiveChannel, null, new ChannelsKt__Channels_commonKt$filterNotNull$1(null), 1, null);
        if (receiveChannel2 != null) {
            return receiveChannel2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.Collection] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a8 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00cf  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, C r10, kotlin.coroutines.Continuation<? super C> r11) {
        /*
        // Method dump skipped, instructions count: 246
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:48:0x0107 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r5v10, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b9  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00e2 A[Catch:{ Throwable -> 0x0130, all -> 0x012e }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e3 A[Catch:{ Throwable -> 0x0130, all -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00ef A[Catch:{ Throwable -> 0x0130, all -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0109 A[Catch:{ Throwable -> 0x0130, all -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, C r10, kotlin.coroutines.Continuation<? super C> r11) {
        /*
        // Method dump skipped, instructions count: 338
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Collection] */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00fd, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00fe, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00fd A[ExcHandler: Throwable (r11v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
      PHI: (r10v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object filterNotTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 284
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterNotTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r6v10, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f1 A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00f2 A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00fe A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0124 A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object filterNotTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 382
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterNotTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Collection] */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00fd, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00fe, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00fd A[ExcHandler: Throwable (r11v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
      PHI: (r10v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object filterTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 284
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r6v10, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f1 A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00f2 A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00fe A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0124 A[Catch:{ Throwable -> 0x0153, all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object filterTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 382
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel take$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.take(receiveChannel, i, coroutineContext);
    }

    public static final <E> ReceiveChannel<E> take(ReceiveChannel<? extends E> receiveChannel, int i, CoroutineContext coroutineContext) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$take$1(receiveChannel, i, null), 2, null);
    }

    public static /* synthetic */ ReceiveChannel takeWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.takeWhile(receiveChannel, coroutineContext, function2);
    }

    public static final <E> ReceiveChannel<E> takeWhile(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$takeWhile$1(receiveChannel, function2, null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Map] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, V> java.lang.Object associate(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r13, kotlin.jvm.functions.Function1<? super E, ? extends kotlin.Pair<? extends K, ? extends V>> r14, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends V>> r15) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associate(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004f, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0058, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x004a, code lost:
        r7 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object associate$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x004c }
        L_0x000f:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r5 = r3.hasNext(r8)     // Catch:{ Throwable -> 0x004c }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x004c }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004c }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004c }
            if (r5 == 0) goto L_0x003e
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r4 = r3.next(r8)     // Catch:{ Throwable -> 0x004c }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r4 = r7.invoke(r4)     // Catch:{ Throwable -> 0x004c }
            kotlin.Pair r4 = (kotlin.Pair) r4     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r5 = r4.getFirst()     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r4 = r4.getSecond()     // Catch:{ Throwable -> 0x004c }
            r0.put(r5, r4)     // Catch:{ Throwable -> 0x004c }
            goto L_0x000f
        L_0x003e:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x004c }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x004a:
            r7 = move-exception
            goto L_0x004f
        L_0x004c:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x004a }
        L_0x004f:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associate$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Map] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K> java.lang.Object associateBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r13, kotlin.jvm.functions.Function1<? super E, ? extends K> r14, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends E>> r15) {
        /*
        // Method dump skipped, instructions count: 294
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0045, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004e, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0040, code lost:
        r7 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object associateBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x0042 }
        L_0x000f:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r3.hasNext(r8)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0042 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0042 }
            if (r5 == 0) goto L_0x0034
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r4 = r3.next(r8)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r7.invoke(r4)     // Catch:{ Throwable -> 0x0042 }
            r0.put(r5, r4)     // Catch:{ Throwable -> 0x0042 }
            goto L_0x000f
        L_0x0034:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0040:
            r7 = move-exception
            goto L_0x0045
        L_0x0042:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x0040 }
        L_0x0045:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00dd A[Catch:{ Throwable -> 0x0120 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00de A[Catch:{ Throwable -> 0x0120 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00e9 A[Catch:{ Throwable -> 0x0120 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, V> java.lang.Object associateBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super E, ? extends K> r17, kotlin.jvm.functions.Function1<? super E, ? extends V> r18, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends V>> r19) {
        /*
        // Method dump skipped, instructions count: 326
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0049, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0052, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0044, code lost:
        r7 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object associateBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x0046 }
        L_0x000f:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r5 = r3.hasNext(r9)     // Catch:{ Throwable -> 0x0046 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0046 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0046 }
            if (r5 == 0) goto L_0x0038
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r4 = r3.next(r9)     // Catch:{ Throwable -> 0x0046 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r5 = r7.invoke(r4)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r4 = r8.invoke(r4)     // Catch:{ Throwable -> 0x0046 }
            r0.put(r5, r4)     // Catch:{ Throwable -> 0x0046 }
            goto L_0x000f
        L_0x0038:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0046 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0044:
            r7 = move-exception
            goto L_0x0049
        L_0x0046:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x0044 }
        L_0x0049:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Map] */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00f0, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00f1, code lost:
        r2 = r10;
        r10 = r11;
        r12 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f5, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f6, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f5 A[ExcHandler: Throwable (r11v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
      PHI: (r10v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, M extends java.util.Map<? super K, ? super E>> java.lang.Object associateByTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, M r11, kotlin.jvm.functions.Function1<? super E, ? extends K> r12, kotlin.coroutines.Continuation<? super M> r13) {
        /*
        // Method dump skipped, instructions count: 276
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateByTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Map] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c8 A[Catch:{ Throwable -> 0x010d, all -> 0x010b }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00c9 A[Catch:{ Throwable -> 0x010d, all -> 0x010b }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d4 A[Catch:{ Throwable -> 0x010d, all -> 0x010b }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object associateByTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, M r12, kotlin.jvm.functions.Function1<? super E, ? extends K> r13, kotlin.jvm.functions.Function1<? super E, ? extends V> r14, kotlin.coroutines.Continuation<? super M> r15) {
        /*
        // Method dump skipped, instructions count: 310
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateByTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Map] */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00fa, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00fb, code lost:
        r2 = r10;
        r10 = r11;
        r12 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00ff, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0100, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00ff A[ExcHandler: Throwable (r11v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
      PHI: (r10v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object associateTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, M r11, kotlin.jvm.functions.Function1<? super E, ? extends kotlin.Pair<? extends K, ? extends V>> r12, kotlin.coroutines.Continuation<? super M> r13) {
        /*
        // Method dump skipped, instructions count: 286
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r5v11, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00be  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00e9 A[Catch:{ Throwable -> 0x0144, all -> 0x0142 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ea A[Catch:{ Throwable -> 0x0144, all -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f9 A[Catch:{ Throwable -> 0x0144, all -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends kotlinx.coroutines.channels.SendChannel<? super E>> java.lang.Object toChannel(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, C r10, kotlin.coroutines.Continuation<? super C> r11) {
        /*
        // Method dump skipped, instructions count: 358
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.toChannel(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.Collection] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a8 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object toCollection(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, C r10, kotlin.coroutines.Continuation<? super C> r11) {
        /*
        // Method dump skipped, instructions count: 244
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.toCollection(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <E> Object toList(ReceiveChannel<? extends E> receiveChannel, Continuation<? super List<? extends E>> continuation) {
        return ChannelsKt.toMutableList(receiveChannel, continuation);
    }

    public static final <K, V> Object toMap(ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel, Continuation<? super Map<K, ? extends V>> continuation) {
        return ChannelsKt.toMap(receiveChannel, new LinkedHashMap(), continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.Map] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00ad A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object toMap(kotlinx.coroutines.channels.ReceiveChannel<? extends kotlin.Pair<? extends K, ? extends V>> r9, M r10, kotlin.coroutines.Continuation<? super M> r11) {
        /*
        // Method dump skipped, instructions count: 260
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.toMap(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <E> Object toMutableList(ReceiveChannel<? extends E> receiveChannel, Continuation<? super List<E>> continuation) {
        return ChannelsKt.toCollection(receiveChannel, new ArrayList(), continuation);
    }

    public static final <E> Object toSet(ReceiveChannel<? extends E> receiveChannel, Continuation<? super Set<? extends E>> continuation) {
        return ChannelsKt.toMutableSet(receiveChannel, continuation);
    }

    public static /* synthetic */ ReceiveChannel flatMap$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.flatMap(receiveChannel, coroutineContext, function2);
    }

    public static final <E, R> ReceiveChannel<R> flatMap(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super ReceiveChannel<? extends R>>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$flatMap$1(receiveChannel, function2, null), 2, null);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r14v2, resolved type: java.util.List */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d1 A[Catch:{ Throwable -> 0x011e }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d2 A[Catch:{ Throwable -> 0x011e }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00dd A[Catch:{ Throwable -> 0x011e }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0103 A[Catch:{ Throwable -> 0x011e }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K> java.lang.Object groupBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super E, ? extends K> r17, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends java.util.List<? extends E>>> r18) {
        /*
        // Method dump skipped, instructions count: 324
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0050, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0055, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005e, code lost:
        throw r8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object groupBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r7.iterator()     // Catch:{ Throwable -> 0x0052 }
        L_0x000f:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r5 = r3.hasNext(r9)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0052 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r5 == 0) goto L_0x0044
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r3.next(r9)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r5 = r8.invoke(r4)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r6 = r0.get(r5)     // Catch:{ Throwable -> 0x0052 }
            if (r6 != 0) goto L_0x003e
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0052 }
            r6.<init>()     // Catch:{ Throwable -> 0x0052 }
            r0.put(r5, r6)     // Catch:{ Throwable -> 0x0052 }
        L_0x003e:
            java.util.List r6 = (java.util.List) r6     // Catch:{ Throwable -> 0x0052 }
            r6.add(r4)     // Catch:{ Throwable -> 0x0052 }
            goto L_0x000f
        L_0x0044:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r7.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0050:
            r8 = move-exception
            goto L_0x0055
        L_0x0052:
            r8 = move-exception
            r1 = r8
            throw r1     // Catch:{ all -> 0x0050 }
        L_0x0055:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r7.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r15v2, resolved type: java.util.List */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00e1 A[Catch:{ Throwable -> 0x0136 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e2 A[Catch:{ Throwable -> 0x0136 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ef A[Catch:{ Throwable -> 0x0136 }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0117 A[Catch:{ Throwable -> 0x0136 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, V> java.lang.Object groupBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r17, kotlin.jvm.functions.Function1<? super E, ? extends K> r18, kotlin.jvm.functions.Function1<? super E, ? extends V> r19, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends java.util.List<? extends V>>> r20) {
        /*
        // Method dump skipped, instructions count: 348
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0054, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0059, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0062, code lost:
        throw r8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object groupBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.jvm.functions.Function1 r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r7.iterator()     // Catch:{ Throwable -> 0x0056 }
        L_0x000f:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r5 = r3.hasNext(r10)     // Catch:{ Throwable -> 0x0056 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0056 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0056 }
            if (r5 == 0) goto L_0x0048
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r4 = r3.next(r10)     // Catch:{ Throwable -> 0x0056 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r5 = r8.invoke(r4)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r6 = r0.get(r5)     // Catch:{ Throwable -> 0x0056 }
            if (r6 != 0) goto L_0x003e
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0056 }
            r6.<init>()     // Catch:{ Throwable -> 0x0056 }
            r0.put(r5, r6)     // Catch:{ Throwable -> 0x0056 }
        L_0x003e:
            java.util.List r6 = (java.util.List) r6     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r4 = r9.invoke(r4)     // Catch:{ Throwable -> 0x0056 }
            r6.add(r4)     // Catch:{ Throwable -> 0x0056 }
            goto L_0x000f
        L_0x0048:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0056 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r7.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0054:
            r8 = move-exception
            goto L_0x0059
        L_0x0056:
            r8 = move-exception
            r1 = r8
            throw r1     // Catch:{ all -> 0x0054 }
        L_0x0059:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r7.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.List] */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0100, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0101, code lost:
        r2 = r11;
        r11 = r12;
        r13 = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0105, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0106, code lost:
        r13 = r12;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0105 A[ExcHandler: Throwable (r12v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r11 
      PHI: (r11v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r11v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r11v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r11v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r11v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, M extends java.util.Map<? super K, java.util.List<E>>> java.lang.Object groupByTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, M r12, kotlin.jvm.functions.Function1<? super E, ? extends K> r13, kotlin.coroutines.Continuation<? super M> r14) {
        /*
        // Method dump skipped, instructions count: 292
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupByTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.util.Map] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cd A[Catch:{ Throwable -> 0x0120 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ce A[Catch:{ Throwable -> 0x0120 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00da A[Catch:{ Throwable -> 0x0120 }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0100 A[Catch:{ Throwable -> 0x0120 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, K, V, M extends java.util.Map<? super K, java.util.List<V>>> java.lang.Object groupByTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, M r17, kotlin.jvm.functions.Function1<? super E, ? extends K> r18, kotlin.jvm.functions.Function1<? super E, ? extends V> r19, kotlin.coroutines.Continuation<? super M> r20) {
        /*
        // Method dump skipped, instructions count: 326
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupByTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel map$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.map(receiveChannel, coroutineContext, function2);
    }

    public static final <E, R> ReceiveChannel<R> map(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$map$1(receiveChannel, function2, null), 2, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3);
    }

    public static final <E, R> ReceiveChannel<R> mapIndexed(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function3, "transform");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$mapIndexed$1(receiveChannel, function3, null), 2, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexedNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.mapIndexedNotNull(receiveChannel, coroutineContext, function3);
    }

    public static final <E, R> ReceiveChannel<R> mapIndexedNotNull(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function3, "transform");
        return ChannelsKt.filterNotNull(ChannelsKt.mapIndexed(receiveChannel, coroutineContext, function3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX DEBUG: Type inference failed for r4v2. Raw type applied. Possible types: ? super E */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.util.Collection] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e3 A[Catch:{ Throwable -> 0x0143 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e4 A[Catch:{ Throwable -> 0x0143 }] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f1 A[Catch:{ Throwable -> 0x0143 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x012c A[Catch:{ Throwable -> 0x0143 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object mapIndexedNotNullTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r17, C r18, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r19, kotlin.coroutines.Continuation<? super C> r20) {
        /*
        // Method dump skipped, instructions count: 364
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX DEBUG: Type inference failed for r15v1. Raw type applied. Possible types: ? super E, java.lang.Object */
    /* JADX WARN: Type inference failed for: r12v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r12v10, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x012a A[Catch:{ Throwable -> 0x01b6 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x012b A[Catch:{ Throwable -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0138 A[Catch:{ Throwable -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0175 A[Catch:{ Throwable -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x01a3 A[Catch:{ Throwable -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends kotlinx.coroutines.channels.SendChannel<? super R>> java.lang.Object mapIndexedNotNullTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, C r19, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r20, kotlin.coroutines.Continuation<? super C> r21) {
        /*
        // Method dump skipped, instructions count: 480
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.util.Collection] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d3 A[Catch:{ Throwable -> 0x011a }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d4 A[Catch:{ Throwable -> 0x011a }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00df A[Catch:{ Throwable -> 0x011a }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object mapIndexedTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, C r17, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r18, kotlin.coroutines.Continuation<? super C> r19) {
        /*
        // Method dump skipped, instructions count: 320
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r11v12, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00d6, code lost:
        r0 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d6 A[ExcHandler: Throwable (th java.lang.Throwable), PHI: r7 
      PHI: (r7v8 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r7v3 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r7v3 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r7v15 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:37:0x00fa, B:38:?, B:11:0x0057] A[DONT_GENERATE, DONT_INLINE], Splitter:B:11:0x0057] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0114 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0115  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x012a  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0173 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends kotlinx.coroutines.channels.SendChannel<? super R>> java.lang.Object mapIndexedTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, C r19, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r20, kotlin.coroutines.Continuation<? super C> r21) {
        /*
        // Method dump skipped, instructions count: 424
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel mapNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.mapNotNull(receiveChannel, coroutineContext, function2);
    }

    public static final <E, R> ReceiveChannel<R> mapNotNull(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        return ChannelsKt.filterNotNull(ChannelsKt.map(receiveChannel, coroutineContext, function2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Collection] */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f6, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f7, code lost:
        r2 = r10;
        r10 = r11;
        r12 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00fb, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00fc, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00fb A[ExcHandler: Throwable (r11v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
      PHI: (r10v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object mapNotNullTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, ? extends R> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 282
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v6, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r6v10, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f3 A[Catch:{ Throwable -> 0x0151, all -> 0x014f }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00f4 A[Catch:{ Throwable -> 0x0151, all -> 0x014f }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0100 A[Catch:{ Throwable -> 0x0151, all -> 0x014f }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0120 A[Catch:{ Throwable -> 0x0151, all -> 0x014f }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends kotlinx.coroutines.channels.SendChannel<? super R>> java.lang.Object mapNotNullTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, ? extends R> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 380
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapNotNullTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.Collection] */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00f0, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00f1, code lost:
        r2 = r10;
        r10 = r11;
        r12 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f5, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f6, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00b6 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f5 A[ExcHandler: Throwable (r11v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
      PHI: (r10v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r10v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:30:0x009e, B:31:?, B:27:0x0094, B:28:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:27:0x0094] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object mapTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, ? extends R> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
        // Method dump skipped, instructions count: 276
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapTo(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r6v11, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00bd, code lost:
        r11 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00c0, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00c1, code lost:
        r13 = r11;
        r11 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x015a, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x015b, code lost:
        r2 = r11;
        r11 = r12;
        r13 = r14;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c0 A[ExcHandler: Throwable (r11v12 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r2 
      PHI: (r2v9 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r2v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r2v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r2v18 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:35:0x00d9, B:36:?, B:11:0x0051] A[DONT_GENERATE, DONT_INLINE], Splitter:B:11:0x0051] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00c5  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00f1 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0140  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R, C extends kotlinx.coroutines.channels.SendChannel<? super R>> java.lang.Object mapTo(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, C r12, kotlin.jvm.functions.Function1<? super E, ? extends R> r13, kotlin.coroutines.Continuation<? super C> r14) {
        /*
        // Method dump skipped, instructions count: 384
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapTo(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ ReceiveChannel withIndex$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.withIndex(receiveChannel, coroutineContext);
    }

    public static final <E> ReceiveChannel<IndexedValue<E>> withIndex(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$withIndex$1(receiveChannel, null), 2, null);
    }

    public static final <E> ReceiveChannel<E> distinct(ReceiveChannel<? extends E> receiveChannel) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        return distinctBy$default(receiveChannel, null, new ChannelsKt__Channels_commonKt$distinct$1(null), 1, null);
    }

    public static /* synthetic */ ReceiveChannel distinctBy$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.distinctBy(receiveChannel, coroutineContext, function2);
    }

    public static final <E, K> ReceiveChannel<E> distinctBy(ReceiveChannel<? extends E> receiveChannel, CoroutineContext coroutineContext, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "selector");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumes(receiveChannel), new ChannelsKt__Channels_commonKt$distinctBy$1(receiveChannel, function2, null), 2, null);
    }

    public static final <E> Object toMutableSet(ReceiveChannel<? extends E> receiveChannel, Continuation<? super Set<E>> continuation) {
        return ChannelsKt.toCollection(receiveChannel, new LinkedHashSet(), continuation);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ed  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object all(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super java.lang.Boolean> r13) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.all(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object any(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
        // Method dump skipped, instructions count: 138
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.any(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object any(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super java.lang.Boolean> r13) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.any(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b9 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00c9  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object count(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, kotlin.coroutines.Continuation<? super java.lang.Integer> r13) {
        /*
        // Method dump skipped, instructions count: 274
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.count(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00bc A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object count(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
        // Method dump skipped, instructions count: 298
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.count(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r13v0, resolved type: R */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cd A[Catch:{ Throwable -> 0x0115, all -> 0x0113 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ce A[Catch:{ Throwable -> 0x0115, all -> 0x0113 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00dc A[Catch:{ Throwable -> 0x0115, all -> 0x0113 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R> java.lang.Object fold(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, R r13, kotlin.jvm.functions.Function2<? super R, ? super E, ? extends R> r14, kotlin.coroutines.Continuation<? super R> r15) {
        /*
        // Method dump skipped, instructions count: 318
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.fold(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r19v0, resolved type: R */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00e6 A[Catch:{ Throwable -> 0x0140 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e7 A[Catch:{ Throwable -> 0x0140 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00fa A[Catch:{ Throwable -> 0x0140 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R> java.lang.Object foldIndexed(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, R r19, kotlin.jvm.functions.Function3<? super java.lang.Integer, ? super R, ? super E, ? extends R> r20, kotlin.coroutines.Continuation<? super R> r21) {
        /*
        // Method dump skipped, instructions count: 358
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.foldIndexed(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0138  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0142  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0178 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0179  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x018d  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01ba  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x01bc  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R extends java.lang.Comparable<? super R>> java.lang.Object maxBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, kotlin.jvm.functions.Function1<? super E, ? extends R> r19, kotlin.coroutines.Continuation<? super E> r20) {
        /*
        // Method dump skipped, instructions count: 494
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.maxBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00d7, code lost:
        r9 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d8, code lost:
        r3 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00dc, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00dd, code lost:
        r3 = r9;
        r9 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0186, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0187, code lost:
        r2 = r9;
        r9 = r10;
        r3 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x018b, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x018c, code lost:
        r3 = r10;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:11:0x0047, B:35:0x00c7] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00dc A[ExcHandler: Throwable (r9v13 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r4 
      PHI: (r4v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r4v10 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r4v19 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:35:0x00c7, B:11:0x0047] A[DONT_GENERATE, DONT_INLINE], Splitter:B:11:0x0047] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0115  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0146 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0147  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x017a  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x018b A[ExcHandler: Throwable (r10v3 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r9 
      PHI: (r9v5 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r9v9 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v9 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:54:0x0109, B:55:?, B:49:0x00e8, B:50:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:49:0x00e8] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object maxWith(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, java.util.Comparator<? super E> r10, kotlin.coroutines.Continuation<? super E> r11) {
        /*
        // Method dump skipped, instructions count: 424
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.maxWith(kotlinx.coroutines.channels.ReceiveChannel, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0138  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0142  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0178 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0179  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x018d  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01ba  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x01bc  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E, R extends java.lang.Comparable<? super R>> java.lang.Object minBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, kotlin.jvm.functions.Function1<? super E, ? extends R> r19, kotlin.coroutines.Continuation<? super E> r20) {
        /*
        // Method dump skipped, instructions count: 494
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.minBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00d7, code lost:
        r9 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d8, code lost:
        r3 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00dc, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00dd, code lost:
        r3 = r9;
        r9 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0186, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0187, code lost:
        r2 = r9;
        r9 = r10;
        r3 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x018b, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x018c, code lost:
        r3 = r10;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:11:0x0047, B:35:0x00c7] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00dc A[ExcHandler: Throwable (r9v13 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r4 
      PHI: (r4v7 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r4v10 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r4v19 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:35:0x00c7, B:11:0x0047] A[DONT_GENERATE, DONT_INLINE], Splitter:B:11:0x0047] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0115  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0146 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0147  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x017a  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x018b A[ExcHandler: Throwable (r10v3 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r9 
      PHI: (r9v5 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r9v9 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v9 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r9v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:54:0x0109, B:55:?, B:49:0x00e8, B:50:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:49:0x00e8] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object minWith(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r9, java.util.Comparator<? super E> r10, kotlin.coroutines.Continuation<? super E> r11) {
        /*
        // Method dump skipped, instructions count: 424
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.minWith(kotlinx.coroutines.channels.ReceiveChannel, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x007f, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0080, code lost:
        r0 = r6;
        r6 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0084, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0085, code lost:
        r1 = r5;
        r5 = r6;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0084 A[ExcHandler: Throwable (r6v4 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r5 
      PHI: (r5v4 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) = (r5v6 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r5v6 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r5v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>), (r5v0 kotlinx.coroutines.channels.ReceiveChannel<? extends E>) binds: [B:28:0x006e, B:29:?, B:23:0x0056, B:24:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:23:0x0056] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object none(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
        // Method dump skipped, instructions count: 154
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.none(kotlinx.coroutines.channels.ReceiveChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ed  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object none(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super java.lang.Boolean> r13) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.none(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0149 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x014a  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015b  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0197  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <S, E extends S> java.lang.Object reduce(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r13, kotlin.jvm.functions.Function2<? super S, ? super E, ? extends S> r14, kotlin.coroutines.Continuation<? super S> r15) {
        /*
        // Method dump skipped, instructions count: 454
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.reduce(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0145 A[Catch:{ Throwable -> 0x01e2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0176 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0177  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01d6  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <S, E extends S> java.lang.Object reduceIndexed(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r18, kotlin.jvm.functions.Function3<? super java.lang.Integer, ? super S, ? super E, ? extends S> r19, kotlin.coroutines.Continuation<? super S> r20) {
        /*
        // Method dump skipped, instructions count: 514
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.reduceIndexed(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00bc A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object sumBy(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Integer> r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
        // Method dump skipped, instructions count: 296
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.sumBy(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cc A[Catch:{ Throwable -> 0x0118 }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00cd A[Catch:{ Throwable -> 0x0118 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00da A[Catch:{ Throwable -> 0x0118 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object sumByDouble(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r17, kotlin.jvm.functions.Function1<? super E, java.lang.Double> r18, kotlin.coroutines.Continuation<? super java.lang.Double> r19) {
        /*
        // Method dump skipped, instructions count: 318
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.sumByDouble(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <E> ReceiveChannel<E> requireNoNulls(ReceiveChannel<? extends E> receiveChannel) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        return map$default(receiveChannel, null, new ChannelsKt__Channels_commonKt$requireNoNulls$1(receiveChannel, null), 1, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00d6 A[Catch:{ Throwable -> 0x012e }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d7 A[Catch:{ Throwable -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00e7 A[Catch:{ Throwable -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0114 A[Catch:{ Throwable -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0118 A[Catch:{ Throwable -> 0x012e }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0027  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <E> java.lang.Object partition(kotlinx.coroutines.channels.ReceiveChannel<? extends E> r16, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r17, kotlin.coroutines.Continuation<? super kotlin.Pair<? extends java.util.List<? extends E>, ? extends java.util.List<? extends E>>> r18) {
        /*
        // Method dump skipped, instructions count: 340
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.partition(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0054, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0059, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0062, code lost:
        throw r8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object partition$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            r3 = 1
            kotlinx.coroutines.channels.ChannelIterator r4 = r7.iterator()     // Catch:{ Throwable -> 0x0056 }
        L_0x0012:
            r5 = 0
            kotlin.jvm.internal.InlineMarker.mark(r5)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r6 = r4.hasNext(r9)     // Catch:{ Throwable -> 0x0056 }
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ Throwable -> 0x0056 }
            boolean r6 = r6.booleanValue()     // Catch:{ Throwable -> 0x0056 }
            if (r6 == 0) goto L_0x0043
            kotlin.jvm.internal.InlineMarker.mark(r5)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r5 = r4.next(r9)     // Catch:{ Throwable -> 0x0056 }
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Object r6 = r8.invoke(r5)     // Catch:{ Throwable -> 0x0056 }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ Throwable -> 0x0056 }
            boolean r6 = r6.booleanValue()     // Catch:{ Throwable -> 0x0056 }
            if (r6 == 0) goto L_0x003f
            r0.add(r5)     // Catch:{ Throwable -> 0x0056 }
            goto L_0x0012
        L_0x003f:
            r1.add(r5)     // Catch:{ Throwable -> 0x0056 }
            goto L_0x0012
        L_0x0043:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0056 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r7.cancel(r2)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            kotlin.Pair r7 = new kotlin.Pair
            r7.<init>(r0, r1)
            return r7
        L_0x0054:
            r8 = move-exception
            goto L_0x0059
        L_0x0056:
            r8 = move-exception
            r2 = r8
            throw r2     // Catch:{ all -> 0x0054 }
        L_0x0059:
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r7.cancel(r2)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.partition$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <E, R> ReceiveChannel<Pair<E, R>> zip(ReceiveChannel<? extends E> receiveChannel, ReceiveChannel<? extends R> receiveChannel2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(receiveChannel2, FacebookRequestErrorClassification.KEY_OTHER);
        return zip$default(receiveChannel, receiveChannel2, null, ChannelsKt__Channels_commonKt$zip$1.INSTANCE, 2, null);
    }

    public static /* synthetic */ ReceiveChannel zip$default(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return ChannelsKt.zip(receiveChannel, receiveChannel2, coroutineContext, function2);
    }

    public static final <E, R, V> ReceiveChannel<V> zip(ReceiveChannel<? extends E> receiveChannel, ReceiveChannel<? extends R> receiveChannel2, CoroutineContext coroutineContext, Function2<? super E, ? super R, ? extends V> function2) {
        Intrinsics.checkParameterIsNotNull(receiveChannel, "receiver$0");
        Intrinsics.checkParameterIsNotNull(receiveChannel2, FacebookRequestErrorClassification.KEY_OTHER);
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, ChannelsKt.consumesAll(receiveChannel, receiveChannel2), new ChannelsKt__Channels_commonKt$zip$2(receiveChannel, receiveChannel2, function2, null), 2, null);
    }

    private static final Object consumeEach$$forInline(BroadcastChannel broadcastChannel, Function1 function1, Continuation continuation) {
        ReceiveChannel openSubscription = broadcastChannel.openSubscription();
        try {
            ChannelIterator it2 = openSubscription.iterator();
            while (true) {
                InlineMarker.mark(0);
                Object hasNext = it2.hasNext(continuation);
                InlineMarker.mark(1);
                if (!((Boolean) hasNext).booleanValue()) {
                    return Unit.INSTANCE;
                }
                InlineMarker.mark(0);
                Object next = it2.next(continuation);
                InlineMarker.mark(1);
                function1.invoke(next);
            }
        } finally {
            InlineMarker.finallyStart(1);
            openSubscription.cancel();
            InlineMarker.finallyEnd(1);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003a, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0043, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0035, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object consumeEach$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.jvm.functions.Function1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0037 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0037 }
            java.lang.Object r4 = r2.hasNext(r7)     // Catch:{ Throwable -> 0x0037 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0037 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0037 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0037 }
            if (r4 == 0) goto L_0x0029
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0037 }
            java.lang.Object r3 = r2.next(r7)     // Catch:{ Throwable -> 0x0037 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0037 }
            r6.invoke(r3)     // Catch:{ Throwable -> 0x0037 }
            goto L_0x0008
        L_0x0029:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0037 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0035:
            r6 = move-exception
            goto L_0x003a
        L_0x0037:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0035 }
        L_0x003a:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.consumeEach$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0045, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004e, code lost:
        throw r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0040, code lost:
        r9 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object consumeEachIndexed$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r8.iterator()     // Catch:{ Throwable -> 0x0042 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r2.hasNext(r10)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0042 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0042 }
            if (r5 == 0) goto L_0x0032
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r2.next(r10)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0042 }
            kotlin.collections.IndexedValue r6 = new kotlin.collections.IndexedValue     // Catch:{ Throwable -> 0x0042 }
            int r7 = r4 + 1
            r6.<init>(r4, r5)     // Catch:{ Throwable -> 0x0042 }
            r9.invoke(r6)     // Catch:{ Throwable -> 0x0042 }
            r4 = r7
            goto L_0x000a
        L_0x0032:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r8.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L_0x0040:
            r9 = move-exception
            goto L_0x0045
        L_0x0042:
            r9 = move-exception
            r0 = r9
            throw r0     // Catch:{ all -> 0x0040 }
        L_0x0045:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r8.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.consumeEachIndexed$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005f, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0068, code lost:
        throw r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0019, code lost:
        r8 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object elementAtOrElse$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, int r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
        // Method dump skipped, instructions count: 105
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.elementAtOrElse$$forInline(kotlinx.coroutines.channels.ReceiveChannel, int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004f, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0058, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x004a, code lost:
        r7 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object find$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            r1 = r0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x004c }
        L_0x0009:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r5 = r3.hasNext(r8)     // Catch:{ Throwable -> 0x004c }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x004c }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004c }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004c }
            if (r5 == 0) goto L_0x003e
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r4 = r3.next(r8)     // Catch:{ Throwable -> 0x004c }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x004c }
            java.lang.Object r5 = r7.invoke(r4)     // Catch:{ Throwable -> 0x004c }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004c }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004c }
            if (r5 == 0) goto L_0x0009
            r7 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r7)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r7)
            r0 = r4
            goto L_0x0049
        L_0x003e:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
        L_0x0049:
            return r0
        L_0x004a:
            r7 = move-exception
            goto L_0x004f
        L_0x004c:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x004a }
        L_0x004f:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.find$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0040, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0045, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004e, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object findLast$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            r1 = r0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x0042 }
        L_0x0009:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r3.hasNext(r8)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0042 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0042 }
            if (r5 == 0) goto L_0x0034
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r4 = r3.next(r8)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r7.invoke(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0042 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0042 }
            if (r5 == 0) goto L_0x0009
            r0 = r4
            goto L_0x0009
        L_0x0034:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0040:
            r7 = move-exception
            goto L_0x0045
        L_0x0042:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x0040 }
        L_0x0045:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.findLast$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0051, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0056, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005f, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object first$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.jvm.functions.Function1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0053 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0053 }
            java.lang.Object r4 = r2.hasNext(r7)     // Catch:{ Throwable -> 0x0053 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0053 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0053 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0053 }
            if (r4 == 0) goto L_0x003c
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0053 }
            java.lang.Object r3 = r2.next(r7)     // Catch:{ Throwable -> 0x0053 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0053 }
            java.lang.Object r4 = r6.invoke(r3)     // Catch:{ Throwable -> 0x0053 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0053 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0053 }
            if (r4 == 0) goto L_0x0008
            r6 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r6)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r6)
            return r3
        L_0x003c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.util.NoSuchElementException r5 = new java.util.NoSuchElementException
            java.lang.String r6 = "ReceiveChannel contains no element matching the predicate."
            r5.<init>(r6)
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            throw r5
        L_0x0051:
            r6 = move-exception
            goto L_0x0056
        L_0x0053:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0051 }
        L_0x0056:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.first$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0049, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004e, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0057, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object firstOrNull$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            r1 = r0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x004b }
        L_0x0009:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r5 = r3.hasNext(r8)     // Catch:{ Throwable -> 0x004b }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x004b }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004b }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004b }
            if (r5 == 0) goto L_0x003d
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r4 = r3.next(r8)     // Catch:{ Throwable -> 0x004b }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r5 = r7.invoke(r4)     // Catch:{ Throwable -> 0x004b }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004b }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004b }
            if (r5 == 0) goto L_0x0009
            r7 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r7)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r7)
            return r4
        L_0x003d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0049:
            r7 = move-exception
            goto L_0x004e
        L_0x004b:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x0049 }
        L_0x004e:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.firstOrNull$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0055, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005a, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0063, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object indexOfFirst$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x0057 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0057 }
            java.lang.Object r5 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0057 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0057 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0057 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0057 }
            if (r5 == 0) goto L_0x0044
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0057 }
            java.lang.Object r5 = r2.next(r8)     // Catch:{ Throwable -> 0x0057 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0057 }
            java.lang.Object r5 = r7.invoke(r5)     // Catch:{ Throwable -> 0x0057 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0057 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0057 }
            if (r5 == 0) goto L_0x0041
            java.lang.Integer r7 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0057 }
            r8 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r8)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r8)
            return r7
        L_0x0041:
            int r4 = r4 + 1
            goto L_0x000a
        L_0x0044:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            r6 = -1
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            return r6
        L_0x0055:
            r7 = move-exception
            goto L_0x005a
        L_0x0057:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x0055 }
        L_0x005a:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.indexOfFirst$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0047, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004c, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0055, code lost:
        throw r8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object indexOfLast$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r7.iterator()     // Catch:{ Throwable -> 0x0049 }
            r3 = 0
            r4 = -1
            r5 = 0
        L_0x000b:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0049 }
            java.lang.Object r6 = r2.hasNext(r9)     // Catch:{ Throwable -> 0x0049 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0049 }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ Throwable -> 0x0049 }
            boolean r6 = r6.booleanValue()     // Catch:{ Throwable -> 0x0049 }
            if (r6 == 0) goto L_0x0037
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0049 }
            java.lang.Object r6 = r2.next(r9)     // Catch:{ Throwable -> 0x0049 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0049 }
            java.lang.Object r6 = r8.invoke(r6)     // Catch:{ Throwable -> 0x0049 }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ Throwable -> 0x0049 }
            boolean r6 = r6.booleanValue()     // Catch:{ Throwable -> 0x0049 }
            if (r6 == 0) goto L_0x0034
            r4 = r5
        L_0x0034:
            int r5 = r5 + 1
            goto L_0x000b
        L_0x0037:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0049 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r4)
            return r7
        L_0x0047:
            r8 = move-exception
            goto L_0x004c
        L_0x0049:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch:{ all -> 0x0047 }
        L_0x004c:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.indexOfLast$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004f, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0054, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x005d, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object last$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            r1 = r0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r8.iterator()     // Catch:{ Throwable -> 0x0051 }
            r4 = 0
            r5 = r0
            r0 = 0
        L_0x000c:
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0051 }
            java.lang.Object r6 = r3.hasNext(r10)     // Catch:{ Throwable -> 0x0051 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0051 }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ Throwable -> 0x0051 }
            boolean r6 = r6.booleanValue()     // Catch:{ Throwable -> 0x0051 }
            if (r6 == 0) goto L_0x0037
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0051 }
            java.lang.Object r6 = r3.next(r10)     // Catch:{ Throwable -> 0x0051 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0051 }
            java.lang.Object r7 = r9.invoke(r6)     // Catch:{ Throwable -> 0x0051 }
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch:{ Throwable -> 0x0051 }
            boolean r7 = r7.booleanValue()     // Catch:{ Throwable -> 0x0051 }
            if (r7 == 0) goto L_0x000c
            r5 = r6
            r0 = 1
            goto L_0x000c
        L_0x0037:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0051 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r8.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            if (r0 == 0) goto L_0x0045
            return r5
        L_0x0045:
            java.util.NoSuchElementException r8 = new java.util.NoSuchElementException
            java.lang.String r9 = "ReceiveChannel contains no element matching the predicate."
            r8.<init>(r9)
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            throw r8
        L_0x004f:
            r9 = move-exception
            goto L_0x0054
        L_0x0051:
            r9 = move-exception
            r1 = r9
            throw r1     // Catch:{ all -> 0x004f }
        L_0x0054:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r8.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.last$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0040, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0045, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004e, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object lastOrNull$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            r1 = r0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r6.iterator()     // Catch:{ Throwable -> 0x0042 }
        L_0x0009:
            r4 = 0
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r3.hasNext(r8)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0042 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0042 }
            if (r5 == 0) goto L_0x0034
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r4 = r3.next(r8)     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Object r5 = r7.invoke(r4)     // Catch:{ Throwable -> 0x0042 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0042 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0042 }
            if (r5 == 0) goto L_0x0009
            r0 = r4
            goto L_0x0009
        L_0x0034:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0042 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            return r0
        L_0x0040:
            r7 = move-exception
            goto L_0x0045
        L_0x0042:
            r7 = move-exception
            r1 = r7
            throw r1     // Catch:{ all -> 0x0040 }
        L_0x0045:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r6.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.lastOrNull$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005b, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0060, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0069, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object single$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
        // Method dump skipped, instructions count: 106
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.single$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0053, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0058, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r9.cancel(r10);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0061, code lost:
        throw r10;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object singleOrNull$$forInline(kotlinx.coroutines.channels.ReceiveChannel r9, kotlin.jvm.functions.Function1 r10, kotlin.coroutines.Continuation r11) {
        /*
            r0 = 0
            r1 = r0
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2 = 1
            kotlinx.coroutines.channels.ChannelIterator r3 = r9.iterator()     // Catch:{ Throwable -> 0x0055 }
            r4 = 0
            r6 = r0
            r5 = 0
        L_0x000c:
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0055 }
            java.lang.Object r7 = r3.hasNext(r11)     // Catch:{ Throwable -> 0x0055 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0055 }
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch:{ Throwable -> 0x0055 }
            boolean r7 = r7.booleanValue()     // Catch:{ Throwable -> 0x0055 }
            if (r7 == 0) goto L_0x0044
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x0055 }
            java.lang.Object r7 = r3.next(r11)     // Catch:{ Throwable -> 0x0055 }
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch:{ Throwable -> 0x0055 }
            java.lang.Object r8 = r10.invoke(r7)     // Catch:{ Throwable -> 0x0055 }
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch:{ Throwable -> 0x0055 }
            boolean r8 = r8.booleanValue()     // Catch:{ Throwable -> 0x0055 }
            if (r8 == 0) goto L_0x000c
            if (r5 == 0) goto L_0x0041
            r10 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r10)
            r9.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r10)
            return r0
        L_0x0041:
            r6 = r7
            r5 = 1
            goto L_0x000c
        L_0x0044:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r9.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            if (r5 != 0) goto L_0x0052
            return r0
        L_0x0052:
            return r6
        L_0x0053:
            r10 = move-exception
            goto L_0x0058
        L_0x0055:
            r10 = move-exception
            r1 = r10
            throw r1     // Catch:{ all -> 0x0053 }
        L_0x0058:
            kotlin.jvm.internal.InlineMarker.finallyStart(r2)
            r9.cancel(r1)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r2)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.singleOrNull$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0056, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005b, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0064, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object filterIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, java.util.Collection r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.Continuation r11) {
        /*
        // Method dump skipped, instructions count: 101
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0060, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0065, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006e, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object filterIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlinx.coroutines.channels.SendChannel r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.Continuation r11) {
        /*
        // Method dump skipped, instructions count: 111
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0041, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0046, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004f, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object filterNotTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Collection r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0043 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0043 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0043 }
            if (r4 == 0) goto L_0x0035
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r4 = r7.invoke(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0043 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0043 }
            if (r4 != 0) goto L_0x0008
            r6.add(r3)     // Catch:{ Throwable -> 0x0043 }
            goto L_0x0008
        L_0x0035:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0041:
            r6 = move-exception
            goto L_0x0046
        L_0x0043:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0041 }
        L_0x0046:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterNotTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x004b, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0050, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0059, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object filterNotTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlinx.coroutines.channels.SendChannel r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x004d }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r4 = r2.hasNext(r9)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x004d }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x004d }
            if (r4 == 0) goto L_0x003f
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r4 = r2.next(r9)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r5 = r8.invoke(r4)     // Catch:{ Throwable -> 0x004d }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004d }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004d }
            if (r5 != 0) goto L_0x0008
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            r7.send(r4, r9)     // Catch:{ Throwable -> 0x004d }
            r3 = 2
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            goto L_0x0008
        L_0x003f:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r7
        L_0x004b:
            r7 = move-exception
            goto L_0x0050
        L_0x004d:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x004b }
        L_0x0050:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterNotTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0041, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0046, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004f, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object filterTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Collection r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0043 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0043 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0043 }
            if (r4 == 0) goto L_0x0035
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r4 = r7.invoke(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0043 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0043 }
            if (r4 == 0) goto L_0x0008
            r6.add(r3)     // Catch:{ Throwable -> 0x0043 }
            goto L_0x0008
        L_0x0035:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0041:
            r6 = move-exception
            goto L_0x0046
        L_0x0043:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0041 }
        L_0x0046:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x004b, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0050, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0059, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object filterTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlinx.coroutines.channels.SendChannel r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x004d }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r4 = r2.hasNext(r9)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x004d }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x004d }
            if (r4 == 0) goto L_0x003f
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r4 = r2.next(r9)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r5 = r8.invoke(r4)     // Catch:{ Throwable -> 0x004d }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004d }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004d }
            if (r5 == 0) goto L_0x0008
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            r7.send(r4, r9)     // Catch:{ Throwable -> 0x004d }
            r3 = 2
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            goto L_0x0008
        L_0x003f:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r7
        L_0x004b:
            r7 = move-exception
            goto L_0x0050
        L_0x004d:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x004b }
        L_0x0050:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.filterTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003e, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0047, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0039, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object associateByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Map r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x003b }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003b }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x003b }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003b }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x003b }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x003b }
            if (r4 == 0) goto L_0x002d
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003b }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x003b }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003b }
            java.lang.Object r4 = r7.invoke(r3)     // Catch:{ Throwable -> 0x003b }
            r6.put(r4, r3)     // Catch:{ Throwable -> 0x003b }
            goto L_0x0008
        L_0x002d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x003b }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0039:
            r6 = move-exception
            goto L_0x003e
        L_0x003b:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0039 }
        L_0x003e:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004b, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x003d, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object associateByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Map r6, kotlin.jvm.functions.Function1 r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x003f }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r4 = r2.hasNext(r9)     // Catch:{ Throwable -> 0x003f }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003f }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x003f }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x003f }
            if (r4 == 0) goto L_0x0031
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r3 = r2.next(r9)     // Catch:{ Throwable -> 0x003f }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r4 = r7.invoke(r3)     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r3 = r8.invoke(r3)     // Catch:{ Throwable -> 0x003f }
            r6.put(r4, r3)     // Catch:{ Throwable -> 0x003f }
            goto L_0x0008
        L_0x0031:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x003f }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x003d:
            r6 = move-exception
            goto L_0x0042
        L_0x003f:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x003d }
        L_0x0042:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0048, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0051, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0043, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object associateTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Map r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0045 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0045 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0045 }
            if (r4 == 0) goto L_0x0037
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r3 = r7.invoke(r3)     // Catch:{ Throwable -> 0x0045 }
            kotlin.Pair r3 = (kotlin.Pair) r3     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r4 = r3.getFirst()     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r3 = r3.getSecond()     // Catch:{ Throwable -> 0x0045 }
            r6.put(r4, r3)     // Catch:{ Throwable -> 0x0045 }
            goto L_0x0008
        L_0x0037:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0043:
            r6 = move-exception
            goto L_0x0048
        L_0x0045:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0043 }
        L_0x0048:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.associateTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0049, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004e, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0057, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object groupByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, java.util.Map r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x004b }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r4 = r2.hasNext(r9)     // Catch:{ Throwable -> 0x004b }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004b }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x004b }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x004b }
            if (r4 == 0) goto L_0x003d
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r3 = r2.next(r9)     // Catch:{ Throwable -> 0x004b }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r4 = r8.invoke(r3)     // Catch:{ Throwable -> 0x004b }
            java.lang.Object r5 = r7.get(r4)     // Catch:{ Throwable -> 0x004b }
            if (r5 != 0) goto L_0x0037
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch:{ Throwable -> 0x004b }
            r5.<init>()     // Catch:{ Throwable -> 0x004b }
            r7.put(r4, r5)     // Catch:{ Throwable -> 0x004b }
        L_0x0037:
            java.util.List r5 = (java.util.List) r5     // Catch:{ Throwable -> 0x004b }
            r5.add(r3)     // Catch:{ Throwable -> 0x004b }
            goto L_0x0008
        L_0x003d:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x004b }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r7
        L_0x0049:
            r7 = move-exception
            goto L_0x004e
        L_0x004b:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x0049 }
        L_0x004e:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x004d, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0052, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005b, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object groupByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, java.util.Map r7, kotlin.jvm.functions.Function1 r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x004f }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004f }
            java.lang.Object r4 = r2.hasNext(r10)     // Catch:{ Throwable -> 0x004f }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004f }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x004f }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x004f }
            if (r4 == 0) goto L_0x0041
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004f }
            java.lang.Object r3 = r2.next(r10)     // Catch:{ Throwable -> 0x004f }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004f }
            java.lang.Object r4 = r8.invoke(r3)     // Catch:{ Throwable -> 0x004f }
            java.lang.Object r5 = r7.get(r4)     // Catch:{ Throwable -> 0x004f }
            if (r5 != 0) goto L_0x0037
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch:{ Throwable -> 0x004f }
            r5.<init>()     // Catch:{ Throwable -> 0x004f }
            r7.put(r4, r5)     // Catch:{ Throwable -> 0x004f }
        L_0x0037:
            java.util.List r5 = (java.util.List) r5     // Catch:{ Throwable -> 0x004f }
            java.lang.Object r3 = r9.invoke(r3)     // Catch:{ Throwable -> 0x004f }
            r5.add(r3)     // Catch:{ Throwable -> 0x004f }
            goto L_0x0008
        L_0x0041:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x004f }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r7
        L_0x004d:
            r7 = move-exception
            goto L_0x0052
        L_0x004f:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x004d }
        L_0x0052:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.groupByTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Map, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0050, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0055, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005e, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapIndexedNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, java.util.Collection r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.Continuation r11) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r8.iterator()     // Catch:{ Throwable -> 0x0052 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r5 = r2.hasNext(r11)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0052 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r5 == 0) goto L_0x0044
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r5 = r2.next(r11)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            kotlin.collections.IndexedValue r6 = new kotlin.collections.IndexedValue     // Catch:{ Throwable -> 0x0052 }
            int r7 = r4 + 1
            r6.<init>(r4, r5)     // Catch:{ Throwable -> 0x0052 }
            int r4 = r6.component1()     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r5 = r6.component2()     // Catch:{ Throwable -> 0x0052 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r10.invoke(r4, r5)     // Catch:{ Throwable -> 0x0052 }
            if (r4 == 0) goto L_0x0042
            r9.add(r4)     // Catch:{ Throwable -> 0x0052 }
        L_0x0042:
            r4 = r7
            goto L_0x000a
        L_0x0044:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r8.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r9
        L_0x0050:
            r9 = move-exception
            goto L_0x0055
        L_0x0052:
            r9 = move-exception
            r0 = r9
            throw r0     // Catch:{ all -> 0x0050 }
        L_0x0055:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r8.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x005a, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005f, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0068, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapIndexedNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlinx.coroutines.channels.SendChannel r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.Continuation r11) {
        /*
        // Method dump skipped, instructions count: 105
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0046, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004f, code lost:
        throw r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0041, code lost:
        r8 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, java.util.Collection r8, kotlin.jvm.functions.Function2 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r7.iterator()     // Catch:{ Throwable -> 0x0043 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r5 = r2.hasNext(r10)     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0043 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0043 }
            if (r5 == 0) goto L_0x0035
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r5 = r2.next(r10)     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0043 }
            int r6 = r4 + 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0043 }
            java.lang.Object r4 = r9.invoke(r4, r5)     // Catch:{ Throwable -> 0x0043 }
            r8.add(r4)     // Catch:{ Throwable -> 0x0043 }
            r4 = r6
            goto L_0x000a
        L_0x0035:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0043 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r8
        L_0x0041:
            r8 = move-exception
            goto L_0x0046
        L_0x0043:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch:{ all -> 0x0041 }
        L_0x0046:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0050, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0059, code lost:
        throw r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x004b, code lost:
        r8 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, kotlinx.coroutines.channels.SendChannel r8, kotlin.jvm.functions.Function2 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r7.iterator()     // Catch:{ Throwable -> 0x004d }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r5 = r2.hasNext(r10)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x004d }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x004d }
            if (r5 == 0) goto L_0x003f
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r5 = r2.next(r10)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            int r6 = r4 + 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x004d }
            java.lang.Object r4 = r9.invoke(r4, r5)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x004d }
            r8.send(r4, r10)     // Catch:{ Throwable -> 0x004d }
            r4 = 2
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x004d }
            r4 = r6
            goto L_0x000a
        L_0x003f:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x004d }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r8
        L_0x004b:
            r8 = move-exception
            goto L_0x0050
        L_0x004d:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch:{ all -> 0x004b }
        L_0x0050:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapIndexedTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x003b, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0040, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Collection r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x003d }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003d }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x003d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003d }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x003d }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x003d }
            if (r4 == 0) goto L_0x002f
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003d }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x003d }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003d }
            java.lang.Object r3 = r7.invoke(r3)     // Catch:{ Throwable -> 0x003d }
            if (r3 == 0) goto L_0x0008
            r6.add(r3)     // Catch:{ Throwable -> 0x003d }
            goto L_0x0008
        L_0x002f:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x003d }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x003b:
            r6 = move-exception
            goto L_0x0040
        L_0x003d:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x003b }
        L_0x0040:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0045, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004a, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0053, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlinx.coroutines.channels.SendChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0047 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0047 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0047 }
            if (r4 == 0) goto L_0x0039
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Object r4 = r2.next(r8)     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Object r4 = r7.invoke(r4)     // Catch:{ Throwable -> 0x0047 }
            if (r4 == 0) goto L_0x0008
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0047 }
            r6.send(r4, r8)     // Catch:{ Throwable -> 0x0047 }
            r3 = 2
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0047 }
            goto L_0x0008
        L_0x0039:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0045:
            r6 = move-exception
            goto L_0x004a
        L_0x0047:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0045 }
        L_0x004a:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapNotNullTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003e, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0047, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0039, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.util.Collection r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x003b }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003b }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x003b }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003b }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x003b }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x003b }
            if (r4 == 0) goto L_0x002d
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x003b }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x003b }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x003b }
            java.lang.Object r3 = r7.invoke(r3)     // Catch:{ Throwable -> 0x003b }
            r6.add(r3)     // Catch:{ Throwable -> 0x003b }
            goto L_0x0008
        L_0x002d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x003b }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0039:
            r6 = move-exception
            goto L_0x003e
        L_0x003b:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0039 }
        L_0x003e:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.util.Collection, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0048, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0051, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0043, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object mapTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlinx.coroutines.channels.SendChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0045 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0045 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0045 }
            if (r4 == 0) goto L_0x0037
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r4 = r2.next(r8)     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0045 }
            java.lang.Object r4 = r7.invoke(r4)     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0045 }
            r6.send(r4, r8)     // Catch:{ Throwable -> 0x0045 }
            r3 = 2
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0045 }
            goto L_0x0008
        L_0x0037:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0045 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0043:
            r6 = move-exception
            goto L_0x0048
        L_0x0045:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0043 }
        L_0x0048:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.mapTo$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.SendChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0050, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0055, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005e, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object all$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.jvm.functions.Function1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0052 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r2.hasNext(r7)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0052 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r4 == 0) goto L_0x0040
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r2.next(r7)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r6.invoke(r4)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0052 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r4 != 0) goto L_0x0008
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r3)     // Catch:{ Throwable -> 0x0052 }
            r7 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r7)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r7)
            return r6
        L_0x0040:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)
            return r5
        L_0x0050:
            r6 = move-exception
            goto L_0x0055
        L_0x0052:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0050 }
        L_0x0055:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.all$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0050, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0055, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005e, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object any$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.jvm.functions.Function1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0052 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r2.hasNext(r7)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0052 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r4 == 0) goto L_0x0040
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r3 = r2.next(r7)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r3 = r6.invoke(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch:{ Throwable -> 0x0052 }
            boolean r3 = r3.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r3 == 0) goto L_0x0008
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r1)     // Catch:{ Throwable -> 0x0052 }
            r7 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r7)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r7)
            return r6
        L_0x0040:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r3)
            return r5
        L_0x0050:
            r6 = move-exception
            goto L_0x0055
        L_0x0052:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0050 }
        L_0x0055:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.any$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0045, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004a, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0053, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object count$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x0047 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Object r5 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0047 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0047 }
            if (r5 == 0) goto L_0x0035
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Object r5 = r2.next(r8)     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Object r5 = r7.invoke(r5)     // Catch:{ Throwable -> 0x0047 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0047 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0047 }
            if (r5 == 0) goto L_0x000a
            int r4 = r4 + 1
            goto L_0x000a
        L_0x0035:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0047 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r4)
            return r6
        L_0x0045:
            r7 = move-exception
            goto L_0x004a
        L_0x0047:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x0045 }
        L_0x004a:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.count$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003b, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0044, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0036, code lost:
        r6 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object fold$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, java.lang.Object r6, kotlin.jvm.functions.Function2 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0038 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0038 }
            java.lang.Object r4 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0038 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0038 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0038 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0038 }
            if (r4 == 0) goto L_0x002a
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0038 }
            java.lang.Object r3 = r2.next(r8)     // Catch:{ Throwable -> 0x0038 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0038 }
            java.lang.Object r6 = r7.invoke(r6, r3)     // Catch:{ Throwable -> 0x0038 }
            goto L_0x0008
        L_0x002a:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0038 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r6
        L_0x0036:
            r6 = move-exception
            goto L_0x003b
        L_0x0038:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0036 }
        L_0x003b:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.fold$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0043, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r7.cancel(r8);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004c, code lost:
        throw r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x003e, code lost:
        r8 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object foldIndexed$$forInline(kotlinx.coroutines.channels.ReceiveChannel r7, java.lang.Object r8, kotlin.jvm.functions.Function3 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r7.iterator()     // Catch:{ Throwable -> 0x0040 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0040 }
            java.lang.Object r5 = r2.hasNext(r10)     // Catch:{ Throwable -> 0x0040 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0040 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0040 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0040 }
            if (r5 == 0) goto L_0x0032
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0040 }
            java.lang.Object r5 = r2.next(r10)     // Catch:{ Throwable -> 0x0040 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0040 }
            int r6 = r4 + 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0040 }
            java.lang.Object r8 = r9.invoke(r4, r8, r5)     // Catch:{ Throwable -> 0x0040 }
            r4 = r6
            goto L_0x000a
        L_0x0032:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0040 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            return r8
        L_0x003e:
            r8 = move-exception
            goto L_0x0043
        L_0x0040:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch:{ all -> 0x003e }
        L_0x0043:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r7.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.foldIndexed$$forInline(kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0067, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006c, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r9.cancel(r10);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0075, code lost:
        throw r10;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object maxBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r9, kotlin.jvm.functions.Function1 r10, kotlin.coroutines.Continuation r11) {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.maxBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0067, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006c, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r9.cancel(r10);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0075, code lost:
        throw r10;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object minBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r9, kotlin.jvm.functions.Function1 r10, kotlin.coroutines.Continuation r11) {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.minBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0050, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0055, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r5.cancel(r6);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005e, code lost:
        throw r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object none$$forInline(kotlinx.coroutines.channels.ReceiveChannel r5, kotlin.jvm.functions.Function1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r5.iterator()     // Catch:{ Throwable -> 0x0052 }
        L_0x0008:
            r3 = 0
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r2.hasNext(r7)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0052 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r4 == 0) goto L_0x0040
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r2.next(r7)     // Catch:{ Throwable -> 0x0052 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Object r4 = r6.invoke(r4)     // Catch:{ Throwable -> 0x0052 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ Throwable -> 0x0052 }
            boolean r4 = r4.booleanValue()     // Catch:{ Throwable -> 0x0052 }
            if (r4 == 0) goto L_0x0008
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r3)     // Catch:{ Throwable -> 0x0052 }
            r7 = 2
            kotlin.jvm.internal.InlineMarker.finallyStart(r7)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r7)
            return r6
        L_0x0040:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)
            return r5
        L_0x0050:
            r6 = move-exception
            goto L_0x0055
        L_0x0052:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch:{ all -> 0x0050 }
        L_0x0055:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r5.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.none$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x005b, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0060, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0069, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object reduce$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function2 r7, kotlin.coroutines.Continuation r8) {
        /*
        // Method dump skipped, instructions count: 106
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.reduce$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0063, code lost:
        r9 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0068, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0071, code lost:
        throw r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object reduceIndexed$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlin.jvm.functions.Function3 r9, kotlin.coroutines.Continuation r10) {
        /*
        // Method dump skipped, instructions count: 114
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.reduceIndexed$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0047, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r6.cancel(r7);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0050, code lost:
        throw r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0042, code lost:
        r7 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object sumBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r6.iterator()     // Catch:{ Throwable -> 0x0044 }
            r3 = 0
            r4 = 0
        L_0x000a:
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0044 }
            java.lang.Object r5 = r2.hasNext(r8)     // Catch:{ Throwable -> 0x0044 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0044 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Throwable -> 0x0044 }
            boolean r5 = r5.booleanValue()     // Catch:{ Throwable -> 0x0044 }
            if (r5 == 0) goto L_0x0032
            kotlin.jvm.internal.InlineMarker.mark(r3)     // Catch:{ Throwable -> 0x0044 }
            java.lang.Object r5 = r2.next(r8)     // Catch:{ Throwable -> 0x0044 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0044 }
            java.lang.Object r5 = r7.invoke(r5)     // Catch:{ Throwable -> 0x0044 }
            java.lang.Number r5 = (java.lang.Number) r5     // Catch:{ Throwable -> 0x0044 }
            int r5 = r5.intValue()     // Catch:{ Throwable -> 0x0044 }
            int r4 = r4 + r5
            goto L_0x000a
        L_0x0032:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0044 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r4)
            return r6
        L_0x0042:
            r7 = move-exception
            goto L_0x0047
        L_0x0044:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch:{ all -> 0x0042 }
        L_0x0047:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r6.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.sumBy$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0049, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        r8.cancel(r9);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0052, code lost:
        throw r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0044, code lost:
        r9 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final java.lang.Object sumByDouble$$forInline(kotlinx.coroutines.channels.ReceiveChannel r8, kotlin.jvm.functions.Function1 r9, kotlin.coroutines.Continuation r10) {
        /*
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r1 = 1
            kotlinx.coroutines.channels.ChannelIterator r2 = r8.iterator()     // Catch:{ Throwable -> 0x0046 }
            r3 = 0
        L_0x000a:
            r5 = 0
            kotlin.jvm.internal.InlineMarker.mark(r5)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r6 = r2.hasNext(r10)     // Catch:{ Throwable -> 0x0046 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch:{ Throwable -> 0x0046 }
            boolean r6 = r6.booleanValue()     // Catch:{ Throwable -> 0x0046 }
            if (r6 == 0) goto L_0x0034
            kotlin.jvm.internal.InlineMarker.mark(r5)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r5 = r2.next(r10)     // Catch:{ Throwable -> 0x0046 }
            kotlin.jvm.internal.InlineMarker.mark(r1)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Object r5 = r9.invoke(r5)     // Catch:{ Throwable -> 0x0046 }
            java.lang.Number r5 = (java.lang.Number) r5     // Catch:{ Throwable -> 0x0046 }
            double r5 = r5.doubleValue()     // Catch:{ Throwable -> 0x0046 }
            r7 = 0
            double r3 = r3 + r5
            goto L_0x000a
        L_0x0034:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch:{ Throwable -> 0x0046 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r8.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            java.lang.Double r8 = java.lang.Double.valueOf(r3)
            return r8
        L_0x0044:
            r9 = move-exception
            goto L_0x0049
        L_0x0046:
            r9 = move-exception
            r0 = r9
            throw r0     // Catch:{ all -> 0x0044 }
        L_0x0049:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r8.cancel(r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.sumByDouble$$forInline(kotlinx.coroutines.channels.ReceiveChannel, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
