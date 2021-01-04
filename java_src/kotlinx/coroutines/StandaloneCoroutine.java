package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0000\b\u0012\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0014R\u0014\u0010\b\u001a\u00020\u00068TX\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/StandaloneCoroutine;", "Lkotlinx/coroutines/AbstractCoroutine;", "", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "cancelsParent", "getCancelsParent", "()Z", "handleJobException", "exception", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: Builders.common.kt */
public class StandaloneCoroutine extends AbstractCoroutine<Unit> {
    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public boolean getCancelsParent() {
        return true;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StandaloneCoroutine(@NotNull CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, z);
        Intrinsics.checkParameterIsNotNull(coroutineContext, "parentContext");
    }

    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public void handleJobException(@NotNull Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "exception");
        CoroutineExceptionHandlerKt.handleExceptionViaHandler(this.parentContext, th);
    }
}
