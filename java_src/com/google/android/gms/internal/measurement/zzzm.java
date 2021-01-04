package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzzl;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class zzzm<M extends zzzl<M>, T> {
    public final int tag;
    private final int type;
    private final zzvx<?, ?> zzbzk;
    protected final Class<T> zzcfy;
    protected final boolean zzcfz;

    public static <M extends zzzl<M>, T extends zzzr> zzzm<M, T> zza(int i, Class<T> cls, long j) {
        return new zzzm<>(11, cls, 810, false);
    }

    private zzzm(int i, Class<T> cls, int i2, boolean z) {
        this(11, cls, null, 810, false);
    }

    private zzzm(int i, Class<T> cls, zzvx<?, ?> zzvx, int i2, boolean z) {
        this.type = i;
        this.zzcfy = cls;
        this.tag = i2;
        this.zzcfz = false;
        this.zzbzk = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzzm)) {
            return false;
        }
        zzzm zzzm = (zzzm) obj;
        return this.type == zzzm.type && this.zzcfy == zzzm.zzcfy && this.tag == zzzm.tag && this.zzcfz == zzzm.zzcfz;
    }

    public final int hashCode() {
        return ((((((this.type + 1147) * 31) + this.zzcfy.hashCode()) * 31) + this.tag) * 31) + (this.zzcfz ? 1 : 0);
    }

    /* access modifiers changed from: package-private */
    public final T zzah(List<zzzt> list) {
        if (list == null) {
            return null;
        }
        if (this.zzcfz) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                zzzt zzzt = list.get(i);
                if (zzzt.zzbvb.length != 0) {
                    arrayList.add(zze(zzzi.zzn(zzzt.zzbvb)));
                }
            }
            int size = arrayList.size();
            if (size == 0) {
                return null;
            }
            T cast = this.zzcfy.cast(Array.newInstance(this.zzcfy.getComponentType(), size));
            for (int i2 = 0; i2 < size; i2++) {
                Array.set(cast, i2, arrayList.get(i2));
            }
            return cast;
        } else if (list.isEmpty()) {
            return null;
        } else {
            return this.zzcfy.cast(zze(zzzi.zzn(list.get(list.size() - 1).zzbvb)));
        }
    }

    private final Object zze(zzzi zzzi) {
        Class componentType = this.zzcfz ? this.zzcfy.getComponentType() : this.zzcfy;
        try {
            switch (this.type) {
                case 10:
                    zzzr zzzr = (zzzr) componentType.newInstance();
                    zzzi.zza(zzzr, this.tag >>> 3);
                    return zzzr;
                case 11:
                    zzzr zzzr2 = (zzzr) componentType.newInstance();
                    zzzi.zza(zzzr2);
                    return zzzr2;
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
            }
        } catch (InstantiationException e) {
            String valueOf = String.valueOf(componentType);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 33);
            sb2.append("Error creating instance of class ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString(), e);
        } catch (IllegalAccessException e2) {
            String valueOf2 = String.valueOf(componentType);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 33);
            sb3.append("Error creating instance of class ");
            sb3.append(valueOf2);
            throw new IllegalArgumentException(sb3.toString(), e2);
        } catch (IOException e3) {
            throw new IllegalArgumentException("Error reading extension field", e3);
        }
    }

    /* access modifiers changed from: protected */
    public final void zza(Object obj, zzzj zzzj) {
        try {
            zzzj.zzcc(this.tag);
            switch (this.type) {
                case 10:
                    ((zzzr) obj).zza(zzzj);
                    zzzj.zzc(this.tag >>> 3, 4);
                    return;
                case 11:
                    zzzj.zzb((zzzr) obj);
                    return;
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* access modifiers changed from: protected */
    public final int zzao(Object obj) {
        int i = this.tag >>> 3;
        switch (this.type) {
            case 10:
                return (zzzj.zzbc(i) << 1) + ((zzzr) obj).zzwe();
            case 11:
                return zzzj.zzb(i, (zzzr) obj);
            default:
                int i2 = this.type;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
        }
    }
}
