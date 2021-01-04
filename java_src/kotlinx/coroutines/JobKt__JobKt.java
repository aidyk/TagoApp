package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

public final /* synthetic */ class JobKt__JobKt {
    public static final Job Job(Job job) {
        return new JobImpl(job);
    }

    public static /* synthetic */ Job Job$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return JobKt.Job(job);
    }

    public static final DisposableHandle DisposableHandle(Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "block");
        return new JobKt__JobKt$DisposableHandle$1(function0);
    }

    public static final DisposableHandle disposeOnCompletion(Job job, DisposableHandle disposableHandle) {
        Intrinsics.checkParameterIsNotNull(job, "receiver$0");
        Intrinsics.checkParameterIsNotNull(disposableHandle, "handle");
        return job.invokeOnCompletion(new DisposeOnCompletion(job, disposableHandle));
    }

    public static final Object cancelAndJoin(Job job, Continuation<? super Unit> continuation) {
        job.cancel();
        return job.join(continuation);
    }

    public static /* synthetic */ void cancelChildren$default(Job job, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        JobKt.cancelChildren(job, th);
    }

    public static final void cancelChildren(Job job, Throwable th) {
        Intrinsics.checkParameterIsNotNull(job, "receiver$0");
        for (Job job2 : job.getChildren()) {
            job2.cancel(th);
        }
    }

    public static final void cancelChildren(Job job) {
        Intrinsics.checkParameterIsNotNull(job, "receiver$0");
        for (Job job2 : job.getChildren()) {
            job2.cancel();
        }
    }

    public static final boolean isActive(CoroutineContext coroutineContext) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "receiver$0");
        Job job = (Job) coroutineContext.get(Job.Key);
        return job != null && job.isActive();
    }

    public static final void cancel(CoroutineContext coroutineContext) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "receiver$0");
        Job job = (Job) coroutineContext.get(Job.Key);
        if (job != null) {
            job.cancel();
        }
    }

    public static /* synthetic */ boolean cancel$default(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        return JobKt.cancel(coroutineContext, th);
    }

    public static final boolean cancel(CoroutineContext coroutineContext, Throwable th) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "receiver$0");
        Job job = (Job) coroutineContext.get(Job.Key);
        if (job != null) {
            return job.cancel(th);
        }
        return false;
    }

    public static final void cancelChildren(CoroutineContext coroutineContext) {
        Sequence<Job> children;
        Intrinsics.checkParameterIsNotNull(coroutineContext, "receiver$0");
        Job job = (Job) coroutineContext.get(Job.Key);
        if (!(job == null || (children = job.getChildren()) == null)) {
            for (Job job2 : children) {
                job2.cancel();
            }
        }
    }

    public static /* synthetic */ void cancelChildren$default(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        JobKt.cancelChildren(coroutineContext, th);
    }

    public static final void cancelChildren(CoroutineContext coroutineContext, Throwable th) {
        Sequence<Job> children;
        Intrinsics.checkParameterIsNotNull(coroutineContext, "receiver$0");
        Job job = (Job) coroutineContext.get(Job.Key);
        if (!(job == null || (children = job.getChildren()) == null)) {
            for (Job job2 : children) {
                job2.cancel(th);
            }
        }
    }
}
