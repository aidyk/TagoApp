package com.polidea.rxandroidble2.internal.util;

import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.operations.Operation;

public class OperationLogger {
    private OperationLogger() {
    }

    public static void logOperationStarted(Operation operation) {
        if (RxBleLog.isAtLeast(3)) {
            RxBleLog.d("STARTED  %s(%d)", operation.getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(operation)));
        }
    }

    public static void logOperationRemoved(Operation operation) {
        if (RxBleLog.isAtLeast(3)) {
            RxBleLog.d("REMOVED  %s(%d)", operation.getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(operation)));
        }
    }

    public static void logOperationQueued(Operation operation) {
        if (RxBleLog.isAtLeast(3)) {
            RxBleLog.d("QUEUED   %s(%d)", operation.getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(operation)));
        }
    }

    public static void logOperationFinished(Operation operation, long j, long j2) {
        if (RxBleLog.isAtLeast(3)) {
            RxBleLog.d("FINISHED %s(%d) in %d ms", operation.getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(operation)), Long.valueOf(j2 - j));
        }
    }
}
