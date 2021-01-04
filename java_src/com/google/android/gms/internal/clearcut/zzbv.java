package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.io.IOException;
import java.util.Map;

final class zzbv extends zzbu<zzcg.zze> {
    zzbv() {
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final int zza(Map.Entry<?, ?> entry) {
        return ((zzcg.zze) entry.getKey()).number;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final zzby<zzcg.zze> zza(Object obj) {
        return ((zzcg.zzd) obj).zzjv;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final void zza(zzfr zzfr, Map.Entry<?, ?> entry) throws IOException {
        zzcg.zze zze = (zzcg.zze) entry.getKey();
        switch (zze.zzjx) {
            case DOUBLE:
                zzfr.zza(zze.number, ((Double) entry.getValue()).doubleValue());
                return;
            case FLOAT:
                zzfr.zza(zze.number, ((Float) entry.getValue()).floatValue());
                return;
            case INT64:
                zzfr.zzi(zze.number, ((Long) entry.getValue()).longValue());
                return;
            case UINT64:
                zzfr.zza(zze.number, ((Long) entry.getValue()).longValue());
                return;
            case INT32:
                zzfr.zzc(zze.number, ((Integer) entry.getValue()).intValue());
                return;
            case FIXED64:
                zzfr.zzc(zze.number, ((Long) entry.getValue()).longValue());
                return;
            case FIXED32:
                zzfr.zzf(zze.number, ((Integer) entry.getValue()).intValue());
                return;
            case BOOL:
                zzfr.zzb(zze.number, ((Boolean) entry.getValue()).booleanValue());
                return;
            case UINT32:
                zzfr.zzd(zze.number, ((Integer) entry.getValue()).intValue());
                return;
            case SFIXED32:
                zzfr.zzm(zze.number, ((Integer) entry.getValue()).intValue());
                return;
            case SFIXED64:
                zzfr.zzj(zze.number, ((Long) entry.getValue()).longValue());
                return;
            case SINT32:
                zzfr.zze(zze.number, ((Integer) entry.getValue()).intValue());
                return;
            case SINT64:
                zzfr.zzb(zze.number, ((Long) entry.getValue()).longValue());
                return;
            case ENUM:
                zzfr.zzc(zze.number, ((Integer) entry.getValue()).intValue());
                return;
            case BYTES:
                zzfr.zza(zze.number, (zzbb) entry.getValue());
                return;
            case STRING:
                zzfr.zza(zze.number, (String) entry.getValue());
                return;
            case GROUP:
                zzfr.zzb(zze.number, entry.getValue(), zzea.zzcm().zze(entry.getValue().getClass()));
                return;
            case MESSAGE:
                zzfr.zza(zze.number, entry.getValue(), zzea.zzcm().zze(entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final void zza(Object obj, zzby<zzcg.zze> zzby) {
        ((zzcg.zzd) obj).zzjv = zzby;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final zzby<zzcg.zze> zzb(Object obj) {
        zzby<zzcg.zze> zza = zza(obj);
        if (!zza.isImmutable()) {
            return zza;
        }
        zzby<zzcg.zze> zzby = (zzby) zza.clone();
        zza(obj, zzby);
        return zzby;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final void zzc(Object obj) {
        zza(obj).zzv();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzbu
    public final boolean zze(zzdo zzdo) {
        return zzdo instanceof zzcg.zzd;
    }
}
