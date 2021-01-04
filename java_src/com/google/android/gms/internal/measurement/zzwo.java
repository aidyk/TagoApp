package com.google.android.gms.internal.measurement;

import java.util.List;

/* access modifiers changed from: package-private */
public abstract class zzwo {
    private static final zzwo zzcbe = new zzwq();
    private static final zzwo zzcbf = new zzwr();

    private zzwo() {
    }

    /* access modifiers changed from: package-private */
    public abstract <L> List<L> zza(Object obj, long j);

    /* access modifiers changed from: package-private */
    public abstract <L> void zza(Object obj, Object obj2, long j);

    /* access modifiers changed from: package-private */
    public abstract void zzb(Object obj, long j);

    static zzwo zzxk() {
        return zzcbe;
    }

    static zzwo zzxl() {
        return zzcbf;
    }
}
