package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class AsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE = (CPU_COUNT + 1);
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = ((CPU_COUNT * 2) + 1);
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor SERIAL_EXECUTOR = new SerialExecutor();
    public static final Executor THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1, TimeUnit.SECONDS, poolWorkQueue, threadFactory);
    private static volatile Executor defaultExecutor = SERIAL_EXECUTOR;
    private static final InternalHandler handler = new InternalHandler();
    private static final BlockingQueue<Runnable> poolWorkQueue = new LinkedBlockingQueue(128);
    private static final ThreadFactory threadFactory = new ThreadFactory() {
        /* class io.fabric.sdk.android.services.concurrency.AsyncTask.AnonymousClass1 */
        private final AtomicInteger count = new AtomicInteger(1);

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.count.getAndIncrement());
        }
    };
    private final AtomicBoolean cancelled = new AtomicBoolean();
    private final FutureTask<Result> future = new FutureTask<Result>(this.worker) {
        /* class io.fabric.sdk.android.services.concurrency.AsyncTask.AnonymousClass3 */

        /* access modifiers changed from: protected */
        public void done() {
            try {
                AsyncTask.this.postResultIfNotInvoked(get());
            } catch (InterruptedException e) {
                Log.w(AsyncTask.LOG_TAG, e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
            } catch (CancellationException unused) {
                AsyncTask.this.postResultIfNotInvoked(null);
            }
        }
    };
    private volatile Status status = Status.PENDING;
    private final AtomicBoolean taskInvoked = new AtomicBoolean();
    private final WorkerRunnable<Params, Result> worker = new WorkerRunnable<Params, Result>() {
        /* class io.fabric.sdk.android.services.concurrency.AsyncTask.AnonymousClass2 */

        /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: io.fabric.sdk.android.services.concurrency.AsyncTask */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            AsyncTask.this.taskInvoked.set(true);
            Process.setThreadPriority(10);
            return (Result) AsyncTask.this.postResult(AsyncTask.this.doInBackground(this.params));
        }
    };

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* access modifiers changed from: protected */
    public abstract Result doInBackground(Params... paramsArr);

    /* access modifiers changed from: protected */
    public void onCancelled() {
    }

    /* access modifiers changed from: protected */
    public void onPostExecute(Result result) {
    }

    /* access modifiers changed from: protected */
    public void onPreExecute() {
    }

    /* access modifiers changed from: protected */
    public void onProgressUpdate(Progress... progressArr) {
    }

    private static class SerialExecutor implements Executor {
        Runnable active;
        final LinkedList<Runnable> tasks;

        private SerialExecutor() {
            this.tasks = new LinkedList<>();
        }

        public synchronized void execute(final Runnable runnable) {
            this.tasks.offer(new Runnable() {
                /* class io.fabric.sdk.android.services.concurrency.AsyncTask.SerialExecutor.AnonymousClass1 */

                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        SerialExecutor.this.scheduleNext();
                    }
                }
            });
            if (this.active == null) {
                scheduleNext();
            }
        }

        /* access modifiers changed from: protected */
        public synchronized void scheduleNext() {
            Runnable poll = this.tasks.poll();
            this.active = poll;
            if (poll != null) {
                AsyncTask.THREAD_POOL_EXECUTOR.execute(this.active);
            }
        }
    }

    public static void init() {
        handler.getLooper();
    }

    public static void setDefaultExecutor(Executor executor) {
        defaultExecutor = executor;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void postResultIfNotInvoked(Result result) {
        if (!this.taskInvoked.get()) {
            postResult(result);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Result postResult(Result result) {
        handler.obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    public final Status getStatus() {
        return this.status;
    }

    /* access modifiers changed from: protected */
    public void onCancelled(Result result) {
        onCancelled();
    }

    public final boolean isCancelled() {
        return this.cancelled.get();
    }

    public final boolean cancel(boolean z) {
        this.cancelled.set(true);
        return this.future.cancel(z);
    }

    public final Result get() throws InterruptedException, ExecutionException {
        return this.future.get();
    }

    public final Result get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.future.get(j, timeUnit);
    }

    public final AsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(defaultExecutor, paramsArr);
    }

    public final AsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.status != Status.PENDING) {
            switch (this.status) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.status = Status.RUNNING;
        onPreExecute();
        this.worker.params = paramsArr;
        executor.execute(this.future);
        return this;
    }

    public static void execute(Runnable runnable) {
        defaultExecutor.execute(runnable);
    }

    /* access modifiers changed from: protected */
    public final void publishProgress(Progress... progressArr) {
        if (!isCancelled()) {
            handler.obtainMessage(2, new AsyncTaskResult(this, progressArr)).sendToTarget();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.status = Status.FINISHED;
    }

    /* access modifiers changed from: private */
    public static class InternalHandler extends Handler {
        public InternalHandler() {
            super(Looper.getMainLooper());
        }

        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            switch (message.what) {
                case 1:
                    asyncTaskResult.task.finish(asyncTaskResult.data[0]);
                    return;
                case 2:
                    asyncTaskResult.task.onProgressUpdate(asyncTaskResult.data);
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: private */
    public static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] params;

        private WorkerRunnable() {
        }
    }

    /* access modifiers changed from: private */
    public static class AsyncTaskResult<Data> {
        final Data[] data;
        final AsyncTask task;

        AsyncTaskResult(AsyncTask asyncTask, Data... dataArr) {
            this.task = asyncTask;
            this.data = dataArr;
        }
    }
}
