package com.google.android.gms.internal.vision;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import javax.annotation.concurrent.GuardedBy;

public abstract class zzm<T> {
    private static String PREFIX = "com.google.android.gms.vision.dynamite";
    private final Object lock = new Object();
    private final String tag;
    private final String zzdh;
    private final String zzdi;
    private boolean zzdj = false;
    @GuardedBy("lock")
    private T zzdk;
    private final Context zze;

    public zzm(Context context, String str, String str2) {
        this.zze = context;
        this.tag = str;
        String str3 = PREFIX;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str2).length());
        sb.append(str3);
        sb.append(".");
        sb.append(str2);
        this.zzdh = sb.toString();
        this.zzdi = PREFIX;
    }

    /* access modifiers changed from: protected */
    public abstract T zza(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.LoadingException;

    /* access modifiers changed from: protected */
    public abstract void zzm() throws RemoteException;

    public final boolean isOperational() {
        return zzq() != null;
    }

    public final void zzp() {
        synchronized (this.lock) {
            if (this.zzdk != null) {
                try {
                    zzm();
                } catch (RemoteException e) {
                    Log.e(this.tag, "Could not finalize native handle", e);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(12:8|9|10|12|13|(2:14|15)|(1:19)|21|(2:26|(1:30))(1:25)|31|32|33) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0017, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003f, code lost:
        android.util.Log.e(r5.tag, "Error creating remote native handle", r1);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0019 */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0017 A[ExcHandler: RemoteException (r1v13 'e' android.os.RemoteException A[CUSTOM_DECLARE]), Splitter:B:12:0x0019] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final T zzq() {
        /*
        // Method dump skipped, instructions count: 111
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzm.zzq():java.lang.Object");
    }
}
