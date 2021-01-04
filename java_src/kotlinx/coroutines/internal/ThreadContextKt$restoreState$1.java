package kotlinx.coroutines.internal;

import com.facebook.internal.ServerProtocol;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "Lkotlinx/coroutines/internal/ThreadState;", ServerProtocol.DIALOG_PARAM_STATE, "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ThreadContext.kt */
final class ThreadContextKt$restoreState$1 extends Lambda implements Function2<ThreadState, CoroutineContext.Element, ThreadState> {
    public static final ThreadContextKt$restoreState$1 INSTANCE = new ThreadContextKt$restoreState$1();

    ThreadContextKt$restoreState$1() {
        super(2);
    }

    @NotNull
    public final ThreadState invoke(@NotNull ThreadState threadState, @NotNull CoroutineContext.Element element) {
        Intrinsics.checkParameterIsNotNull(threadState, ServerProtocol.DIALOG_PARAM_STATE);
        Intrinsics.checkParameterIsNotNull(element, "element");
        if (element instanceof ThreadContextElement) {
            ((ThreadContextElement) element).restoreThreadContext(threadState.getContext(), threadState.take());
        }
        return threadState;
    }
}
