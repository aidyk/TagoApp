package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

final class zzxj<T> implements zzxu<T> {
    private final zzxe zzcby;
    private final boolean zzcbz;
    private final zzym<?, ?> zzcci;
    private final zzvl<?> zzccj;

    private zzxj(zzym<?, ?> zzym, zzvl<?> zzvl, zzxe zzxe) {
        this.zzcci = zzym;
        this.zzcbz = zzvl.zze(zzxe);
        this.zzccj = zzvl;
        this.zzcby = zzxe;
    }

    static <T> zzxj<T> zza(zzym<?, ?> zzym, zzvl<?> zzvl, zzxe zzxe) {
        return new zzxj<>(zzym, zzvl, zzxe);
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final T newInstance() {
        return (T) this.zzcby.zzwp().zzwu();
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final boolean equals(T t, T t2) {
        if (!this.zzcci.zzal(t).equals(this.zzcci.zzal(t2))) {
            return false;
        }
        if (this.zzcbz) {
            return this.zzccj.zzw(t).equals(this.zzccj.zzw(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int hashCode(T t) {
        int hashCode = this.zzcci.zzal(t).hashCode();
        return this.zzcbz ? (hashCode * 53) + this.zzccj.zzw(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzd(T t, T t2) {
        zzxw.zza(this.zzcci, t, t2);
        if (this.zzcbz) {
            zzxw.zza(this.zzccj, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zza(T t, zzzh zzzh) throws IOException {
        Iterator<Map.Entry<?, Object>> it2 = this.zzccj.zzw(t).iterator();
        while (it2.hasNext()) {
            Map.Entry<?, Object> next = it2.next();
            zzvq zzvq = (zzvq) next.getKey();
            if (zzvq.zzwh() != zzzg.MESSAGE || zzvq.zzwi() || zzvq.zzwj()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzwj) {
                zzzh.zza(zzvq.zzc(), (Object) ((zzwj) next).zzxh().zzud());
            } else {
                zzzh.zza(zzvq.zzc(), next.getValue());
            }
        }
        zzym<?, ?> zzym = this.zzcci;
        zzym.zzc(zzym.zzal(t), zzzh);
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zza(T t, zzxt zzxt, zzvk zzvk) throws IOException {
        boolean z;
        zzym<?, ?> zzym = this.zzcci;
        zzvl<?> zzvl = this.zzccj;
        Object zzam = zzym.zzam(t);
        zzvo<?> zzx = zzvl.zzx(t);
        do {
            try {
                if (zzxt.zzvo() == Integer.MAX_VALUE) {
                    zzym.zzg(t, zzam);
                    return;
                }
                int tag = zzxt.getTag();
                if (tag == 11) {
                    Object obj = null;
                    zzun zzun = null;
                    int i = 0;
                    while (zzxt.zzvo() != Integer.MAX_VALUE) {
                        int tag2 = zzxt.getTag();
                        if (tag2 == 16) {
                            i = zzxt.zzuz();
                            obj = zzvl.zza(zzvk, this.zzcby, i);
                        } else if (tag2 == 26) {
                            if (obj != null) {
                                zzvl.zza(zzxt, obj, zzvk, zzx);
                            } else {
                                zzun = zzxt.zzuy();
                            }
                        } else if (!zzxt.zzvp()) {
                            break;
                        }
                    }
                    if (zzxt.getTag() != 12) {
                        throw zzwe.zzxa();
                    } else if (zzun != null) {
                        if (obj != null) {
                            zzvl.zza(zzun, obj, zzvk, zzx);
                        } else {
                            zzym.zza(zzam, i, zzun);
                        }
                    }
                } else if ((tag & 7) == 2) {
                    Object zza = zzvl.zza(zzvk, this.zzcby, tag >>> 3);
                    if (zza != null) {
                        zzvl.zza(zzxt, zza, zzvk, zzx);
                    } else {
                        z = zzym.zza(zzam, zzxt);
                        continue;
                    }
                } else {
                    z = zzxt.zzvp();
                    continue;
                }
                z = true;
                continue;
            } finally {
                zzym.zzg(t, zzam);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzy(T t) {
        this.zzcci.zzy(t);
        this.zzccj.zzy(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final boolean zzaj(T t) {
        return this.zzccj.zzw(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int zzai(T t) {
        zzym<?, ?> zzym = this.zzcci;
        int zzan = zzym.zzan(zzym.zzal(t)) + 0;
        return this.zzcbz ? zzan + this.zzccj.zzw(t).zzwf() : zzan;
    }
}
