package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* access modifiers changed from: package-private */
public final class zzfb extends zzez {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzsk;
    private int zzsl;
    private int zzsm;
    private int zzsn;
    private int zzso;

    private zzfb(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzso = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzsm = this.pos;
        this.zzsk = z;
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzdq() throws IOException {
        if (zzcm()) {
            this.zzsn = 0;
            return 0;
        }
        this.zzsn = zzdt();
        if ((this.zzsn >>> 3) != 0) {
            return this.zzsn;
        }
        throw zzgf.zzfk();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final void zzak(int i) throws zzgf {
        if (this.zzsn != i) {
            throw zzgf.zzfl();
        }
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final boolean zzal(int i) throws IOException {
        int zzdq;
        int i2 = 0;
        switch (i & 7) {
            case 0:
                if (this.limit - this.pos >= 10) {
                    while (i2 < 10) {
                        byte[] bArr = this.buffer;
                        int i3 = this.pos;
                        this.pos = i3 + 1;
                        if (bArr[i3] < 0) {
                            i2++;
                        }
                    }
                    throw zzgf.zzfj();
                }
                while (i2 < 10) {
                    if (zzdy() < 0) {
                        i2++;
                    }
                }
                throw zzgf.zzfj();
                return true;
            case 1:
                zzap(8);
                return true;
            case 2:
                zzap(zzdt());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzap(4);
                return true;
            default:
                throw zzgf.zzfm();
        }
        do {
            zzdq = zzdq();
            if (zzdq != 0) {
            }
            zzak(((i >>> 3) << 3) | 4);
            return true;
        } while (zzal(zzdq));
        zzak(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzdw());
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzdv());
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final long zzcp() throws IOException {
        return zzdu();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final long zzcq() throws IOException {
        return zzdu();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzcr() throws IOException {
        return zzdt();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final long zzcs() throws IOException {
        return zzdw();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzct() throws IOException {
        return zzdv();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final boolean zzcu() throws IOException {
        return zzdu() != 0;
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final String readString() throws IOException {
        int zzdt = zzdt();
        if (zzdt > 0 && zzdt <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, zzdt, zzga.UTF_8);
            this.pos += zzdt;
            return str;
        } else if (zzdt == 0) {
            return "";
        } else {
            if (zzdt < 0) {
                throw zzgf.zzfi();
            }
            throw zzgf.zzfh();
        }
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final String zzcv() throws IOException {
        int zzdt = zzdt();
        if (zzdt > 0 && zzdt <= this.limit - this.pos) {
            String zzi = zziw.zzi(this.buffer, this.pos, zzdt);
            this.pos += zzdt;
            return zzi;
        } else if (zzdt == 0) {
            return "";
        } else {
            if (zzdt <= 0) {
                throw zzgf.zzfi();
            }
            throw zzgf.zzfh();
        }
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final <T extends zzhf> T zza(zzhq<T> zzhq, zzfk zzfk) throws IOException {
        int zzdt = zzdt();
        if (this.zzsf < this.zzsg) {
            int zzan = zzan(zzdt);
            this.zzsf++;
            T zza = zzhq.zza(this, zzfk);
            zzak(0);
            this.zzsf--;
            zzao(zzan);
            return zza;
        }
        throw zzgf.zzfn();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final zzeo zzcw() throws IOException {
        byte[] bArr;
        int zzdt = zzdt();
        if (zzdt > 0 && zzdt <= this.limit - this.pos) {
            zzeo zzb = zzeo.zzb(this.buffer, this.pos, zzdt);
            this.pos += zzdt;
            return zzb;
        } else if (zzdt == 0) {
            return zzeo.zzrx;
        } else {
            if (zzdt > 0 && zzdt <= this.limit - this.pos) {
                int i = this.pos;
                this.pos += zzdt;
                bArr = Arrays.copyOfRange(this.buffer, i, this.pos);
            } else if (zzdt > 0) {
                throw zzgf.zzfh();
            } else if (zzdt == 0) {
                bArr = zzga.zzxn;
            } else {
                throw zzgf.zzfi();
            }
            return zzeo.zze(bArr);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzcx() throws IOException {
        return zzdt();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzcy() throws IOException {
        return zzdt();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzcz() throws IOException {
        return zzdv();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final long zzda() throws IOException {
        return zzdw();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzdb() throws IOException {
        return zzaq(zzdt());
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final long zzdc() throws IOException {
        return zzd(zzdu());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0068, code lost:
        if (r1[r2] >= 0) goto L_0x006a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzdt() throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 115
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzfb.zzdt():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b5, code lost:
        if (((long) r1[r0]) >= 0) goto L_0x0071;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long zzdu() throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 192
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzfb.zzdu():long");
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.zzez
    public final long zzdr() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzdy = zzdy();
            j |= ((long) (zzdy & ByteCompanionObject.MAX_VALUE)) << i;
            if ((zzdy & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzgf.zzfj();
    }

    private final int zzdv() throws IOException {
        int i = this.pos;
        if (this.limit - i >= 4) {
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16);
        }
        throw zzgf.zzfh();
    }

    private final long zzdw() throws IOException {
        int i = this.pos;
        if (this.limit - i >= 8) {
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }
        throw zzgf.zzfh();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzan(int i) throws zzgf {
        if (i >= 0) {
            int zzds = i + zzds();
            int i2 = this.zzso;
            if (zzds <= i2) {
                this.zzso = zzds;
                zzdx();
                return i2;
            }
            throw zzgf.zzfh();
        }
        throw zzgf.zzfi();
    }

    private final void zzdx() {
        this.limit += this.zzsl;
        int i = this.limit - this.zzsm;
        if (i > this.zzso) {
            this.zzsl = i - this.zzso;
            this.limit -= this.zzsl;
            return;
        }
        this.zzsl = 0;
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final void zzao(int i) {
        this.zzso = i;
        zzdx();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final boolean zzcm() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final int zzds() {
        return this.pos - this.zzsm;
    }

    private final byte zzdy() throws IOException {
        if (this.pos != this.limit) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            return bArr[i];
        }
        throw zzgf.zzfh();
    }

    @Override // com.google.android.gms.internal.vision.zzez
    public final void zzap(int i) throws IOException {
        if (i >= 0 && i <= this.limit - this.pos) {
            this.pos += i;
        } else if (i < 0) {
            throw zzgf.zzfi();
        } else {
            throw zzgf.zzfh();
        }
    }
}
