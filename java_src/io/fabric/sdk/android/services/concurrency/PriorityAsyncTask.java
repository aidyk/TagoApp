package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AsyncTask;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public abstract class PriorityAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements Dependency<Task>, PriorityProvider, Task, DelegateProvider {
    private final PriorityTask priorityTask = new PriorityTask();

    public final void executeOnExecutor(ExecutorService executorService, Params... paramsArr) {
        super.executeOnExecutor(new ProxyExecutor(executorService, this), paramsArr);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return Priority.compareTo(this, obj);
    }

    public void addDependency(Task task) {
        if (getStatus() == AsyncTask.Status.PENDING) {
            ((Dependency) ((PriorityProvider) getDelegate())).addDependency(task);
            return;
        }
        throw new IllegalStateException("Must not add Dependency after task is running");
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
        return this.priorityTask;
    }

    private static class ProxyExecutor<Result> implements Executor {
        private final Executor executor;
        private final PriorityAsyncTask task;

        public ProxyExecutor(Executor executor2, PriorityAsyncTask priorityAsyncTask) {
            this.executor = executor2;
            this.task = priorityAsyncTask;
        }

        public void execute(Runnable runnable) {
            this.executor.execute(new PriorityFutureTask<Result>(runnable, null) {
                /* class io.fabric.sdk.android.services.concurrency.PriorityAsyncTask.ProxyExecutor.AnonymousClass1 */

                @Override // io.fabric.sdk.android.services.concurrency.DelegateProvider, io.fabric.sdk.android.services.concurrency.PriorityFutureTask
                public <T extends Dependency<Task> & PriorityProvider & Task> T getDelegate() {
                    return ProxyExecutor.this.task;
                }
            });
        }
    }
}
