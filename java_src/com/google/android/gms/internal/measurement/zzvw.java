package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

final class zzvw implements zzxd {
    private static final zzvw zzbzg = new zzvw();

    private zzvw() {
    }

    public static zzvw zzwl() {
        return zzbzg;
    }

    @Override // com.google.android.gms.internal.measurement.zzxd
    public final boolean zze(Class<?> cls) {
        return zzvx.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzxd
    public final zzxc zzf(Class<?> cls) {
        if (!zzvx.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzxc) zzvx.zzg(cls.asSubclass(zzvx.class)).zza(zzvx.zze.zzbzq, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
