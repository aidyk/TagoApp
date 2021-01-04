package com.google.android.gms.internal.vision;

public final class zzct {
    private static final zzcu zzlq;
    private static final int zzlr;

    static final class zza extends zzcu {
        zza() {
        }

        @Override // com.google.android.gms.internal.vision.zzcu
        public final void zza(Throwable th) {
            th.printStackTrace();
        }
    }

    public static void zza(Throwable th) {
        zzlq.zza(th);
    }

    private static Integer zzbq() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0069  */
    static {
        /*
        // Method dump skipped, instructions count: 112
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzct.<clinit>():void");
    }
}
