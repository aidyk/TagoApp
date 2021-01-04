package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

/* access modifiers changed from: package-private */
public final class zzwt implements zzxv {
    private static final zzxd zzcbk = new zzwu();
    private final zzxd zzcbj;

    public zzwt() {
        this(new zzwv(zzvw.zzwl(), zzxm()));
    }

    private zzwt(zzxd zzxd) {
        this.zzcbj = (zzxd) zzvz.zza(zzxd, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.measurement.zzxv
    public final <T> zzxu<T> zzh(Class<T> cls) {
        zzxw.zzj(cls);
        zzxc zzf = this.zzcbj.zzf(cls);
        if (zzf.zzxu()) {
            if (zzvx.class.isAssignableFrom(cls)) {
                return zzxj.zza(zzxw.zzyg(), zzvn.zzwb(), zzf.zzxv());
            }
            return zzxj.zza(zzxw.zzye(), zzvn.zzwc(), zzf.zzxv());
        } else if (zzvx.class.isAssignableFrom(cls)) {
            if (zza(zzf)) {
                return zzxi.zza(cls, zzf, zzxn.zzxy(), zzwo.zzxl(), zzxw.zzyg(), zzvn.zzwb(), zzxb.zzxr());
            }
            return zzxi.zza(cls, zzf, zzxn.zzxy(), zzwo.zzxl(), zzxw.zzyg(), null, zzxb.zzxr());
        } else if (zza(zzf)) {
            return zzxi.zza(cls, zzf, zzxn.zzxx(), zzwo.zzxk(), zzxw.zzye(), zzvn.zzwc(), zzxb.zzxq());
        } else {
            return zzxi.zza(cls, zzf, zzxn.zzxx(), zzwo.zzxk(), zzxw.zzyf(), null, zzxb.zzxq());
        }
    }

    private static boolean zza(zzxc zzxc) {
        return zzxc.zzxt() == zzvx.zze.zzbzw;
    }

    private static zzxd zzxm() {
        try {
            return (zzxd) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzcbk;
        }
    }
}
