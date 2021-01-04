package io.fabric.sdk.android;

import android.util.Log;

public class DefaultLogger implements Logger {
    private int logLevel;

    public DefaultLogger(int i) {
        this.logLevel = i;
    }

    public DefaultLogger() {
        this.logLevel = 4;
    }

    @Override // io.fabric.sdk.android.Logger
    public boolean isLoggable(String str, int i) {
        return this.logLevel <= i || Log.isLoggable(str, i);
    }

    @Override // io.fabric.sdk.android.Logger
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // io.fabric.sdk.android.Logger
    public void setLogLevel(int i) {
        this.logLevel = i;
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String str, String str2, Throwable th) {
        if (isLoggable(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String str, String str2, Throwable th) {
        if (isLoggable(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String str, String str2, Throwable th) {
        if (isLoggable(str, 4)) {
            Log.i(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String str, String str2, Throwable th) {
        if (isLoggable(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String str, String str2, Throwable th) {
        if (isLoggable(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String str, String str2) {
        d(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String str, String str2) {
        v(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String str, String str2) {
        i(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String str, String str2) {
        w(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2) {
        log(i, str, str2, false);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2, boolean z) {
        if (z || isLoggable(str, i)) {
            Log.println(i, str, str2);
        }
    }
}
