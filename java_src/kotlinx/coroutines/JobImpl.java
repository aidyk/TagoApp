package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068TX\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068TX\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068PX\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "cancelsParent", "", "getCancelsParent", "()Z", "handlesException", "getHandlesException", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: JobSupport.kt */
public final class JobImpl extends JobSupport {
    public JobImpl() {
        this(null, 1, null);
    }

    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public boolean getCancelsParent() {
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public boolean getHandlesException() {
        return false;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    public JobImpl(@Nullable Job job) {
        super(true);
        initParentJobInternal$kotlinx_coroutines_core(job);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ JobImpl(Job job, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : job);
    }
}
