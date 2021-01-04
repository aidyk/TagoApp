package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdn extends zzjn<zzdn> {
    public Integer zzow;
    public Integer zzox;
    public Integer zzoy;
    public Boolean zzoz = null;
    public Boolean zzpa = null;
    public Float zzpb = null;

    public zzdn() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzow != null) {
            zzjl.zze(1, this.zzow.intValue());
        }
        if (this.zzox != null) {
            zzjl.zze(2, this.zzox.intValue());
        }
        if (this.zzoy != null) {
            zzjl.zze(3, this.zzoy.intValue());
        }
        if (this.zzoz != null) {
            zzjl.zzb(4, this.zzoz.booleanValue());
        }
        if (this.zzpa != null) {
            zzjl.zzb(5, this.zzpa.booleanValue());
        }
        if (this.zzpb != null) {
            zzjl.zza(6, this.zzpb.floatValue());
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzow != null) {
            zzt += zzjl.zzi(1, this.zzow.intValue());
        }
        if (this.zzox != null) {
            zzt += zzjl.zzi(2, this.zzox.intValue());
        }
        if (this.zzoy != null) {
            zzt += zzjl.zzi(3, this.zzoy.intValue());
        }
        if (this.zzoz != null) {
            this.zzoz.booleanValue();
            zzt += zzjl.zzav(4) + 1;
        }
        if (this.zzpa != null) {
            this.zzpa.booleanValue();
            zzt += zzjl.zzav(5) + 1;
        }
        if (this.zzpb == null) {
            return zzt;
        }
        this.zzpb.floatValue();
        return zzt + zzjl.zzav(6) + 4;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00a9, code lost:
        throw new java.lang.IllegalArgumentException(r5.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00de, code lost:
        throw new java.lang.IllegalArgumentException(r5.toString());
     */
    /* renamed from: zzd */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.vision.zzdn zza(com.google.android.gms.internal.vision.zzjk r7) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 232
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzdn.zza(com.google.android.gms.internal.vision.zzjk):com.google.android.gms.internal.vision.zzdn");
    }
}
