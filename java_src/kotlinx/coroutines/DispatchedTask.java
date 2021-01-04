package kotlinx.coroutines;

import com.facebook.internal.ServerProtocol;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.scheduling.Task;
import kotlinx.coroutines.scheduling.TaskContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u001d\u0010\u000f\u001a\u0002H\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\n\u0010\u0013\u001a\u0004\u0018\u00010\u000eH&R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/DispatchedTask;", "T", "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "resumeMode", "", "(I)V", "delegate", "Lkotlin/coroutines/Continuation;", "getDelegate", "()Lkotlin/coroutines/Continuation;", "getExceptionalResult", "", ServerProtocol.DIALOG_PARAM_STATE, "", "getSuccessfulResult", "(Ljava/lang/Object;)Ljava/lang/Object;", "run", "", "takeState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: Dispatched.kt */
public abstract class DispatchedTask<T> extends Task {
    @JvmField
    public int resumeMode;

    @NotNull
    public abstract Continuation<T> getDelegate();

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getSuccessfulResult(@Nullable Object obj) {
        return obj;
    }

    @Nullable
    public abstract Object takeState();

    public DispatchedTask(int i) {
        this.resumeMode = i;
    }

    @Nullable
    public final Throwable getExceptionalResult(@Nullable Object obj) {
        if (!(obj instanceof CompletedExceptionally)) {
            obj = null;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
        if (completedExceptionally != null) {
            return completedExceptionally.cause;
        }
        return null;
    }

    public final void run() {
        TaskContext taskContext = this.taskContext;
        try {
            Continuation<T> delegate = getDelegate();
            if (delegate != null) {
                DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate;
                Continuation<T> continuation = dispatchedContinuation.continuation;
                CoroutineContext context = continuation.getContext();
                Job job = ResumeModeKt.isCancellableMode(this.resumeMode) ? (Job) context.get(Job.Key) : null;
                Object takeState = takeState();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context, dispatchedContinuation.countOrElement);
                if (job != null) {
                    try {
                        if (!job.isActive()) {
                            Result.Companion companion = Result.Companion;
                            continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(job.getCancellationException())));
                            Unit unit = Unit.INSTANCE;
                            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                            taskContext.afterTask();
                            return;
                        }
                    } catch (Throwable th) {
                        ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                        throw th;
                    }
                }
                Throwable exceptionalResult = getExceptionalResult(takeState);
                if (exceptionalResult != null) {
                    Result.Companion companion2 = Result.Companion;
                    continuation.resumeWith(Result.m4constructorimpl(ResultKt.createFailure(exceptionalResult)));
                } else {
                    T successfulResult = getSuccessfulResult(takeState);
                    Result.Companion companion3 = Result.Companion;
                    continuation.resumeWith(Result.m4constructorimpl(successfulResult));
                }
                Unit unit2 = Unit.INSTANCE;
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                taskContext.afterTask();
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
        } catch (Throwable th2) {
            taskContext.afterTask();
            throw th2;
        }
    }
}
