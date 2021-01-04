package kotlinx.coroutines.internal;

import kotlin.jvm.internal.Intrinsics;

public final class LockFreeLinkedListKt {
    private static final Object ALREADY_REMOVED = new Symbol("ALREADY_REMOVED");
    private static final Object CONDITION_FALSE = new Symbol("CONDITION_FALSE");
    public static final int FAILURE;
    private static final Object LIST_EMPTY = new Symbol("LIST_EMPTY");
    private static final Object REMOVE_PREPARED = new Symbol("REMOVE_PREPARED");
    public static final int SUCCESS;
    public static final int UNDECIDED;

    public static /* synthetic */ void ALREADY_REMOVED$annotations() {
    }

    public static /* synthetic */ void CONDITION_FALSE$annotations() {
    }

    public static /* synthetic */ void FAILURE$annotations() {
    }

    public static /* synthetic */ void LIST_EMPTY$annotations() {
    }

    public static /* synthetic */ void SUCCESS$annotations() {
    }

    public static /* synthetic */ void UNDECIDED$annotations() {
    }

    public static final Object getCONDITION_FALSE() {
        return CONDITION_FALSE;
    }

    public static final Object getALREADY_REMOVED() {
        return ALREADY_REMOVED;
    }

    public static final Object getLIST_EMPTY() {
        return LIST_EMPTY;
    }

    public static final LockFreeLinkedListNode unwrap(Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Intrinsics.checkParameterIsNotNull(obj, "receiver$0");
        Removed removed = (Removed) (!(obj instanceof Removed) ? null : obj);
        return (removed == null || (lockFreeLinkedListNode = removed.ref) == null) ? (LockFreeLinkedListNode) obj : lockFreeLinkedListNode;
    }
}
