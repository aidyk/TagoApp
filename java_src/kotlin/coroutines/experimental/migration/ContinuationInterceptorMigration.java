package kotlin.coroutines.experimental.migration;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\r0\f\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b8VX\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;", "Lkotlin/coroutines/ContinuationInterceptor;", "interceptor", "Lkotlin/coroutines/experimental/ContinuationInterceptor;", "(Lkotlin/coroutines/experimental/ContinuationInterceptor;)V", "getInterceptor", "()Lkotlin/coroutines/experimental/ContinuationInterceptor;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "interceptContinuation", "Lkotlin/coroutines/Continuation;", "T", "continuation", "kotlin-stdlib_coroutines"}, k = 1, mv = {1, 1, 13})
/* compiled from: CoroutinesMigration.kt */
public final class ContinuationInterceptorMigration implements ContinuationInterceptor {
    @NotNull
    private final kotlin.coroutines.experimental.ContinuationInterceptor interceptor;

    public ContinuationInterceptorMigration(@NotNull kotlin.coroutines.experimental.ContinuationInterceptor continuationInterceptor) {
        Intrinsics.checkParameterIsNotNull(continuationInterceptor, "interceptor");
        this.interceptor = continuationInterceptor;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        return (R) ContinuationInterceptor.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return (E) ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @NotNull
    public final kotlin.coroutines.experimental.ContinuationInterceptor getInterceptor() {
        return this.interceptor;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "context");
        return ContinuationInterceptor.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public void releaseInterceptedContinuation(@NotNull Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        ContinuationInterceptor.DefaultImpls.releaseInterceptedContinuation(this, continuation);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.Key<?> getKey() {
        return ContinuationInterceptor.Key;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    @NotNull
    public <T> Continuation<T> interceptContinuation(@NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        return CoroutinesMigrationKt.toContinuation(this.interceptor.interceptContinuation(CoroutinesMigrationKt.toExperimentalContinuation(continuation)));
    }
}
