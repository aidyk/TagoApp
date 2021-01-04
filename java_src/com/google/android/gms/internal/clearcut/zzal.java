package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
import android.util.Log;

/* access modifiers changed from: package-private */
public final class zzal extends zzae<T> {
    private final Object lock = new Object();
    private String zzec;
    private T zzed;
    private final /* synthetic */ zzan zzee;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzal(zzao zzao, String str, Object obj, zzan zzan) {
        super(zzao, str, obj, null);
        this.zzee = zzan;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.zzae
    public final T zza(SharedPreferences sharedPreferences) {
        try {
            return (T) zzb(sharedPreferences.getString(this.zzds, ""));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.zzds);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid byte[] value in SharedPreferences for ".concat(valueOf) : new String("Invalid byte[] value in SharedPreferences for "), e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0021, code lost:
        r1 = r4.zzds;
        r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 27) + java.lang.String.valueOf(r5).length());
        r3.append("Invalid byte[] value for ");
        r3.append(r1);
        r3.append(": ");
        r3.append(r5);
        android.util.Log.e("PhenotypeFlag", r3.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0055, code lost:
        return null;
     */
    @Override // com.google.android.gms.internal.clearcut.zzae
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final T zzb(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.lock
            monitor-enter(r0)
            java.lang.String r1 = r4.zzec     // Catch:{ all -> 0x001e }
            boolean r1 = r5.equals(r1)     // Catch:{ all -> 0x001e }
            if (r1 != 0) goto L_0x001a
            com.google.android.gms.internal.clearcut.zzan r1 = r4.zzee     // Catch:{ all -> 0x001e }
            r2 = 3
            byte[] r2 = android.util.Base64.decode(r5, r2)     // Catch:{ all -> 0x001e }
            java.lang.Object r1 = r1.zzb(r2)     // Catch:{ all -> 0x001e }
            r4.zzec = r5     // Catch:{ all -> 0x001e }
            r4.zzed = r1     // Catch:{ all -> 0x001e }
        L_0x001a:
            T r1 = r4.zzed     // Catch:{ all -> 0x001e }
            monitor-exit(r0)     // Catch:{ all -> 0x001e }
            return r1
        L_0x001e:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x001e }
            throw r1     // Catch:{ IOException | IllegalArgumentException -> 0x0021 }
        L_0x0021:
            java.lang.String r0 = "PhenotypeFlag"
            java.lang.String r1 = r4.zzds
            java.lang.String r2 = java.lang.String.valueOf(r1)
            int r2 = r2.length()
            int r2 = r2 + 27
            java.lang.String r3 = java.lang.String.valueOf(r5)
            int r3 = r3.length()
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            java.lang.String r2 = "Invalid byte[] value for "
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = ": "
            r3.append(r1)
            r3.append(r5)
            java.lang.String r5 = r3.toString()
            android.util.Log.e(r0, r5)
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzal.zzb(java.lang.String):java.lang.Object");
    }
}
