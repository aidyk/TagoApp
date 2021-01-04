package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzvc implements zzxt {
    private int tag;
    private final zzuz zzbvm;
    private int zzbvn;
    private int zzbvo = 0;

    public static zzvc zza(zzuz zzuz) {
        if (zzuz.zzbvf != null) {
            return zzuz.zzbvf;
        }
        return new zzvc(zzuz);
    }

    private zzvc(zzuz zzuz) {
        this.zzbvm = (zzuz) zzvz.zza(zzuz, "input");
        this.zzbvm.zzbvf = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzvo() throws IOException {
        if (this.zzbvo != 0) {
            this.tag = this.zzbvo;
            this.zzbvo = 0;
        } else {
            this.tag = this.zzbvm.zzuq();
        }
        if (this.tag == 0 || this.tag == this.zzbvn) {
            return Integer.MAX_VALUE;
        }
        return this.tag >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final boolean zzvp() throws IOException {
        if (this.zzbvm.zzvg() || this.tag == this.zzbvn) {
            return false;
        }
        return this.zzbvm.zzap(this.tag);
    }

    private final void zzau(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzwe.zzxb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final double readDouble() throws IOException {
        zzau(1);
        return this.zzbvm.readDouble();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final float readFloat() throws IOException {
        zzau(5);
        return this.zzbvm.readFloat();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzur() throws IOException {
        zzau(0);
        return this.zzbvm.zzur();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzus() throws IOException {
        zzau(0);
        return this.zzbvm.zzus();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzut() throws IOException {
        zzau(0);
        return this.zzbvm.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzuu() throws IOException {
        zzau(1);
        return this.zzbvm.zzuu();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzuv() throws IOException {
        zzau(5);
        return this.zzbvm.zzuv();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final boolean zzuw() throws IOException {
        zzau(0);
        return this.zzbvm.zzuw();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final String readString() throws IOException {
        zzau(2);
        return this.zzbvm.readString();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final String zzux() throws IOException {
        zzau(2);
        return this.zzbvm.zzux();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> T zza(zzxu<T> zzxu, zzvk zzvk) throws IOException {
        zzau(2);
        return (T) zzc(zzxu, zzvk);
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> T zzb(zzxu<T> zzxu, zzvk zzvk) throws IOException {
        zzau(3);
        return (T) zzd(zzxu, zzvk);
    }

    private final <T> T zzc(zzxu<T> zzxu, zzvk zzvk) throws IOException {
        int zzuz = this.zzbvm.zzuz();
        if (this.zzbvm.zzbvc < this.zzbvm.zzbvd) {
            int zzar = this.zzbvm.zzar(zzuz);
            T newInstance = zzxu.newInstance();
            this.zzbvm.zzbvc++;
            zzxu.zza(newInstance, this, zzvk);
            zzxu.zzy(newInstance);
            this.zzbvm.zzao(0);
            zzuz zzuz2 = this.zzbvm;
            zzuz2.zzbvc--;
            this.zzbvm.zzas(zzar);
            return newInstance;
        }
        throw zzwe.zzxc();
    }

    private final <T> T zzd(zzxu<T> zzxu, zzvk zzvk) throws IOException {
        int i = this.zzbvn;
        this.zzbvn = ((this.tag >>> 3) << 3) | 4;
        try {
            T newInstance = zzxu.newInstance();
            zzxu.zza(newInstance, this, zzvk);
            zzxu.zzy(newInstance);
            if (this.tag == this.zzbvn) {
                return newInstance;
            }
            throw zzwe.zzxd();
        } finally {
            this.zzbvn = i;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final zzun zzuy() throws IOException {
        zzau(2);
        return this.zzbvm.zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzuz() throws IOException {
        zzau(0);
        return this.zzbvm.zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzva() throws IOException {
        zzau(0);
        return this.zzbvm.zzva();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzvb() throws IOException {
        zzau(5);
        return this.zzbvm.zzvb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzvc() throws IOException {
        zzau(1);
        return this.zzbvm.zzvc();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzvd() throws IOException {
        zzau(0);
        return this.zzbvm.zzvd();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzve() throws IOException {
        zzau(0);
        return this.zzbvm.zzve();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzh(List<Double> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvh) {
            zzvh zzvh = (zzvh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzuz = this.zzbvm.zzuz();
                    zzav(zzuz);
                    int zzvh2 = this.zzbvm.zzvh() + zzuz;
                    do {
                        zzvh.zzd(this.zzbvm.readDouble());
                    } while (this.zzbvm.zzvh() < zzvh2);
                    return;
                default:
                    throw zzwe.zzxb();
            }
            do {
                zzvh.zzd(this.zzbvm.readDouble());
                if (!this.zzbvm.zzvg()) {
                    zzuq2 = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq2 == this.tag);
            this.zzbvo = zzuq2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzuz2 = this.zzbvm.zzuz();
                zzav(zzuz2);
                int zzvh3 = this.zzbvm.zzvh() + zzuz2;
                do {
                    list.add(Double.valueOf(this.zzbvm.readDouble()));
                } while (this.zzbvm.zzvh() < zzvh3);
                return;
            default:
                throw zzwe.zzxb();
        }
        do {
            list.add(Double.valueOf(this.zzbvm.readDouble()));
            if (!this.zzbvm.zzvg()) {
                zzuq = this.zzbvm.zzuq();
            } else {
                return;
            }
        } while (zzuq == this.tag);
        this.zzbvo = zzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzi(List<Float> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvu) {
            zzvu zzvu = (zzvu) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzuz = this.zzbvm.zzuz();
                zzaw(zzuz);
                int zzvh = this.zzbvm.zzvh() + zzuz;
                do {
                    zzvu.zzc(this.zzbvm.readFloat());
                } while (this.zzbvm.zzvh() < zzvh);
            } else if (i == 5) {
                do {
                    zzvu.zzc(this.zzbvm.readFloat());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzuz2 = this.zzbvm.zzuz();
                zzaw(zzuz2);
                int zzvh2 = this.zzbvm.zzvh() + zzuz2;
                do {
                    list.add(Float.valueOf(this.zzbvm.readFloat()));
                } while (this.zzbvm.zzvh() < zzvh2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.zzbvm.readFloat()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzj(List<Long> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzws.zzbj(this.zzbvm.zzur());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzws.zzbj(this.zzbvm.zzur());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzbvm.zzur()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Long.valueOf(this.zzbvm.zzur()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzk(List<Long> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzws.zzbj(this.zzbvm.zzus());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzws.zzbj(this.zzbvm.zzus());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzbvm.zzus()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Long.valueOf(this.zzbvm.zzus()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzl(List<Integer> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvy.zzbn(this.zzbvm.zzut());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvy.zzbn(this.zzbvm.zzut());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzut()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzut()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzm(List<Long> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzuz = this.zzbvm.zzuz();
                    zzav(zzuz);
                    int zzvh = this.zzbvm.zzvh() + zzuz;
                    do {
                        zzws.zzbj(this.zzbvm.zzuu());
                    } while (this.zzbvm.zzvh() < zzvh);
                    return;
                default:
                    throw zzwe.zzxb();
            }
            do {
                zzws.zzbj(this.zzbvm.zzuu());
                if (!this.zzbvm.zzvg()) {
                    zzuq2 = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq2 == this.tag);
            this.zzbvo = zzuq2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzuz2 = this.zzbvm.zzuz();
                zzav(zzuz2);
                int zzvh2 = this.zzbvm.zzvh() + zzuz2;
                do {
                    list.add(Long.valueOf(this.zzbvm.zzuu()));
                } while (this.zzbvm.zzvh() < zzvh2);
                return;
            default:
                throw zzwe.zzxb();
        }
        do {
            list.add(Long.valueOf(this.zzbvm.zzuu()));
            if (!this.zzbvm.zzvg()) {
                zzuq = this.zzbvm.zzuq();
            } else {
                return;
            }
        } while (zzuq == this.tag);
        this.zzbvo = zzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzn(List<Integer> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzuz = this.zzbvm.zzuz();
                zzaw(zzuz);
                int zzvh = this.zzbvm.zzvh() + zzuz;
                do {
                    zzvy.zzbn(this.zzbvm.zzuv());
                } while (this.zzbvm.zzvh() < zzvh);
            } else if (i == 5) {
                do {
                    zzvy.zzbn(this.zzbvm.zzuv());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzuz2 = this.zzbvm.zzuz();
                zzaw(zzuz2);
                int zzvh2 = this.zzbvm.zzvh() + zzuz2;
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzuv()));
                } while (this.zzbvm.zzvh() < zzvh2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzuv()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzo(List<Boolean> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzul) {
            zzul zzul = (zzul) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzul.addBoolean(this.zzbvm.zzuw());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzul.addBoolean(this.zzbvm.zzuw());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.zzbvm.zzuw()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Boolean.valueOf(this.zzbvm.zzuw()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzp(List<String> list) throws IOException {
        zza(list, true);
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int zzuq;
        int zzuq2;
        if ((this.tag & 7) != 2) {
            throw zzwe.zzxb();
        } else if (!(list instanceof zzwn) || z) {
            do {
                list.add(z ? zzux() : readString());
                if (!this.zzbvm.zzvg()) {
                    zzuq = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq == this.tag);
            this.zzbvo = zzuq;
        } else {
            zzwn zzwn = (zzwn) list;
            do {
                zzwn.zzc(zzuy());
                if (!this.zzbvm.zzvg()) {
                    zzuq2 = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq2 == this.tag);
            this.zzbvo = zzuq2;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> void zza(List<T> list, zzxu<T> zzxu, zzvk zzvk) throws IOException {
        int zzuq;
        if ((this.tag & 7) == 2) {
            int i = this.tag;
            do {
                list.add(zzc(zzxu, zzvk));
                if (!this.zzbvm.zzvg() && this.zzbvo == 0) {
                    zzuq = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq == i);
            this.zzbvo = zzuq;
            return;
        }
        throw zzwe.zzxb();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> void zzb(List<T> list, zzxu<T> zzxu, zzvk zzvk) throws IOException {
        int zzuq;
        if ((this.tag & 7) == 3) {
            int i = this.tag;
            do {
                list.add(zzd(zzxu, zzvk));
                if (!this.zzbvm.zzvg() && this.zzbvo == 0) {
                    zzuq = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq == i);
            this.zzbvo = zzuq;
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzq(List<zzun> list) throws IOException {
        int zzuq;
        if ((this.tag & 7) == 2) {
            do {
                list.add(zzuy());
                if (!this.zzbvm.zzvg()) {
                    zzuq = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq == this.tag);
            this.zzbvo = zzuq;
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzr(List<Integer> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvy.zzbn(this.zzbvm.zzuz());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvy.zzbn(this.zzbvm.zzuz());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzuz()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzuz()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzs(List<Integer> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvy.zzbn(this.zzbvm.zzva());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvy.zzbn(this.zzbvm.zzva());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzva()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzva()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzt(List<Integer> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzuz = this.zzbvm.zzuz();
                zzaw(zzuz);
                int zzvh = this.zzbvm.zzvh() + zzuz;
                do {
                    zzvy.zzbn(this.zzbvm.zzvb());
                } while (this.zzbvm.zzvh() < zzvh);
            } else if (i == 5) {
                do {
                    zzvy.zzbn(this.zzbvm.zzvb());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzuz2 = this.zzbvm.zzuz();
                zzaw(zzuz2);
                int zzvh2 = this.zzbvm.zzvh() + zzuz2;
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzvb()));
                } while (this.zzbvm.zzvh() < zzvh2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzvb()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzu(List<Long> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzuz = this.zzbvm.zzuz();
                    zzav(zzuz);
                    int zzvh = this.zzbvm.zzvh() + zzuz;
                    do {
                        zzws.zzbj(this.zzbvm.zzvc());
                    } while (this.zzbvm.zzvh() < zzvh);
                    return;
                default:
                    throw zzwe.zzxb();
            }
            do {
                zzws.zzbj(this.zzbvm.zzvc());
                if (!this.zzbvm.zzvg()) {
                    zzuq2 = this.zzbvm.zzuq();
                } else {
                    return;
                }
            } while (zzuq2 == this.tag);
            this.zzbvo = zzuq2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzuz2 = this.zzbvm.zzuz();
                zzav(zzuz2);
                int zzvh2 = this.zzbvm.zzvh() + zzuz2;
                do {
                    list.add(Long.valueOf(this.zzbvm.zzvc()));
                } while (this.zzbvm.zzvh() < zzvh2);
                return;
            default:
                throw zzwe.zzxb();
        }
        do {
            list.add(Long.valueOf(this.zzbvm.zzvc()));
            if (!this.zzbvm.zzvg()) {
                zzuq = this.zzbvm.zzuq();
            } else {
                return;
            }
        } while (zzuq == this.tag);
        this.zzbvo = zzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzv(List<Integer> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvy.zzbn(this.zzbvm.zzvd());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvy.zzbn(this.zzbvm.zzvd());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzvd()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Integer.valueOf(this.zzbvm.zzvd()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzw(List<Long> list) throws IOException {
        int zzuq;
        int zzuq2;
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzws.zzbj(this.zzbvm.zzve());
                    if (!this.zzbvm.zzvg()) {
                        zzuq2 = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq2 == this.tag);
                this.zzbvo = zzuq2;
            } else if (i == 2) {
                int zzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzws.zzbj(this.zzbvm.zzve());
                } while (this.zzbvm.zzvh() < zzvh);
                zzax(zzvh);
            } else {
                throw zzwe.zzxb();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzbvm.zzve()));
                    if (!this.zzbvm.zzvg()) {
                        zzuq = this.zzbvm.zzuq();
                    } else {
                        return;
                    }
                } while (zzuq == this.tag);
                this.zzbvo = zzuq;
            } else if (i2 == 2) {
                int zzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    list.add(Long.valueOf(this.zzbvm.zzve()));
                } while (this.zzbvm.zzvh() < zzvh2);
                zzax(zzvh2);
            } else {
                throw zzwe.zzxb();
            }
        }
    }

    private static void zzav(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzwe.zzxd();
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: java.util.Map<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <K, V> void zza(Map<K, V> map, zzwx<K, V> zzwx, zzvk zzvk) throws IOException {
        zzau(2);
        int zzar = this.zzbvm.zzar(this.zzbvm.zzuz());
        Object obj = zzwx.zzcbn;
        Object obj2 = zzwx.zzbsa;
        while (true) {
            try {
                int zzvo = zzvo();
                if (zzvo == Integer.MAX_VALUE || this.zzbvm.zzvg()) {
                    map.put(obj, obj2);
                } else {
                    switch (zzvo) {
                        case 1:
                            obj = zza(zzwx.zzcbm, (Class<?>) null, (zzvk) null);
                            break;
                        case 2:
                            obj2 = zza(zzwx.zzcbo, zzwx.zzbsa.getClass(), zzvk);
                            break;
                        default:
                            try {
                                if (zzvp()) {
                                    break;
                                } else {
                                    throw new zzwe("Unable to parse map entry.");
                                }
                            } catch (zzwf unused) {
                                if (zzvp()) {
                                    break;
                                } else {
                                    throw new zzwe("Unable to parse map entry.");
                                }
                            }
                    }
                }
            } finally {
                this.zzbvm.zzas(zzar);
            }
        }
        map.put(obj, obj2);
    }

    private final Object zza(zzzb zzzb, Class<?> cls, zzvk zzvk) throws IOException {
        switch (zzzb) {
            case BOOL:
                return Boolean.valueOf(zzuw());
            case BYTES:
                return zzuy();
            case DOUBLE:
                return Double.valueOf(readDouble());
            case ENUM:
                return Integer.valueOf(zzva());
            case FIXED32:
                return Integer.valueOf(zzuv());
            case FIXED64:
                return Long.valueOf(zzuu());
            case FLOAT:
                return Float.valueOf(readFloat());
            case INT32:
                return Integer.valueOf(zzut());
            case INT64:
                return Long.valueOf(zzus());
            case MESSAGE:
                zzau(2);
                return zzc(zzxq.zzya().zzi(cls), zzvk);
            case SFIXED32:
                return Integer.valueOf(zzvb());
            case SFIXED64:
                return Long.valueOf(zzvc());
            case SINT32:
                return Integer.valueOf(zzvd());
            case SINT64:
                return Long.valueOf(zzve());
            case STRING:
                return zzux();
            case UINT32:
                return Integer.valueOf(zzuz());
            case UINT64:
                return Long.valueOf(zzur());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static void zzaw(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzwe.zzxd();
        }
    }

    private final void zzax(int i) throws IOException {
        if (this.zzbvm.zzvh() != i) {
            throw zzwe.zzwx();
        }
    }
}
