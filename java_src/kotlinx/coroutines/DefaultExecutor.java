package kotlinx.coroutines;

import com.polidea.rxandroidble2.ClientComponent;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin._Assertions;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.EventLoopBase;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u000eH\u0002J\r\u0010\u0018\u001a\u00020\u0016H\u0000¢\u0006\u0002\b\u0019J\u001c\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\b2\n\u0010\u001d\u001a\u00060\u0002j\u0002`\u0003H\u0016J\b\u0010\u001e\u001a\u00020\u0012H\u0014J\b\u0010\u001f\u001a\u00020\u0012H\u0002J\b\u0010 \u001a\u00020\u0016H\u0016J\u000e\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\bJ\b\u0010#\u001a\u00020\u000eH\u0002J\b\u0010$\u001a\u00020\u0016H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bXT¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000eX\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0004R\u000e\u0010\u0010\u001a\u00020\u0006X\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128TX\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00128BX\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013¨\u0006%"}, d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "()V", "ACTIVE", "", "DEFAULT_KEEP_ALIVE", "", "FRESH", "KEEP_ALIVE_NANOS", "SHUTDOWN_ACK", "SHUTDOWN_REQ", "_thread", "Ljava/lang/Thread;", "_thread$annotations", "debugStatus", "isCompleted", "", "()Z", "isShutdownRequested", "acknowledgeShutdownIfNeeded", "", "createThreadSync", "ensureStarted", "ensureStarted$kotlinx_coroutines_core", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "block", "isCorrectThread", "notifyStartup", "run", "shutdown", ClientComponent.NamedSchedulers.TIMEOUT, "thread", "unpark", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: DefaultExecutor.kt */
public final class DefaultExecutor extends EventLoopBase implements Runnable {
    private static final int ACTIVE = 1;
    private static final long DEFAULT_KEEP_ALIVE = 1000;
    private static final int FRESH = 0;
    public static final DefaultExecutor INSTANCE = new DefaultExecutor();
    private static final long KEEP_ALIVE_NANOS;
    private static final int SHUTDOWN_ACK = 3;
    private static final int SHUTDOWN_REQ = 2;
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    private static /* synthetic */ void _thread$annotations() {
    }

    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.EventLoopBase
    public boolean isCompleted() {
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.EventLoopBase
    public boolean isCorrectThread() {
        return true;
    }

    static {
        Long l;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        Intrinsics.checkExpressionValueIsNotNull(l, "try {\n            java.l…AULT_KEEP_ALIVE\n        }");
        KEEP_ALIVE_NANOS = timeUnit.toNanos(l.longValue());
    }

    private DefaultExecutor() {
    }

    private final boolean isShutdownRequested() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    @Override // kotlinx.coroutines.Delay, kotlinx.coroutines.EventLoopBase
    @NotNull
    public DisposableHandle invokeOnTimeout(long j, @NotNull Runnable runnable) {
        Intrinsics.checkParameterIsNotNull(runnable, "block");
        EventLoopBase.DelayedRunnableTask delayedRunnableTask = new EventLoopBase.DelayedRunnableTask(j, runnable);
        INSTANCE.schedule$kotlinx_coroutines_core(delayedRunnableTask);
        return delayedRunnableTask;
    }

    public void run() {
        TimeSourceKt.getTimeSource().registerTimeLoopThread();
        try {
            if (notifyStartup()) {
                long j = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long processNextEvent = processNextEvent();
                    if (processNextEvent == Long.MAX_VALUE) {
                        if (j == Long.MAX_VALUE) {
                            long nanoTime = TimeSourceKt.getTimeSource().nanoTime();
                            if (j == Long.MAX_VALUE) {
                                j = KEEP_ALIVE_NANOS + nanoTime;
                            }
                            long j2 = j - nanoTime;
                            if (j2 <= 0) {
                                _thread = null;
                                acknowledgeShutdownIfNeeded();
                                TimeSourceKt.getTimeSource().unregisterTimeLoopThread();
                                if (!isEmpty()) {
                                    thread();
                                    return;
                                }
                                return;
                            }
                            processNextEvent = RangesKt.coerceAtMost(processNextEvent, j2);
                        } else {
                            processNextEvent = RangesKt.coerceAtMost(processNextEvent, KEEP_ALIVE_NANOS);
                        }
                    }
                    if (processNextEvent > 0) {
                        if (isShutdownRequested()) {
                            _thread = null;
                            acknowledgeShutdownIfNeeded();
                            TimeSourceKt.getTimeSource().unregisterTimeLoopThread();
                            if (!isEmpty()) {
                                thread();
                                return;
                            }
                            return;
                        }
                        TimeSourceKt.getTimeSource().parkNanos(this, processNextEvent);
                    }
                }
            }
        } finally {
            _thread = null;
            acknowledgeShutdownIfNeeded();
            TimeSourceKt.getTimeSource().unregisterTimeLoopThread();
            if (!isEmpty()) {
                thread();
            }
        }
    }

    private final Thread thread() {
        Thread thread = _thread;
        return thread != null ? thread : createThreadSync();
    }

    private final synchronized Thread createThreadSync() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    /* access modifiers changed from: protected */
    @Override // kotlinx.coroutines.EventLoopBase
    public void unpark() {
        TimeSourceKt.getTimeSource().unpark(thread());
    }

    public final synchronized void ensureStarted$kotlinx_coroutines_core() {
        boolean z = true;
        boolean z2 = _thread == null;
        if (_Assertions.ENABLED) {
            if (!z2) {
                throw new AssertionError("Assertion failed");
            }
        }
        if (debugStatus != 0) {
            if (debugStatus != 3) {
                z = false;
            }
        }
        if (_Assertions.ENABLED) {
            if (!z) {
                throw new AssertionError("Assertion failed");
            }
        }
        debugStatus = 0;
        createThreadSync();
        while (debugStatus == 0) {
            wait();
        }
    }

    private final synchronized boolean notifyStartup() {
        if (isShutdownRequested()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    public final synchronized void shutdown(long j) {
        long currentTimeMillis = System.currentTimeMillis() + j;
        if (!isShutdownRequested()) {
            debugStatus = 2;
        }
        while (true) {
            if (debugStatus == 3 || _thread == null) {
                break;
            }
            Thread thread = _thread;
            if (thread != null) {
                TimeSourceKt.getTimeSource().unpark(thread);
            }
            if (currentTimeMillis - System.currentTimeMillis() <= 0) {
                break;
            }
            wait(j);
        }
        debugStatus = 0;
    }

    private final synchronized void acknowledgeShutdownIfNeeded() {
        if (isShutdownRequested()) {
            debugStatus = 3;
            resetAll();
            notifyAll();
        }
    }
}
