package com.google.android.gms.internal.measurement;

import java.io.IOException;

final class zzyo extends zzym<zzyn, zzyn> {
    zzyo() {
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final boolean zza(zzxt zzxt) {
        return false;
    }

    private static void zza(Object obj, zzyn zzyn) {
        ((zzvx) obj).zzbzh = zzyn;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final void zzy(Object obj) {
        ((zzvx) obj).zzbzh.zzsw();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ int zzai(zzyn zzyn) {
        return zzyn.zzwe();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ int zzan(zzyn zzyn) {
        return zzyn.zzyu();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ zzyn zzh(zzyn zzyn, zzyn zzyn2) {
        zzyn zzyn3 = zzyn;
        zzyn zzyn4 = zzyn2;
        if (zzyn4.equals(zzyn.zzys())) {
            return zzyn3;
        }
        return zzyn.zza(zzyn3, zzyn4);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.google.android.gms.internal.measurement.zzzh] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zzc(zzyn zzyn, zzzh zzzh) throws IOException {
        zzyn.zza(zzzh);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.google.android.gms.internal.measurement.zzzh] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zza(zzyn zzyn, zzzh zzzh) throws IOException {
        zzyn.zzb(zzzh);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zzg(Object obj, zzyn zzyn) {
        zza(obj, zzyn);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ zzyn zzam(Object obj) {
        zzyn zzyn = ((zzvx) obj).zzbzh;
        if (zzyn != zzyn.zzys()) {
            return zzyn;
        }
        zzyn zzyt = zzyn.zzyt();
        zza(obj, zzyt);
        return zzyt;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ zzyn zzal(Object obj) {
        return ((zzvx) obj).zzbzh;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zzf(Object obj, zzyn zzyn) {
        zza(obj, zzyn);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ zzyn zzaf(zzyn zzyn) {
        zzyn zzyn2 = zzyn;
        zzyn2.zzsw();
        return zzyn2;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ zzyn zzyr() {
        return zzyn.zzyt();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zza(zzyn zzyn, int i, zzyn zzyn2) {
        zzyn.zzb((i << 3) | 3, zzyn2);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, com.google.android.gms.internal.measurement.zzun] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zza(zzyn zzyn, int i, zzun zzun) {
        zzyn.zzb((i << 3) | 2, zzun);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, long] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zzb(zzyn zzyn, int i, long j) {
        zzyn.zzb((i << 3) | 1, Long.valueOf(j));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zzc(zzyn zzyn, int i, int i2) {
        zzyn.zzb((i << 3) | 5, Integer.valueOf(i2));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, long] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzym
    public final /* synthetic */ void zza(zzyn zzyn, int i, long j) {
        zzyn.zzb(i << 3, Long.valueOf(j));
    }
}
