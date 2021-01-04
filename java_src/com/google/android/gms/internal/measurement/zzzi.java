package com.google.android.gms.internal.measurement;

import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

public final class zzzi {
    private final byte[] buffer;
    private int zzbvc;
    private int zzbvd = 64;
    private int zzbve = 67108864;
    private int zzbvi;
    private int zzbvk;
    private int zzbvl = Integer.MAX_VALUE;
    private final int zzcfq;
    private final int zzcfr;
    private int zzcfs;
    private int zzcft;
    private zzuz zzcfu;

    public static zzzi zzn(byte[] bArr) {
        return zzj(bArr, 0, bArr.length);
    }

    public static zzzi zzj(byte[] bArr, int i, int i2) {
        return new zzzi(bArr, 0, i2);
    }

    public final int zzuq() throws IOException {
        if (this.zzcft == this.zzcfs) {
            this.zzbvk = 0;
            return 0;
        }
        this.zzbvk = zzvi();
        if (this.zzbvk != 0) {
            return this.zzbvk;
        }
        throw new zzzq("Protocol message contained an invalid tag (zero).");
    }

    public final void zzao(int i) throws zzzq {
        if (this.zzbvk != i) {
            throw new zzzq("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzap(int i) throws IOException {
        int zzuq;
        switch (i & 7) {
            case 0:
                zzvi();
                return true;
            case 1:
                zzvl();
                return true;
            case 2:
                zzat(zzvi());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzvk();
                return true;
            default:
                throw new zzzq("Protocol message tag had invalid wire type.");
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

    public final boolean zzuw() throws IOException {
        return zzvi() != 0;
    }

    public final String readString() throws IOException {
        int zzvi = zzvi();
        if (zzvi < 0) {
            throw zzzq.zzzl();
        } else if (zzvi <= this.zzcfs - this.zzcft) {
            String str = new String(this.buffer, this.zzcft, zzvi, zzzp.UTF_8);
            this.zzcft += zzvi;
            return str;
        } else {
            throw zzzq.zzzk();
        }
    }

    public final void zza(zzzr zzzr, int i) throws IOException {
        if (this.zzbvc < this.zzbvd) {
            this.zzbvc++;
            zzzr.zza(this);
            zzao((i << 3) | 4);
            this.zzbvc--;
            return;
        }
        throw zzzq.zzzn();
    }

    public final void zza(zzzr zzzr) throws IOException {
        int zzvi = zzvi();
        if (this.zzbvc < this.zzbvd) {
            int zzar = zzar(zzvi);
            this.zzbvc++;
            zzzr.zza(this);
            zzao(0);
            this.zzbvc--;
            zzas(zzar);
            return;
        }
        throw zzzq.zzzn();
    }

    public final int zzvi() throws IOException {
        byte zzvn = zzvn();
        if (zzvn >= 0) {
            return zzvn;
        }
        int i = zzvn & ByteCompanionObject.MAX_VALUE;
        byte zzvn2 = zzvn();
        if (zzvn2 >= 0) {
            return i | (zzvn2 << 7);
        }
        int i2 = i | ((zzvn2 & ByteCompanionObject.MAX_VALUE) << 7);
        byte zzvn3 = zzvn();
        if (zzvn3 >= 0) {
            return i2 | (zzvn3 << 14);
        }
        int i3 = i2 | ((zzvn3 & ByteCompanionObject.MAX_VALUE) << 14);
        byte zzvn4 = zzvn();
        if (zzvn4 >= 0) {
            return i3 | (zzvn4 << 21);
        }
        int i4 = i3 | ((zzvn4 & ByteCompanionObject.MAX_VALUE) << 21);
        byte zzvn5 = zzvn();
        int i5 = i4 | (zzvn5 << 28);
        if (zzvn5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (zzvn() >= 0) {
                return i5;
            }
        }
        throw zzzq.zzzm();
    }

    public final long zzvj() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzvn = zzvn();
            j |= ((long) (zzvn & ByteCompanionObject.MAX_VALUE)) << i;
            if ((zzvn & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzzq.zzzm();
    }

    public final int zzvk() throws IOException {
        return (zzvn() & UByte.MAX_VALUE) | ((zzvn() & UByte.MAX_VALUE) << 8) | ((zzvn() & UByte.MAX_VALUE) << 16) | ((zzvn() & UByte.MAX_VALUE) << 24);
    }

    public final long zzvl() throws IOException {
        byte zzvn = zzvn();
        byte zzvn2 = zzvn();
        return ((((long) zzvn2) & 255) << 8) | (((long) zzvn) & 255) | ((((long) zzvn()) & 255) << 16) | ((((long) zzvn()) & 255) << 24) | ((((long) zzvn()) & 255) << 32) | ((((long) zzvn()) & 255) << 40) | ((((long) zzvn()) & 255) << 48) | ((((long) zzvn()) & 255) << 56);
    }

    private zzzi(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzcfq = i;
        int i3 = i2 + i;
        this.zzcfs = i3;
        this.zzcfr = i3;
        this.zzcft = i;
    }

    private final zzuz zzze() throws IOException {
        if (this.zzcfu == null) {
            this.zzcfu = zzuz.zzd(this.buffer, this.zzcfq, this.zzcfr);
        }
        int zzvh = this.zzcfu.zzvh();
        int i = this.zzcft - this.zzcfq;
        if (zzvh <= i) {
            this.zzcfu.zzat(i - zzvh);
            this.zzcfu.zzaq(this.zzbvd - this.zzbvc);
            return this.zzcfu;
        }
        throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(zzvh), Integer.valueOf(i)));
    }

    public final <T extends zzvx<T, ?>> T zza(zzxo<T> zzxo) throws IOException {
        try {
            T t = (T) ((zzvx) zzze().zza(zzxo, zzvk.zzvz()));
            zzap(this.zzbvk);
            return t;
        } catch (zzwe e) {
            throw new zzzq("", e);
        }
    }

    public final int zzar(int i) throws zzzq {
        if (i >= 0) {
            int i2 = i + this.zzcft;
            int i3 = this.zzbvl;
            if (i2 <= i3) {
                this.zzbvl = i2;
                zzvm();
                return i3;
            }
            throw zzzq.zzzk();
        }
        throw zzzq.zzzl();
    }

    private final void zzvm() {
        this.zzcfs += this.zzbvi;
        int i = this.zzcfs;
        if (i > this.zzbvl) {
            this.zzbvi = i - this.zzbvl;
            this.zzcfs -= this.zzbvi;
            return;
        }
        this.zzbvi = 0;
    }

    public final void zzas(int i) {
        this.zzbvl = i;
        zzvm();
    }

    public final int zzzf() {
        if (this.zzbvl == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzbvl - this.zzcft;
    }

    public final int getPosition() {
        return this.zzcft - this.zzcfq;
    }

    public final byte[] zzs(int i, int i2) {
        if (i2 == 0) {
            return zzzu.zzcgs;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzcfq + i, bArr, 0, i2);
        return bArr;
    }

    public final void zzca(int i) {
        zzt(i, this.zzbvk);
    }

    /* access modifiers changed from: package-private */
    public final void zzt(int i, int i2) {
        if (i > this.zzcft - this.zzcfq) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(this.zzcft - this.zzcfq);
            throw new IllegalArgumentException(sb.toString());
        } else if (i >= 0) {
            this.zzcft = this.zzcfq + i;
            this.zzbvk = i2;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    private final byte zzvn() throws IOException {
        if (this.zzcft != this.zzcfs) {
            byte[] bArr = this.buffer;
            int i = this.zzcft;
            this.zzcft = i + 1;
            return bArr[i];
        }
        throw zzzq.zzzk();
    }

    private final void zzat(int i) throws IOException {
        if (i < 0) {
            throw zzzq.zzzl();
        } else if (this.zzcft + i > this.zzbvl) {
            zzat(this.zzbvl - this.zzcft);
            throw zzzq.zzzk();
        } else if (i <= this.zzcfs - this.zzcft) {
            this.zzcft += i;
        } else {
            throw zzzq.zzzk();
        }
    }
}
