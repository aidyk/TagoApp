package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

final class zzel extends zzej {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private int tag;
    private final boolean zzrs = true;
    private final int zzrt;
    private int zzru;

    public zzel(ByteBuffer byteBuffer, boolean z) {
        super(null);
        this.buffer = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
        this.pos = arrayOffset;
        this.zzrt = arrayOffset;
        this.limit = byteBuffer.arrayOffset() + byteBuffer.limit();
    }

    private final boolean zzcm() {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzcn() throws IOException {
        if (zzcm()) {
            return Integer.MAX_VALUE;
        }
        this.tag = zzdd();
        if (this.tag == this.zzru) {
            return Integer.MAX_VALUE;
        }
        return this.tag >>> 3;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int getTag() {
        return this.tag;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0034  */
    @Override // com.google.android.gms.internal.vision.zzhv
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzco() throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 150
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzel.zzco():boolean");
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final double readDouble() throws IOException {
        zzab(1);
        return Double.longBitsToDouble(zzdh());
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final float readFloat() throws IOException {
        zzab(5);
        return Float.intBitsToFloat(zzdg());
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final long zzcp() throws IOException {
        zzab(0);
        return zzde();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final long zzcq() throws IOException {
        zzab(0);
        return zzde();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzcr() throws IOException {
        zzab(0);
        return zzdd();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final long zzcs() throws IOException {
        zzab(1);
        return zzdh();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzct() throws IOException {
        zzab(5);
        return zzdg();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final boolean zzcu() throws IOException {
        zzab(0);
        if (zzdd() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final String readString() throws IOException {
        return zzg(false);
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final String zzcv() throws IOException {
        return zzg(true);
    }

    private final String zzg(boolean z) throws IOException {
        zzab(2);
        int zzdd = zzdd();
        if (zzdd == 0) {
            return "";
        }
        zzaa(zzdd);
        if (!z || zziw.zzg(this.buffer, this.pos, this.pos + zzdd)) {
            String str = new String(this.buffer, this.pos, zzdd, zzga.UTF_8);
            this.pos += zzdd;
            return str;
        }
        throw zzgf.zzfp();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final <T> T zza(Class<T> cls, zzfk zzfk) throws IOException {
        zzab(2);
        return (T) zzb(zzhs.zzgl().zzf(cls), zzfk);
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final <T> T zza(zzhw<T> zzhw, zzfk zzfk) throws IOException {
        zzab(2);
        return (T) zzb(zzhw, zzfk);
    }

    private final <T> T zzb(zzhw<T> zzhw, zzfk zzfk) throws IOException {
        int zzdd = zzdd();
        zzaa(zzdd);
        int i = this.limit;
        int i2 = this.pos + zzdd;
        this.limit = i2;
        try {
            T newInstance = zzhw.newInstance();
            zzhw.zza(newInstance, this, zzfk);
            zzhw.zze(newInstance);
            if (this.pos == i2) {
                return newInstance;
            }
            throw zzgf.zzfo();
        } finally {
            this.limit = i;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final <T> T zzb(Class<T> cls, zzfk zzfk) throws IOException {
        zzab(3);
        return (T) zzd(zzhs.zzgl().zzf(cls), zzfk);
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final <T> T zzc(zzhw<T> zzhw, zzfk zzfk) throws IOException {
        zzab(3);
        return (T) zzd(zzhw, zzfk);
    }

    private final <T> T zzd(zzhw<T> zzhw, zzfk zzfk) throws IOException {
        int i = this.zzru;
        this.zzru = ((this.tag >>> 3) << 3) | 4;
        try {
            T newInstance = zzhw.newInstance();
            zzhw.zza(newInstance, this, zzfk);
            zzhw.zze(newInstance);
            if (this.tag == this.zzru) {
                return newInstance;
            }
            throw zzgf.zzfo();
        } finally {
            this.zzru = i;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final zzeo zzcw() throws IOException {
        zzeo zzeo;
        zzab(2);
        int zzdd = zzdd();
        if (zzdd == 0) {
            return zzeo.zzrx;
        }
        zzaa(zzdd);
        if (this.zzrs) {
            zzeo = zzeo.zzc(this.buffer, this.pos, zzdd);
        } else {
            zzeo = zzeo.zzb(this.buffer, this.pos, zzdd);
        }
        this.pos += zzdd;
        return zzeo;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzcx() throws IOException {
        zzab(0);
        return zzdd();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzcy() throws IOException {
        zzab(0);
        return zzdd();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzcz() throws IOException {
        zzab(5);
        return zzdg();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final long zzda() throws IOException {
        zzab(1);
        return zzdh();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final int zzdb() throws IOException {
        zzab(0);
        return zzez.zzaq(zzdd());
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final long zzdc() throws IOException {
        zzab(0);
        return zzez.zzd(zzde());
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zza(List<Double> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfh) {
            zzfh zzfh = (zzfh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzdd = zzdd();
                    zzac(zzdd);
                    int i3 = this.pos + zzdd;
                    while (this.pos < i3) {
                        zzfh.zzc(Double.longBitsToDouble(zzdj()));
                    }
                    return;
                default:
                    throw zzgf.zzfm();
            }
            do {
                zzfh.zzc(readDouble());
                if (!zzcm()) {
                    i2 = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == this.tag);
            this.pos = i2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzdd2 = zzdd();
                zzac(zzdd2);
                int i4 = this.pos + zzdd2;
                while (this.pos < i4) {
                    list.add(Double.valueOf(Double.longBitsToDouble(zzdj())));
                }
                return;
            default:
                throw zzgf.zzfm();
        }
        do {
            list.add(Double.valueOf(readDouble()));
            if (!zzcm()) {
                i = this.pos;
            } else {
                return;
            }
        } while (zzdd() == this.tag);
        this.pos = i;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzb(List<Float> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfv) {
            zzfv zzfv = (zzfv) list;
            int i3 = this.tag & 7;
            if (i3 == 2) {
                int zzdd = zzdd();
                zzad(zzdd);
                int i4 = this.pos + zzdd;
                while (this.pos < i4) {
                    zzfv.zzh(Float.intBitsToFloat(zzdi()));
                }
            } else if (i3 == 5) {
                do {
                    zzfv.zzh(readFloat());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i5 = this.tag & 7;
            if (i5 == 2) {
                int zzdd2 = zzdd();
                zzad(zzdd2);
                int i6 = this.pos + zzdd2;
                while (this.pos < i6) {
                    list.add(Float.valueOf(Float.intBitsToFloat(zzdi())));
                }
            } else if (i5 == 5) {
                do {
                    list.add(Float.valueOf(readFloat()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzc(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzgt) {
            zzgt zzgt = (zzgt) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzgt.zzp(zzcp());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzgt.zzp(zzde());
                }
                zzae(zzdd);
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(zzcp()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Long.valueOf(zzde()));
                }
                zzae(zzdd2);
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzd(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzgt) {
            zzgt zzgt = (zzgt) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzgt.zzp(zzcq());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzgt.zzp(zzde());
                }
                zzae(zzdd);
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(zzcq()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Long.valueOf(zzde()));
                }
                zzae(zzdd2);
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zze(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfz) {
            zzfz zzfz = (zzfz) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzfz.zzbg(zzcr());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzfz.zzbg(zzdd());
                }
                zzae(zzdd);
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzcr()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Integer.valueOf(zzdd()));
                }
                zzae(zzdd2);
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzf(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzgt) {
            zzgt zzgt = (zzgt) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzdd = zzdd();
                    zzac(zzdd);
                    int i3 = this.pos + zzdd;
                    while (this.pos < i3) {
                        zzgt.zzp(zzdj());
                    }
                    return;
                default:
                    throw zzgf.zzfm();
            }
            do {
                zzgt.zzp(zzcs());
                if (!zzcm()) {
                    i2 = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == this.tag);
            this.pos = i2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzdd2 = zzdd();
                zzac(zzdd2);
                int i4 = this.pos + zzdd2;
                while (this.pos < i4) {
                    list.add(Long.valueOf(zzdj()));
                }
                return;
            default:
                throw zzgf.zzfm();
        }
        do {
            list.add(Long.valueOf(zzcs()));
            if (!zzcm()) {
                i = this.pos;
            } else {
                return;
            }
        } while (zzdd() == this.tag);
        this.pos = i;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzg(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfz) {
            zzfz zzfz = (zzfz) list;
            int i3 = this.tag & 7;
            if (i3 == 2) {
                int zzdd = zzdd();
                zzad(zzdd);
                int i4 = this.pos + zzdd;
                while (this.pos < i4) {
                    zzfz.zzbg(zzdi());
                }
            } else if (i3 == 5) {
                do {
                    zzfz.zzbg(zzct());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i5 = this.tag & 7;
            if (i5 == 2) {
                int zzdd2 = zzdd();
                zzad(zzdd2);
                int i6 = this.pos + zzdd2;
                while (this.pos < i6) {
                    list.add(Integer.valueOf(zzdi()));
                }
            } else if (i5 == 5) {
                do {
                    list.add(Integer.valueOf(zzct()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzh(List<Boolean> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzem) {
            zzem zzem = (zzem) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzem.addBoolean(zzcu());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzem.addBoolean(zzdd() != 0);
                }
                zzae(zzdd);
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Boolean.valueOf(zzcu()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Boolean.valueOf(zzdd() != 0));
                }
                zzae(zzdd2);
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzi(List<String> list) throws IOException {
        zza(list, true);
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int i;
        int i2;
        if ((this.tag & 7) != 2) {
            throw zzgf.zzfm();
        } else if (!(list instanceof zzgo) || z) {
            do {
                list.add(zzg(z));
                if (!zzcm()) {
                    i = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == this.tag);
            this.pos = i;
        } else {
            zzgo zzgo = (zzgo) list;
            do {
                zzgo.zzc(zzcw());
                if (!zzcm()) {
                    i2 = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == this.tag);
            this.pos = i2;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzhv
    public final <T> void zza(List<T> list, zzhw<T> zzhw, zzfk zzfk) throws IOException {
        int i;
        if ((this.tag & 7) == 2) {
            int i2 = this.tag;
            do {
                list.add(zzb(zzhw, zzfk));
                if (!zzcm()) {
                    i = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == i2);
            this.pos = i;
            return;
        }
        throw zzgf.zzfm();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzhv
    public final <T> void zzb(List<T> list, zzhw<T> zzhw, zzfk zzfk) throws IOException {
        int i;
        if ((this.tag & 7) == 3) {
            int i2 = this.tag;
            do {
                list.add(zzd(zzhw, zzfk));
                if (!zzcm()) {
                    i = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == i2);
            this.pos = i;
            return;
        }
        throw zzgf.zzfm();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzj(List<zzeo> list) throws IOException {
        int i;
        if ((this.tag & 7) == 2) {
            do {
                list.add(zzcw());
                if (!zzcm()) {
                    i = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == this.tag);
            this.pos = i;
            return;
        }
        throw zzgf.zzfm();
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzk(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfz) {
            zzfz zzfz = (zzfz) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzfz.zzbg(zzcx());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzfz.zzbg(zzdd());
                }
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzcx()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Integer.valueOf(zzdd()));
                }
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzl(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfz) {
            zzfz zzfz = (zzfz) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzfz.zzbg(zzcy());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzfz.zzbg(zzdd());
                }
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzcy()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Integer.valueOf(zzdd()));
                }
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzm(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfz) {
            zzfz zzfz = (zzfz) list;
            int i3 = this.tag & 7;
            if (i3 == 2) {
                int zzdd = zzdd();
                zzad(zzdd);
                int i4 = this.pos + zzdd;
                while (this.pos < i4) {
                    zzfz.zzbg(zzdi());
                }
            } else if (i3 == 5) {
                do {
                    zzfz.zzbg(zzcz());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i5 = this.tag & 7;
            if (i5 == 2) {
                int zzdd2 = zzdd();
                zzad(zzdd2);
                int i6 = this.pos + zzdd2;
                while (this.pos < i6) {
                    list.add(Integer.valueOf(zzdi()));
                }
            } else if (i5 == 5) {
                do {
                    list.add(Integer.valueOf(zzcz()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzn(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzgt) {
            zzgt zzgt = (zzgt) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzdd = zzdd();
                    zzac(zzdd);
                    int i3 = this.pos + zzdd;
                    while (this.pos < i3) {
                        zzgt.zzp(zzdj());
                    }
                    return;
                default:
                    throw zzgf.zzfm();
            }
            do {
                zzgt.zzp(zzda());
                if (!zzcm()) {
                    i2 = this.pos;
                } else {
                    return;
                }
            } while (zzdd() == this.tag);
            this.pos = i2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzdd2 = zzdd();
                zzac(zzdd2);
                int i4 = this.pos + zzdd2;
                while (this.pos < i4) {
                    list.add(Long.valueOf(zzdj()));
                }
                return;
            default:
                throw zzgf.zzfm();
        }
        do {
            list.add(Long.valueOf(zzda()));
            if (!zzcm()) {
                i = this.pos;
            } else {
                return;
            }
        } while (zzdd() == this.tag);
        this.pos = i;
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzo(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzfz) {
            zzfz zzfz = (zzfz) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzfz.zzbg(zzdb());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzfz.zzbg(zzez.zzaq(zzdd()));
                }
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzdb()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Integer.valueOf(zzez.zzaq(zzdd())));
                }
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzhv
    public final void zzp(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzgt) {
            zzgt zzgt = (zzgt) list;
            int i3 = this.tag & 7;
            if (i3 == 0) {
                do {
                    zzgt.zzp(zzdc());
                    if (!zzcm()) {
                        i2 = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i2;
            } else if (i3 == 2) {
                int zzdd = this.pos + zzdd();
                while (this.pos < zzdd) {
                    zzgt.zzp(zzez.zzd(zzde()));
                }
            } else {
                throw zzgf.zzfm();
            }
        } else {
            int i4 = this.tag & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(zzdc()));
                    if (!zzcm()) {
                        i = this.pos;
                    } else {
                        return;
                    }
                } while (zzdd() == this.tag);
                this.pos = i;
            } else if (i4 == 2) {
                int zzdd2 = this.pos + zzdd();
                while (this.pos < zzdd2) {
                    list.add(Long.valueOf(zzez.zzd(zzde())));
                }
            } else {
                throw zzgf.zzfm();
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: java.util.Map<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzhv
    public final <K, V> void zza(Map<K, V> map, zzgy<K, V> zzgy, zzfk zzfk) throws IOException {
        zzab(2);
        int zzdd = zzdd();
        zzaa(zzdd);
        int i = this.limit;
        this.limit = this.pos + zzdd;
        try {
            Object obj = zzgy.zzyw;
            Object obj2 = zzgy.zzgq;
            while (true) {
                int zzcn = zzcn();
                if (zzcn != Integer.MAX_VALUE) {
                    switch (zzcn) {
                        case 1:
                            obj = zza(zzgy.zzyv, (Class<?>) null, (zzfk) null);
                            break;
                        case 2:
                            obj2 = zza(zzgy.zzyx, zzgy.zzgq.getClass(), zzfk);
                            break;
                        default:
                            try {
                                if (zzco()) {
                                    break;
                                } else {
                                    throw new zzgf("Unable to parse map entry.");
                                }
                            } catch (zzgg unused) {
                                if (zzco()) {
                                    break;
                                } else {
                                    throw new zzgf("Unable to parse map entry.");
                                }
                            }
                    }
                } else {
                    map.put(obj, obj2);
                    return;
                }
            }
        } finally {
            this.limit = i;
        }
    }

    private final Object zza(zzjd zzjd, Class<?> cls, zzfk zzfk) throws IOException {
        switch (zzek.zzrr[zzjd.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzcu());
            case 2:
                return zzcw();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzcy());
            case 5:
                return Integer.valueOf(zzct());
            case 6:
                return Long.valueOf(zzcs());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzcr());
            case 9:
                return Long.valueOf(zzcq());
            case 10:
                return zza(cls, zzfk);
            case 11:
                return Integer.valueOf(zzcz());
            case 12:
                return Long.valueOf(zzda());
            case 13:
                return Integer.valueOf(zzdb());
            case 14:
                return Long.valueOf(zzdc());
            case 15:
                return zzg(true);
            case 16:
                return Integer.valueOf(zzcx());
            case 17:
                return Long.valueOf(zzcp());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final int zzdd() throws IOException {
        int i;
        int i2 = this.pos;
        if (this.limit != this.pos) {
            int i3 = i2 + 1;
            byte b = this.buffer[i2];
            if (b >= 0) {
                this.pos = i3;
                return b;
            } else if (this.limit - i3 < 9) {
                return (int) zzdf();
            } else {
                int i4 = i3 + 1;
                int i5 = b ^ (this.buffer[i3] << 7);
                if (i5 < 0) {
                    i = i5 ^ -128;
                } else {
                    int i6 = i4 + 1;
                    int i7 = i5 ^ (this.buffer[i4] << 14);
                    if (i7 >= 0) {
                        i = i7 ^ 16256;
                    } else {
                        i4 = i6 + 1;
                        int i8 = i7 ^ (this.buffer[i6] << 21);
                        if (i8 < 0) {
                            i = i8 ^ -2080896;
                        } else {
                            i6 = i4 + 1;
                            byte b2 = this.buffer[i4];
                            i = (i8 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i4 = i6 + 1;
                                if (this.buffer[i6] < 0) {
                                    i6 = i4 + 1;
                                    if (this.buffer[i4] < 0) {
                                        i4 = i6 + 1;
                                        if (this.buffer[i6] < 0) {
                                            i6 = i4 + 1;
                                            if (this.buffer[i4] < 0) {
                                                i4 = i6 + 1;
                                                if (this.buffer[i6] < 0) {
                                                    throw zzgf.zzfj();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i4 = i6;
                }
                this.pos = i4;
                return i;
            }
        } else {
            throw zzgf.zzfh();
        }
    }

    private final long zzde() throws IOException {
        long j;
        int i;
        long j2;
        long j3;
        long j4;
        int i2 = this.pos;
        if (this.limit != i2) {
            byte[] bArr = this.buffer;
            int i3 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i3;
                return (long) b;
            } else if (this.limit - i3 < 9) {
                return zzdf();
            } else {
                int i4 = i3 + 1;
                int i5 = b ^ (bArr[i3] << 7);
                if (i5 < 0) {
                    j3 = (long) (i5 ^ -128);
                } else {
                    int i6 = i4 + 1;
                    int i7 = i5 ^ (bArr[i4] << 14);
                    if (i7 >= 0) {
                        j4 = (long) (i7 ^ 16256);
                        i = i6;
                        j = j4;
                        this.pos = i;
                        return j;
                    }
                    i4 = i6 + 1;
                    int i8 = i7 ^ (bArr[i6] << 21);
                    if (i8 < 0) {
                        j3 = (long) (i8 ^ -2080896);
                    } else {
                        long j5 = (long) i8;
                        i = i4 + 1;
                        long j6 = (((long) bArr[i4]) << 28) ^ j5;
                        if (j6 >= 0) {
                            j = j6 ^ 266354560;
                        } else {
                            int i9 = i + 1;
                            long j7 = j6 ^ (((long) bArr[i]) << 35);
                            if (j7 < 0) {
                                j2 = -34093383808L ^ j7;
                            } else {
                                i = i9 + 1;
                                long j8 = j7 ^ (((long) bArr[i9]) << 42);
                                if (j8 >= 0) {
                                    j = j8 ^ 4363953127296L;
                                } else {
                                    i9 = i + 1;
                                    long j9 = j8 ^ (((long) bArr[i]) << 49);
                                    if (j9 < 0) {
                                        j2 = -558586000294016L ^ j9;
                                    } else {
                                        i = i9 + 1;
                                        j = (j9 ^ (((long) bArr[i9]) << 56)) ^ 71499008037633920L;
                                        if (j < 0) {
                                            i9 = i + 1;
                                            if (((long) bArr[i]) < 0) {
                                                throw zzgf.zzfj();
                                            }
                                            i = i9;
                                        }
                                    }
                                }
                            }
                            j = j2;
                            i = i9;
                        }
                        this.pos = i;
                        return j;
                    }
                }
                j4 = j3;
                i = i4;
                j = j4;
                this.pos = i;
                return j;
            }
        } else {
            throw zzgf.zzfh();
        }
    }

    private final long zzdf() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte readByte = readByte();
            j |= ((long) (readByte & ByteCompanionObject.MAX_VALUE)) << i;
            if ((readByte & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzgf.zzfj();
    }

    private final byte readByte() throws IOException {
        if (this.pos != this.limit) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            return bArr[i];
        }
        throw zzgf.zzfh();
    }

    private final int zzdg() throws IOException {
        zzaa(4);
        return zzdi();
    }

    private final long zzdh() throws IOException {
        zzaa(8);
        return zzdj();
    }

    private final int zzdi() {
        int i = this.pos;
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16);
    }

    private final long zzdj() {
        int i = this.pos;
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private final void zzz(int i) throws IOException {
        zzaa(i);
        this.pos += i;
    }

    private final void zzaa(int i) throws IOException {
        if (i < 0 || i > this.limit - this.pos) {
            throw zzgf.zzfh();
        }
    }

    private final void zzab(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzgf.zzfm();
        }
    }

    private final void zzac(int i) throws IOException {
        zzaa(i);
        if ((i & 7) != 0) {
            throw zzgf.zzfo();
        }
    }

    private final void zzad(int i) throws IOException {
        zzaa(i);
        if ((i & 3) != 0) {
            throw zzgf.zzfo();
        }
    }

    private final void zzae(int i) throws IOException {
        if (this.pos != i) {
            throw zzgf.zzfh();
        }
    }
}
