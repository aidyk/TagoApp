package com.crashlytics.android.core;

/* access modifiers changed from: package-private */
public class MiddleOutStrategy implements StackTraceTrimmingStrategy {
    private final int trimmedSize;

    public MiddleOutStrategy(int i) {
        this.trimmedSize = i;
    }

    @Override // com.crashlytics.android.core.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.trimmedSize) {
            return stackTraceElementArr;
        }
        int i = this.trimmedSize / 2;
        int i2 = this.trimmedSize - i;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[this.trimmedSize];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, i2);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - i, stackTraceElementArr2, i2, i);
        return stackTraceElementArr2;
    }
}
