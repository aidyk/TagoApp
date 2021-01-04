package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.Logger;

final class zzgg implements Logger {
    zzgg() {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void error(String str) {
        zzdi.e(str);
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void error(Exception exc) {
        zzdi.zza("", exc);
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void info(String str) {
        zzdi.zzdo(str);
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void verbose(String str) {
        zzdi.v(str);
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void warn(String str) {
        zzdi.zzab(str);
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void setLogLevel(int i) {
        zzdi.zzab("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
    }

    @Override // com.google.android.gms.analytics.Logger
    public final int getLogLevel() {
        switch (zzdi.zzyn) {
            case 2:
                return 0;
            case 3:
            case 4:
                return 1;
            case 5:
                return 2;
            case 6:
                return 3;
            default:
                return 3;
        }
    }
}
