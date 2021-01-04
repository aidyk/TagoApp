package com.google.android.exoplayer2.util;

final class SystemClock implements Clock {
    SystemClock() {
    }

    @Override // com.google.android.exoplayer2.util.Clock
    public long elapsedRealtime() {
        return android.os.SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.Clock
    public void sleep(long j) {
        android.os.SystemClock.sleep(j);
    }
}
