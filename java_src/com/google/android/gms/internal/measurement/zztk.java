package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
import java.util.List;

final class zztk extends zzth {
    private final zzti zzbsu = new zzti();

    zztk() {
    }

    @Override // com.google.android.gms.internal.measurement.zzth
    public final void zza(Throwable th, PrintStream printStream) {
        th.printStackTrace(printStream);
        List<Throwable> zza = this.zzbsu.zza(th, false);
        if (zza != null) {
            synchronized (zza) {
                for (Throwable th2 : zza) {
                    printStream.print("Suppressed: ");
                    th2.printStackTrace(printStream);
                }
            }
        }
    }
}
