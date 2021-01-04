package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzde extends zzat implements zzbw<zzdf> {
    private final zzdf zzach = new zzdf();

    public zzde(zzaw zzaw) {
        super(zzaw);
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zzb(String str, String str2) {
        this.zzach.zzaco.put(str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zzc(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.zzach.zzaci = str2;
        } else if ("ga_sampleFrequency".equals(str)) {
            try {
                this.zzach.zzacj = Double.parseDouble(str2);
            } catch (NumberFormatException e) {
                zzc("Error parsing ga_sampleFrequency value", str2, e);
            }
        } else {
            zzd("string configuration name not recognized", str);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zza(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.zzach.zzacl = z;
        } else if ("ga_anonymizeIp".equals(str)) {
            this.zzach.zzacm = z;
        } else if ("ga_reportUncaughtExceptions".equals(str)) {
            this.zzach.zzacn = z ? 1 : 0;
        } else {
            zzd("bool configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zzb(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.zzach.zzack = i;
        } else {
            zzd("int configuration name not recognized", str);
        }
    }

    /* Return type fixed from 'com.google.android.gms.internal.measurement.zzbu' to match base method */
    @Override // com.google.android.gms.internal.measurement.zzbw
    public final /* synthetic */ zzdf zzdv() {
        return this.zzach;
    }
}
