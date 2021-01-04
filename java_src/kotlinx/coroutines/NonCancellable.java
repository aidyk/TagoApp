package kotlinx.coroutines;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.selects.SelectClause0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\b\u0010\u0019\u001a\u00020\u001aH\u0017J\u0012\u0010\u0019\u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0017J\f\u0010\u001d\u001a\u00060\u001ej\u0002`\u001fH\u0017JA\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\n2'\u0010$\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001a0%j\u0002`(H\u0017J1\u0010 \u001a\u00020!2'\u0010$\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001a0%j\u0002`(H\u0017J\u0011\u0010)\u001a\u00020\u001aH@ø\u0001\u0000¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020\nH\u0017R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058VX\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\n8VX\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\t\u0010\fR\u001a\u0010\r\u001a\u00020\n8VX\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u0003\u001a\u0004\b\r\u0010\fR\u001a\u0010\u000f\u001a\u00020\n8VX\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u000f\u0010\fR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Lkotlinx/coroutines/NonCancellable;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/Job;", "()V", "children", "Lkotlin/sequences/Sequence;", "children$annotations", "getChildren", "()Lkotlin/sequences/Sequence;", "isActive", "", "isActive$annotations", "()Z", "isCancelled", "isCancelled$annotations", "isCompleted", "isCompleted$annotations", "onJoin", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "attachChild", "Lkotlinx/coroutines/ChildHandle;", "child", "Lkotlinx/coroutines/ChildJob;", "cancel", "", "cause", "", "getCancellationException", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "invokeOnCompletion", "Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "handler", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", TtmlNode.START, "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: NonCancellable.kt */
public final class NonCancellable extends AbstractCoroutineContextElement implements Job {
    public static final NonCancellable INSTANCE = new NonCancellable();

    @InternalCoroutinesApi
    public static /* synthetic */ void children$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void isActive$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void isCancelled$annotations() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void isCompleted$annotations() {
    }

    @Override // kotlinx.coroutines.Job, kotlinx.coroutines.Job
    @InternalCoroutinesApi
    public void cancel() {
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    public boolean cancel(@Nullable Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public boolean isCompleted() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    public boolean start() {
        return false;
    }

    private NonCancellable() {
        super(Job.Key);
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public Job plus(@NotNull Job job) {
        Intrinsics.checkParameterIsNotNull(job, FacebookRequestErrorClassification.KEY_OTHER);
        return Job.DefaultImpls.plus((Job) this, job);
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    @Nullable
    public Object join(@NotNull Continuation<? super Unit> continuation) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public SelectClause0 getOnJoin() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    @NotNull
    public CancellationException getCancellationException() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    @NotNull
    public DisposableHandle invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "handler");
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    @NotNull
    public DisposableHandle invokeOnCompletion(boolean z, boolean z2, @NotNull Function1<? super Throwable, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "handler");
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    public Sequence<Job> getChildren() {
        return SequencesKt.emptySequence();
    }

    @Override // kotlinx.coroutines.Job
    @InternalCoroutinesApi
    @NotNull
    public ChildHandle attachChild(@NotNull ChildJob childJob) {
        Intrinsics.checkParameterIsNotNull(childJob, "child");
        return NonDisposableHandle.INSTANCE;
    }
}
