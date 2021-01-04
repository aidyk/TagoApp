package com.google.android.gms.internal.vision;

import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

public final class zzjk {
    private final byte[] buffer;
    private final int zzacz;
    private final int zzada;
    private int zzadb;
    private int zzadc;
    private zzez zzadd;
    private int zzsf;
    private int zzsg = 64;
    private int zzsh = 67108864;
    private int zzsl;
    private int zzsn;
    private int zzso = Integer.MAX_VALUE;

    public static zzjk zzk(byte[] bArr, int i, int i2) {
        return new zzjk(bArr, 0, i2);
    }

    public final int zzdq() throws IOException {
        if (this.zzadc == this.zzadb) {
            this.zzsn = 0;
            return 0;
        }
        this.zzsn = zzdt();
        if (this.zzsn != 0) {
            return this.zzsn;
        }
        throw new zzjs("Protocol message contained an invalid tag (zero).");
    }

    public final void zzak(int i) throws zzjs {
        if (this.zzsn != i) {
            throw new zzjs("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzal(int i) throws IOException {
        int zzdq;
        switch (i & 7) {
            case 0:
                zzdt();
                return true;
            case 1:
                zzdy();
                zzdy();
                zzdy();
                zzdy();
                zzdy();
                zzdy();
                zzdy();
                zzdy();
                return true;
            case 2:
                zzap(zzdt());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzdv();
                return true;
            default:
                throw new zzjs("Protocol message tag had invalid wire type.");
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

    public final boolean zzcu() throws IOException {
        return zzdt() != 0;
    }

    public final String readString() throws IOException {
        int zzdt = zzdt();
        if (zzdt < 0) {
            throw zzjs.zzhu();
        } else if (zzdt <= this.zzadb - this.zzadc) {
            String str = new String(this.buffer, this.zzadc, zzdt, zzjr.UTF_8);
            this.zzadc += zzdt;
            return str;
        } else {
            throw zzjs.zzht();
        }
    }

    public final void zza(zzjt zzjt) throws IOException {
        int zzdt = zzdt();
        if (this.zzsf < this.zzsg) {
            int zzan = zzan(zzdt);
            this.zzsf++;
            zzjt.zza(this);
            zzak(0);
            this.zzsf--;
            zzao(zzan);
            return;
        }
        throw new zzjs("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    public final int zzdt() throws IOException {
        byte zzdy = zzdy();
        if (zzdy >= 0) {
            return zzdy;
        }
        int i = zzdy & ByteCompanionObject.MAX_VALUE;
        byte zzdy2 = zzdy();
        if (zzdy2 >= 0) {
            return i | (zzdy2 << 7);
        }
        int i2 = i | ((zzdy2 & ByteCompanionObject.MAX_VALUE) << 7);
        byte zzdy3 = zzdy();
        if (zzdy3 >= 0) {
            return i2 | (zzdy3 << 14);
        }
        int i3 = i2 | ((zzdy3 & ByteCompanionObject.MAX_VALUE) << 14);
        byte zzdy4 = zzdy();
        if (zzdy4 >= 0) {
            return i3 | (zzdy4 << 21);
        }
        int i4 = i3 | ((zzdy4 & ByteCompanionObject.MAX_VALUE) << 21);
        byte zzdy5 = zzdy();
        int i5 = i4 | (zzdy5 << 28);
        if (zzdy5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (zzdy() >= 0) {
                return i5;
            }
        }
        throw zzjs.zzhv();
    }

    public final long zzdu() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzdy = zzdy();
            j |= ((long) (zzdy & ByteCompanionObject.MAX_VALUE)) << i;
            if ((zzdy & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzjs.zzhv();
    }

    public final int zzdv() throws IOException {
        return (zzdy() & UByte.MAX_VALUE) | ((zzdy() & UByte.MAX_VALUE) << 8) | ((zzdy() & UByte.MAX_VALUE) << 16) | ((zzdy() & UByte.MAX_VALUE) << 24);
    }

    private zzjk(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzacz = i;
        int i3 = i2 + i;
        this.zzadb = i3;
        this.zzada = i3;
        this.zzadc = i;
    }

    public final <T extends zzfy<T, ?>> T zza(zzhq<T> zzhq) throws IOException {
        try {
            if (this.zzadd == null) {
                this.zzadd = zzez.zze(this.buffer, this.zzacz, this.zzada);
            }
            int zzds = this.zzadd.zzds();
            int i = this.zzadc - this.zzacz;
            if (zzds <= i) {
                this.zzadd.zzap(i - zzds);
                this.zzadd.zzam(this.zzsg - this.zzsf);
                T t = (T) ((zzfy) this.zzadd.zza(zzhq, zzfk.zzel()));
                zzal(this.zzsn);
                return t;
            }
            throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(zzds), Integer.valueOf(i)));
        } catch (zzgf e) {
            throw new zzjs("", e);
        }
    }

    public final int zzan(int i) throws zzjs {
        if (i >= 0) {
            int i2 = i + this.zzadc;
            int i3 = this.zzso;
            if (i2 <= i3) {
                this.zzso = i2;
                zzdx();
                return i3;
            }
            throw zzjs.zzht();
        }
        throw zzjs.zzhu();
    }

    private final void zzdx() {
        this.zzadb += this.zzsl;
        int i = this.zzadb;
        if (i > this.zzso) {
            this.zzsl = i - this.zzso;
            this.zzadb -= this.zzsl;
            return;
        }
        this.zzsl = 0;
    }

    public final void zzao(int i) {
        this.zzso = i;
        zzdx();
    }

    public final int zzhq() {
        if (this.zzso == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzso - this.zzadc;
    }

    public final int getPosition() {
        return this.zzadc - this.zzacz;
    }

    public final byte[] zzv(int i, int i2) {
        if (i2 == 0) {
            return zzjw.zzaea;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzacz + i, bArr, 0, i2);
        return bArr;
    }

    public final void zzbt(int i) {
        zzw(i, this.zzsn);
    }

    /* access modifiers changed from: package-private */
    public final void zzw(int i, int i2) {
        if (i > this.zzadc - this.zzacz) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(this.zzadc - this.zzacz);
            throw new IllegalArgumentException(sb.toString());
        } else if (i >= 0) {
            this.zzadc = this.zzacz + i;
            this.zzsn = i2;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    private final byte zzdy() throws IOException {
        if (this.zzadc != this.zzadb) {
            byte[] bArr = this.buffer;
            int i = this.zzadc;
            this.zzadc = i + 1;
            return bArr[i];
        }
        throw zzjs.zzht();
    }

    private final void zzap(int i) throws IOException {
        if (i < 0) {
            throw zzjs.zzhu();
        } else if (this.zzadc + i > this.zzso) {
            zzap(this.zzso - this.zzadc);
            throw zzjs.zzht();
        } else if (i <= this.zzadb - this.zzadc) {
            this.zzadc += i;
        } else {
            throw zzjs.zzht();
        }
    }
}
