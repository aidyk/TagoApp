package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class PriorityFutureTask<V> extends FutureTask<V> implements Dependency<Task>, PriorityProvider, Task, DelegateProvider {
    final Object delegate;

    public PriorityFutureTask(Callable<V> callable) {
        super(callable);
        this.delegate = checkAndInitDelegate(callable);
    }

    public PriorityFutureTask(Runnable runnable, V v) {
        super(runnable, v);
        this.delegate = checkAndInitDelegate(runnable);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((PriorityProvider) getDelegate()).compareTo(obj);
    }

    public void addDependency(Task task) {
        ((Dependency) ((PriorityProvider) getDelegate())).addDependency(task);
    }

    @Override // io.fabric.sdk.android.services.concurrency.Dependency
    public Collection<Task> getDependencies() {
        return ((Dependency) ((PriorityProvider) getDelegate())).getDependencies();
    }

    @Override // io.fabric.sdk.android.services.concurrency.Dependency
    public boolean areDependenciesMet() {
        return ((Dependency) ((PriorityProvider) getDelegate())).areDependenciesMet();
    }

    @Override // io.fabric.sdk.android.services.concurrency.PriorityProvider
    public Priority getPriority() {
        return ((PriorityProvider) getDelegate()).getPriority();
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public void setFinished(boolean z) {
        ((Task) ((PriorityProvider) getDelegate())).setFinished(z);
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public boolean isFinished() {
        return ((Task) ((PriorityProvider) getDelegate())).isFinished();
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public void setError(Throwable th) {
        ((Task) ((PriorityProvider) getDelegate())).setError(th);
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public Throwable getError() {
        return ((Task) ((PriorityProvider) getDelegate())).getError();
    }

    @Override // io.fabric.sdk.android.services.concurrency.DelegateProvider
    public <T extends Dependency<Task> & PriorityProvider & Task> T getDelegate() {
        return (T) ((Dependency) this.delegate);
    }

    /* access modifiers changed from: protected */
    public <T extends Dependency<Task> & PriorityProvider & Task> T checkAndInitDelegate(Object obj) {
        return PriorityTask.isProperDelegate(obj) ? (T) ((Dependency) obj) : new PriorityTask();
    }
}
