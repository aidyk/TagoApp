package kotlinx.coroutines;

import kotlinx.coroutines.internal.Symbol;

public final class EventLoopKt {
    private static final Symbol CLOSED_EMPTY = new Symbol("CLOSED_EMPTY");
    private static final Symbol DISPOSED_TASK = new Symbol("REMOVED_TASK");
    private static final long MAX_MS;
    private static final long MS_TO_NS;
    private static final int SCHEDULE_COMPLETED;
    private static final int SCHEDULE_DISPOSED;
    private static final int SCHEDULE_OK;

    private static /* synthetic */ void CLOSED_EMPTY$annotations() {
    }

    public static final long delayToNanos(long j) {
        if (j <= 0) {
            return 0;
        }
        if (j >= MAX_MS) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j;
    }

    public static final long delayNanosToMillis(long j) {
        return j / 1000000;
    }
}
