package com.google.android.gms.internal.measurement;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

final class zzby implements Logger {
    private boolean zzrr;
    private int zzyn = 2;

    zzby() {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void error(Exception exc) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void error(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void info(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void verbose(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void warn(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void setLogLevel(int i) {
        this.zzyn = i;
        if (!this.zzrr) {
            String str = zzcf.zzyx.get();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 91);
            sb.append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            sb.append(str);
            sb.append(" DEBUG");
            Log.i(zzcf.zzyx.get(), sb.toString());
            this.zzrr = true;
        }
    }

    @Override // com.google.android.gms.analytics.Logger
    public final int getLogLevel() {
        return this.zzyn;
    }
}
