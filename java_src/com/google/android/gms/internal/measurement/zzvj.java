package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzvj {
    private static final Class<?> zzbwd = zzvu();

    private static Class<?> zzvu() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzvk zzvv() {
        if (zzbwd != null) {
            try {
                return zzgg("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return zzvk.zzbwh;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0014  */
    /* JADX WARNING: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x000e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.google.android.gms.internal.measurement.zzvk zzvw() {
        /*
            java.lang.Class<?> r0 = com.google.android.gms.internal.measurement.zzvj.zzbwd
            if (r0 == 0) goto L_0x000b
            java.lang.String r0 = "loadGeneratedRegistry"
            com.google.android.gms.internal.measurement.zzvk r0 = zzgg(r0)     // Catch:{ Exception -> 0x000b }
            goto L_0x000c
        L_0x000b:
            r0 = 0
        L_0x000c:
            if (r0 != 0) goto L_0x0012
            com.google.android.gms.internal.measurement.zzvk r0 = com.google.android.gms.internal.measurement.zzvk.zzvw()
        L_0x0012:
            if (r0 != 0) goto L_0x0018
            com.google.android.gms.internal.measurement.zzvk r0 = zzvv()
        L_0x0018:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvj.zzvw():com.google.android.gms.internal.measurement.zzvk");
    }

    private static final zzvk zzgg(String str) throws Exception {
        return (zzvk) zzbwd.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
