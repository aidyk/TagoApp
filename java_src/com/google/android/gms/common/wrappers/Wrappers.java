package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

@KeepForSdk
public class Wrappers {
    private static Wrappers zzhy = new Wrappers();
    private PackageManagerWrapper zzhx = null;

    @VisibleForTesting
    private final synchronized PackageManagerWrapper zzi(Context context) {
        if (this.zzhx == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.zzhx = new PackageManagerWrapper(context);
        }
        return this.zzhx;
    }

    @KeepForSdk
    public static PackageManagerWrapper packageManager(Context context) {
        return zzhy.zzi(context);
    }
}
