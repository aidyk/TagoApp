package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

final class zzhl<T> implements zzhw<T> {
    private final zzhf zzzh;
    private final boolean zzzi;
    private final zzio<?, ?> zzzr;
    private final zzfl<?> zzzs;

    private zzhl(zzio<?, ?> zzio, zzfl<?> zzfl, zzhf zzhf) {
        this.zzzr = zzio;
        this.zzzi = zzfl.zze(zzhf);
        this.zzzs = zzfl;
        this.zzzh = zzhf;
    }

    static <T> zzhl<T> zza(zzio<?, ?> zzio, zzfl<?> zzfl, zzhf zzhf) {
        return new zzhl<>(zzio, zzfl, zzhf);
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final T newInstance() {
        return (T) this.zzzh.zzfa().zzff();
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final boolean equals(T t, T t2) {
        if (!this.zzzr.zzt(t).equals(this.zzzr.zzt(t2))) {
            return false;
        }
        if (this.zzzi) {
            return this.zzzs.zzc(t).equals(this.zzzs.zzc(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final int hashCode(T t) {
        int hashCode = this.zzzr.zzt(t).hashCode();
        return this.zzzi ? (hashCode * 53) + this.zzzs.zzc(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zzc(T t, T t2) {
        zzhy.zza(this.zzzr, t, t2);
        if (this.zzzi) {
            zzhy.zza(this.zzzs, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zza(T t, zzjj zzjj) throws IOException {
        Iterator<Map.Entry<?, Object>> it2 = this.zzzs.zzc(t).iterator();
        while (it2.hasNext()) {
            Map.Entry<?, Object> next = it2.next();
            zzfr zzfr = (zzfr) next.getKey();
            if (zzfr.zzet() != zzji.MESSAGE || zzfr.zzeu() || zzfr.zzev()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzgk) {
                zzjj.zza(zzfr.zzr(), (Object) ((zzgk) next).zzfs().zzce());
            } else {
                zzjj.zza(zzfr.zzr(), next.getValue());
            }
        }
        zzio<?, ?> zzio = this.zzzr;
        zzio.zzc(zzio.zzt(t), zzjj);
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005f A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.zzhw
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r7, byte[] r8, int r9, int r10, com.google.android.gms.internal.vision.zzei r11) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 122
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhl.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.zzei):void");
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zza(T t, zzhv zzhv, zzfk zzfk) throws IOException {
        boolean z;
        zzio<?, ?> zzio = this.zzzr;
        zzfl<?> zzfl = this.zzzs;
        Object zzu = zzio.zzu(t);
        zzfp<?> zzd = zzfl.zzd(t);
        do {
            try {
                if (zzhv.zzcn() == Integer.MAX_VALUE) {
                    zzio.zzf(t, zzu);
                    return;
                }
                int tag = zzhv.getTag();
                if (tag == 11) {
                    Object obj = null;
                    zzeo zzeo = null;
                    int i = 0;
                    while (zzhv.zzcn() != Integer.MAX_VALUE) {
                        int tag2 = zzhv.getTag();
                        if (tag2 == 16) {
                            i = zzhv.zzcx();
                            obj = zzfl.zza(zzfk, this.zzzh, i);
                        } else if (tag2 == 26) {
                            if (obj != null) {
                                zzfl.zza(zzhv, obj, zzfk, zzd);
                            } else {
                                zzeo = zzhv.zzcw();
                            }
                        } else if (!zzhv.zzco()) {
                            break;
                        }
                    }
                    if (zzhv.getTag() != 12) {
                        throw zzgf.zzfl();
                    } else if (zzeo != null) {
                        if (obj != null) {
                            zzfl.zza(zzeo, obj, zzfk, zzd);
                        } else {
                            zzio.zza(zzu, i, zzeo);
                        }
                    }
                } else if ((tag & 7) == 2) {
                    Object zza = zzfl.zza(zzfk, this.zzzh, tag >>> 3);
                    if (zza != null) {
                        zzfl.zza(zzhv, zza, zzfk, zzd);
                    } else {
                        z = zzio.zza(zzu, zzhv);
                        continue;
                    }
                } else {
                    z = zzhv.zzco();
                    continue;
                }
                z = true;
                continue;
            } finally {
                zzio.zzf(t, zzu);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zze(T t) {
        this.zzzr.zze(t);
        this.zzzs.zze((Object) t);
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final boolean zzr(T t) {
        return this.zzzs.zzc(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final int zzp(T t) {
        zzio<?, ?> zzio = this.zzzr;
        int zzv = zzio.zzv(zzio.zzt(t)) + 0;
        return this.zzzi ? zzv + this.zzzs.zzc(t).zzer() : zzv;
    }
}
