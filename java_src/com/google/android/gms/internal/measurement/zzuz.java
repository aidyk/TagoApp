package com.google.android.gms.internal.measurement;

import java.io.IOException;

public abstract class zzuz {
    int zzbvc;
    int zzbvd;
    private int zzbve;
    zzvc zzbvf;
    private boolean zzbvg;

    public static zzuz zzd(byte[] bArr, int i, int i2) {
        return zza(bArr, i, i2, false);
    }

    public abstract double readDouble() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract String readString() throws IOException;

    public abstract <T extends zzxe> T zza(zzxo<T> zzxo, zzvk zzvk) throws IOException;

    public abstract void zzao(int i) throws zzwe;

    public abstract boolean zzap(int i) throws IOException;

    public abstract int zzar(int i) throws zzwe;

    public abstract void zzas(int i);

    public abstract void zzat(int i) throws IOException;

    public abstract int zzuq() throws IOException;

    public abstract long zzur() throws IOException;

    public abstract long zzus() throws IOException;

    public abstract int zzut() throws IOException;

    public abstract long zzuu() throws IOException;

    public abstract int zzuv() throws IOException;

    public abstract boolean zzuw() throws IOException;

    public abstract String zzux() throws IOException;

    public abstract zzun zzuy() throws IOException;

    public abstract int zzuz() throws IOException;

    public abstract int zzva() throws IOException;

    public abstract int zzvb() throws IOException;

    public abstract long zzvc() throws IOException;

    public abstract int zzvd() throws IOException;

    public abstract long zzve() throws IOException;

    /* access modifiers changed from: package-private */
    public abstract long zzvf() throws IOException;

    public abstract boolean zzvg() throws IOException;

    public abstract int zzvh();

    static zzuz zza(byte[] bArr, int i, int i2, boolean z) {
        zzvb zzvb = new zzvb(bArr, i, i2, false);
        try {
            zzvb.zzar(i2);
            return zzvb;
        } catch (zzwe e) {
            throw new IllegalArgumentException(e);
        }
    }

    private zzuz() {
        this.zzbvd = 100;
        this.zzbve = Integer.MAX_VALUE;
        this.zzbvg = false;
    }

    public final int zzaq(int i) {
        if (i >= 0) {
            int i2 = this.zzbvd;
            this.zzbvd = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }
}
