package kotlinx.coroutines;

import kotlinx.coroutines.internal.Symbol;

public final class JobSupportKt {
    private static final int COMPLETING_ALREADY_COMPLETING;
    private static final int COMPLETING_COMPLETED;
    private static final int COMPLETING_RETRY;
    private static final int COMPLETING_WAITING_CHILDREN;
    private static final Empty EMPTY_ACTIVE = new Empty(true);
    private static final Empty EMPTY_NEW = new Empty(false);
    private static final int FALSE;
    private static final int RETRY;
    private static final Symbol SEALED = new Symbol("SEALED");
    private static final int TRUE;
}
