package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* access modifiers changed from: package-private */
public final class zzvb extends zzuz {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzbvh;
    private int zzbvi;
    private int zzbvj;
    private int zzbvk;
    private int zzbvl;

    private zzvb(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzbvl = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzbvj = this.pos;
        this.zzbvh = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzuq() throws IOException {
        if (zzvg()) {
            this.zzbvk = 0;
            return 0;
        }
        this.zzbvk = zzvi();
        if ((this.zzbvk >>> 3) != 0) {
            return this.zzbvk;
        }
        throw new zzwe("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final void zzao(int i) throws zzwe {
        if (this.zzbvk != i) {
            throw zzwe.zzxa();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final boolean zzap(int i) throws IOException {
        int zzuq;
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
                    throw zzwe.zzwz();
                }
                while (i2 < 10) {
                    if (zzvn() < 0) {
                        i2++;
                    }
                }
                throw zzwe.zzwz();
                return true;
            case 1:
                zzat(8);
                return true;
            case 2:
                zzat(zzvi());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzat(4);
                return true;
            default:
                throw zzwe.zzxb();
        }
        do {
            zzuq = zzuq();
            if (zzuq != 0) {
            }
            zzao(((i >>> 3) << 3) | 4);
            return true;
        } while (zzap(zzuq));
        zzao(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzvl());
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzvk());
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzur() throws IOException {
        return zzvj();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzus() throws IOException {
        return zzvj();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzut() throws IOException {
        return zzvi();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzuu() throws IOException {
        return zzvl();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzuv() throws IOException {
        return zzvk();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final boolean zzuw() throws IOException {
        return zzvj() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final String readString() throws IOException {
        int zzvi = zzvi();
        if (zzvi > 0 && zzvi <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, zzvi, zzvz.UTF_8);
            this.pos += zzvi;
            return str;
        } else if (zzvi == 0) {
            return "";
        } else {
            if (zzvi < 0) {
                throw zzwe.zzwy();
            }
            throw zzwe.zzwx();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final String zzux() throws IOException {
        int zzvi = zzvi();
        if (zzvi > 0 && zzvi <= this.limit - this.pos) {
            String zzh = zzyu.zzh(this.buffer, this.pos, zzvi);
            this.pos += zzvi;
            return zzh;
        } else if (zzvi == 0) {
            return "";
        } else {
            if (zzvi <= 0) {
                throw zzwe.zzwy();
            }
            throw zzwe.zzwx();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final <T extends zzxe> T zza(zzxo<T> zzxo, zzvk zzvk) throws IOException {
        int zzvi = zzvi();
        if (this.zzbvc < this.zzbvd) {
            int zzar = zzar(zzvi);
            this.zzbvc++;
            T zza = zzxo.zza(this, zzvk);
            zzao(0);
            this.zzbvc--;
            zzas(zzar);
            return zza;
        }
        throw zzwe.zzxc();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final zzun zzuy() throws IOException {
        byte[] bArr;
        int zzvi = zzvi();
        if (zzvi > 0 && zzvi <= this.limit - this.pos) {
            zzun zzb = zzun.zzb(this.buffer, this.pos, zzvi);
            this.pos += zzvi;
            return zzb;
        } else if (zzvi == 0) {
            return zzun.zzbuu;
        } else {
            if (zzvi > 0 && zzvi <= this.limit - this.pos) {
                int i = this.pos;
                this.pos += zzvi;
                bArr = Arrays.copyOfRange(this.buffer, i, this.pos);
            } else if (zzvi > 0) {
                throw zzwe.zzwx();
            } else if (zzvi == 0) {
                bArr = zzvz.zzcae;
            } else {
                throw zzwe.zzwy();
            }
            return zzun.zzi(bArr);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzuz() throws IOException {
        return zzvi();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzva() throws IOException {
        return zzvi();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzvb() throws IOException {
        return zzvk();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzvc() throws IOException {
        return zzvl();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzvd() throws IOException {
        int zzvi = zzvi();
        return (-(zzvi & 1)) ^ (zzvi >>> 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzve() throws IOException {
        long zzvj = zzvj();
        return (-(zzvj & 1)) ^ (zzvj >>> 1);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0068, code lost:
        if (r1[r2] >= 0) goto L_0x006a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzvi() throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 115
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvb.zzvi():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b5, code lost:
        if (((long) r1[r0]) >= 0) goto L_0x0071;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long zzvj() throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 192
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvb.zzvj():long");
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzvf() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzvn = zzvn();
            j |= ((long) (zzvn & ByteCompanionObject.MAX_VALUE)) << i;
            if ((zzvn & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzwe.zzwz();
    }

    private final int zzvk() throws IOException {
        int i = this.pos;
        if (this.limit - i >= 4) {
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16);
        }
        throw zzwe.zzwx();
    }

    private final long zzvl() throws IOException {
        int i = this.pos;
        if (this.limit - i >= 8) {
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }
        throw zzwe.zzwx();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzar(int i) throws zzwe {
        if (i >= 0) {
            int zzvh = i + zzvh();
            int i2 = this.zzbvl;
            if (zzvh <= i2) {
                this.zzbvl = zzvh;
                zzvm();
                return i2;
            }
            throw zzwe.zzwx();
        }
        throw zzwe.zzwy();
    }

    private final void zzvm() {
        this.limit += this.zzbvi;
        int i = this.limit - this.zzbvj;
        if (i > this.zzbvl) {
            this.zzbvi = i - this.zzbvl;
            this.limit -= this.zzbvi;
            return;
        }
        this.zzbvi = 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final void zzas(int i) {
        this.zzbvl = i;
        zzvm();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final boolean zzvg() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzvh() {
        return this.pos - this.zzbvj;
    }

    private final byte zzvn() throws IOException {
        if (this.pos != this.limit) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            return bArr[i];
        }
        throw zzwe.zzwx();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final void zzat(int i) throws IOException {
        if (i >= 0 && i <= this.limit - this.pos) {
            this.pos += i;
        } else if (i < 0) {
            throw zzwe.zzwy();
        } else {
            throw zzwe.zzwx();
        }
    }
}
