package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import java.io.IOException;
import java.util.List;
import java.util.Map;

final class zzvg implements zzzh {
    private final zzve zzbva;

    public static zzvg zza(zzve zzve) {
        if (zzve.zzbvr != null) {
            return zzve.zzbvr;
        }
        return new zzvg(zzve);
    }

    private zzvg(zzve zzve) {
        this.zzbva = (zzve) zzvz.zza(zzve, "output");
        this.zzbva.zzbvr = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final int zzvt() {
        return zzvx.zze.zzbzz;
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzn(int i, int i2) throws IOException {
        this.zzbva.zzg(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzi(int i, long j) throws IOException {
        this.zzbva.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzj(int i, long j) throws IOException {
        this.zzbva.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, float f) throws IOException {
        this.zzbva.zza(i, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, double d) throws IOException {
        this.zzbva.zza(i, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzo(int i, int i2) throws IOException {
        this.zzbva.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, long j) throws IOException {
        this.zzbva.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzd(int i, int i2) throws IOException {
        this.zzbva.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzc(int i, long j) throws IOException {
        this.zzbva.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzg(int i, int i2) throws IOException {
        this.zzbva.zzg(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, boolean z) throws IOException {
        this.zzbva.zzb(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, String str) throws IOException {
        this.zzbva.zzb(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, zzun zzun) throws IOException {
        this.zzbva.zza(i, zzun);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zze(int i, int i2) throws IOException {
        this.zzbva.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzf(int i, int i2) throws IOException {
        this.zzbva.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, long j) throws IOException {
        this.zzbva.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, Object obj, zzxu zzxu) throws IOException {
        this.zzbva.zza(i, (zzxe) obj, zzxu);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, Object obj, zzxu zzxu) throws IOException {
        zzve zzve = this.zzbva;
        zzve.zzc(i, 3);
        zzxu.zza((zzxe) obj, zzve.zzbvr);
        zzve.zzc(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzbl(int i) throws IOException {
        this.zzbva.zzc(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzbm(int i) throws IOException {
        this.zzbva.zzc(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zzun) {
            this.zzbva.zzb(i, (zzun) obj);
        } else {
            this.zzbva.zzb(i, (zzxe) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbd(list.get(i4).intValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzay(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzd(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbg(list.get(i4).intValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzbb(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzg(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzc(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbb(list.get(i4).longValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzay(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zza(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzd(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbc(list.get(i4).longValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzay(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zza(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbe(list.get(i4).longValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzba(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzc(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzb(list.get(i4).floatValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zza(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zza(i, list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzc(list.get(i4).doubleValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzb(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zza(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzh(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbi(list.get(i4).intValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzay(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzd(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzi(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzt(list.get(i4).booleanValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzs(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzb(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (list instanceof zzwn) {
            zzwn zzwn = (zzwn) list;
            while (i2 < list.size()) {
                Object zzbo = zzwn.zzbo(i2);
                if (zzbo instanceof String) {
                    this.zzbva.zzb(i, (String) zzbo);
                } else {
                    this.zzbva.zza(i, (zzun) zzbo);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzb(i, list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, List<zzun> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzbva.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbe(list.get(i4).intValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzaz(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zze(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbh(list.get(i4).intValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzbb(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzg(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbf(list.get(i4).longValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzba(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzc(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbf(list.get(i4).intValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzba(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzf(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.zzbva.zzc(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzve.zzbd(list.get(i4).longValue());
            }
            this.zzbva.zzaz(i3);
            while (i2 < list.size()) {
                this.zzbva.zzaz(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzbva.zzb(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zza(int i, List<?> list, zzxu zzxu) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzxu);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final void zzb(int i, List<?> list, zzxu zzxu) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzxu);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzh
    public final <K, V> void zza(int i, zzwx<K, V> zzwx, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzbva.zzc(i, 2);
            this.zzbva.zzaz(zzww.zza(zzwx, entry.getKey(), entry.getValue()));
            zzww.zza(this.zzbva, zzwx, entry.getKey(), entry.getValue());
        }
    }
}
