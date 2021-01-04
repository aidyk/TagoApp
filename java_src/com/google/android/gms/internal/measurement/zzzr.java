package com.google.android.gms.internal.measurement;

import java.io.IOException;

public abstract class zzzr {
    protected volatile int zzcgh = -1;

    public abstract zzzr zza(zzzi zzzi) throws IOException;

    public void zza(zzzj zzzj) throws IOException {
    }

    /* access modifiers changed from: protected */
    public int zzf() {
        return 0;
    }

    public final int zzzo() {
        if (this.zzcgh < 0) {
            zzwe();
        }
        return this.zzcgh;
    }

    public final int zzwe() {
        int zzf = zzf();
        this.zzcgh = zzf;
        return zzf;
    }

    public static final void zza(zzzr zzzr, byte[] bArr, int i, int i2) {
        try {
            zzzj zzk = zzzj.zzk(bArr, 0, i2);
            zzzr.zza(zzk);
            zzk.zzzh();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends zzzr> T zza(T t, byte[] bArr) throws zzzq {
        return (T) zzb(t, bArr, 0, bArr.length);
    }

    private static final <T extends zzzr> T zzb(T t, byte[] bArr, int i, int i2) throws zzzq {
        try {
            zzzi zzj = zzzi.zzj(bArr, 0, i2);
            t.zza(zzj);
            zzj.zzao(0);
            return t;
        } catch (zzzq e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public String toString() {
        return zzzs.zzc(this);
    }

    /* renamed from: zzzi */
    public zzzr clone() throws CloneNotSupportedException {
        return (zzzr) super.clone();
    }
}
