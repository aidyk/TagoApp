package kotlinx.coroutines;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/ParentJob;", "Lkotlinx/coroutines/Job;", "getChildJobCancellationCause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
/* compiled from: Job.kt */
public interface ParentJob extends Job {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
    /* compiled from: Job.kt */
    public static final class DefaultImpls {
        public static <R> R fold(ParentJob parentJob, R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            Intrinsics.checkParameterIsNotNull(function2, "operation");
            return (R) Job.DefaultImpls.fold(parentJob, r, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E get(ParentJob parentJob, @NotNull CoroutineContext.Key<E> key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            return (E) Job.DefaultImpls.get(parentJob, key);
        }

        @NotNull
        public static CoroutineContext minusKey(ParentJob parentJob, @NotNull CoroutineContext.Key<?> key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            return Job.DefaultImpls.minusKey(parentJob, key);
        }

        @NotNull
        public static CoroutineContext plus(ParentJob parentJob, @NotNull CoroutineContext coroutineContext) {
            Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
            return Job.DefaultImpls.plus(parentJob, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static Job plus(ParentJob parentJob, @NotNull Job job) {
            Intrinsics.checkParameterIsNotNull(job, FacebookRequestErrorClassification.KEY_OTHER);
            return Job.DefaultImpls.plus((Job) parentJob, job);
        }
    }

    @InternalCoroutinesApi
    @NotNull
    Throwable getChildJobCancellationCause();
}
