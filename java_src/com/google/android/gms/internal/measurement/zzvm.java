package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import java.io.IOException;
import java.util.Map;

final class zzvm extends zzvl<Object> {
    zzvm() {
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final boolean zze(zzxe zzxe) {
        return zzxe instanceof zzvx.zzc;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final zzvo<Object> zzw(Object obj) {
        return ((zzvx.zzc) obj).zzbzn;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final void zza(Object obj, zzvo<Object> zzvo) {
        ((zzvx.zzc) obj).zzbzn = zzvo;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final zzvo<Object> zzx(Object obj) {
        zzvo<Object> zzw = zzw(obj);
        if (!zzw.isImmutable()) {
            return zzw;
        }
        zzvo<Object> zzvo = (zzvo) zzw.clone();
        zza(obj, zzvo);
        return zzvo;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final void zzy(Object obj) {
        zzw(obj).zzsw();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final <UT, UB> UB zza(zzxt zzxt, Object obj, zzvk zzvk, zzvo<Object> zzvo, UB ub, zzym<UT, UB> zzym) throws IOException {
        throw new NoSuchMethodError();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final int zzb(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final void zza(zzzh zzzh, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final Object zza(zzvk zzvk, zzxe zzxe, int i) {
        return zzvk.zza(zzxe, i);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final void zza(zzxt zzxt, Object obj, zzvk zzvk, zzvo<Object> zzvo) throws IOException {
        throw new NoSuchMethodError();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzvl
    public final void zza(zzun zzun, Object obj, zzvk zzvk, zzvo<Object> zzvo) throws IOException {
        throw new NoSuchMethodError();
    }
}
