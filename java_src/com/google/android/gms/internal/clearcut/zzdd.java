package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;

/* access modifiers changed from: package-private */
public final class zzdd implements zzeg {
    private static final zzdn zzlz = new zzde();
    private final zzdn zzly;

    public zzdd() {
        this(new zzdf(zzcf.zzay(), zzby()));
    }

    private zzdd(zzdn zzdn) {
        this.zzly = (zzdn) zzci.zza((Object) zzdn, "messageInfoFactory");
    }

    private static boolean zza(zzdm zzdm) {
        return zzdm.zzcf() == zzcg.zzg.zzkl;
    }

    private static zzdn zzby() {
        try {
            return (zzdn) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzlz;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzeg
    public final <T> zzef<T> zzd(Class<T> cls) {
        zzeh.zzf((Class<?>) cls);
        zzdm zzb = this.zzly.zzb(cls);
        return zzb.zzcg() ? zzcg.class.isAssignableFrom(cls) ? zzdu.zza(zzeh.zzdo(), zzbx.zzap(), zzb.zzch()) : zzdu.zza(zzeh.zzdm(), zzbx.zzaq(), zzb.zzch()) : zzcg.class.isAssignableFrom(cls) ? zza(zzb) ? zzds.zza(cls, zzb, zzdy.zzck(), zzcy.zzbw(), zzeh.zzdo(), zzbx.zzap(), zzdl.zzcd()) : zzds.zza(cls, zzb, zzdy.zzck(), zzcy.zzbw(), zzeh.zzdo(), (zzbu<?>) null, zzdl.zzcd()) : zza(zzb) ? zzds.zza(cls, zzb, zzdy.zzcj(), zzcy.zzbv(), zzeh.zzdm(), zzbx.zzaq(), zzdl.zzcc()) : zzds.zza(cls, zzb, zzdy.zzcj(), zzcy.zzbv(), zzeh.zzdn(), (zzbu<?>) null, zzdl.zzcc());
    }
}
