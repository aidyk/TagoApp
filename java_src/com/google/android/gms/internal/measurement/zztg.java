package com.google.android.gms.internal.measurement;

import java.io.PrintStream;

public final class zztg {
    private static final zzth zzbso;
    private static final int zzbsp;

    static final class zza extends zzth {
        zza() {
        }

        @Override // com.google.android.gms.internal.measurement.zzth
        public final void zza(Throwable th, PrintStream printStream) {
            th.printStackTrace(printStream);
        }
    }

    public static void zza(Throwable th, PrintStream printStream) {
        zzbso.zza(th, printStream);
    }

    private static Integer zztu() {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zztg.<clinit>():void");
    }
}
