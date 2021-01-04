package io.fabric.sdk.android.services.common;

public class SystemCurrentTimeProvider implements CurrentTimeProvider {
    @Override // io.fabric.sdk.android.services.common.CurrentTimeProvider
    public long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }
}
