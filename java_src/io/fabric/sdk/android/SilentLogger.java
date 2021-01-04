package io.fabric.sdk.android;

public class SilentLogger implements Logger {
    private int logLevel = 7;

    @Override // io.fabric.sdk.android.Logger
    public void d(String str, String str2) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String str, String str2, Throwable th) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String str, String str2) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String str, String str2, Throwable th) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String str, String str2) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String str, String str2, Throwable th) {
    }

    @Override // io.fabric.sdk.android.Logger
    public boolean isLoggable(String str, int i) {
        return false;
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2, boolean z) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void setLogLevel(int i) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String str, String str2) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String str, String str2, Throwable th) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String str, String str2) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String str, String str2, Throwable th) {
    }

    @Override // io.fabric.sdk.android.Logger
    public int getLogLevel() {
        return this.logLevel;
    }
}
