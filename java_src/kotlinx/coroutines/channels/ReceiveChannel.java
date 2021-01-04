package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmName;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.selects.SelectClause1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ReceiveChannel<E> {
    void cancel();

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Left here for binary compatibility")
    @JvmName(name = "cancel")
    /* synthetic */ boolean cancel();

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use cancel without cause", replaceWith = @ReplaceWith(expression = "cancel()", imports = {}))
    @ObsoleteCoroutinesApi
    boolean cancel(@Nullable Throwable th);

    @NotNull
    SelectClause1<E> getOnReceive();

    @NotNull
    SelectClause1<E> getOnReceiveOrNull();

    boolean isClosedForReceive();

    boolean isEmpty();

    @NotNull
    ChannelIterator<E> iterator();

    @Nullable
    E poll();

    @Nullable
    Object receive(@NotNull Continuation<? super E> continuation);

    @ObsoleteCoroutinesApi
    @Nullable
    Object receiveOrNull(@NotNull Continuation<? super E> continuation);

    public static final class DefaultImpls {
        public static /* synthetic */ void isClosedForReceive$annotations() {
        }

        public static /* synthetic */ void isEmpty$annotations() {
        }

        public static /* synthetic */ void onReceiveOrNull$annotations() {
        }

        public static /* synthetic */ boolean cancel$default(ReceiveChannel receiveChannel, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    th = null;
                }
                return receiveChannel.cancel(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }
    }
}
