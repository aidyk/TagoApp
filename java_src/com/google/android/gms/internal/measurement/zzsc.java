package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

public final class zzsc {
    private final List<zzrx> zzbpk;
    private final List<zzrx> zzbpl;
    private final List<zzrx> zzbpm;
    private final List<zzrx> zzbpn;
    private final List<zzrx> zzbqq;
    private final List<zzrx> zzbqr;
    private final List<String> zzbqs;
    private final List<String> zzbqt;
    private final List<String> zzbqu;
    private final List<String> zzbqv;

    private zzsc() {
        this.zzbpk = new ArrayList();
        this.zzbpl = new ArrayList();
        this.zzbpm = new ArrayList();
        this.zzbpn = new ArrayList();
        this.zzbqq = new ArrayList();
        this.zzbqr = new ArrayList();
        this.zzbqs = new ArrayList();
        this.zzbqt = new ArrayList();
        this.zzbqu = new ArrayList();
        this.zzbqv = new ArrayList();
    }

    public final zzsc zzd(zzrx zzrx) {
        this.zzbpk.add(zzrx);
        return this;
    }

    public final zzsc zze(zzrx zzrx) {
        this.zzbpl.add(zzrx);
        return this;
    }

    public final zzsc zzf(zzrx zzrx) {
        this.zzbpm.add(zzrx);
        return this;
    }

    public final zzsc zzfl(String str) {
        this.zzbqu.add(str);
        return this;
    }

    public final zzsc zzg(zzrx zzrx) {
        this.zzbpn.add(zzrx);
        return this;
    }

    public final zzsc zzfm(String str) {
        this.zzbqv.add(str);
        return this;
    }

    public final zzsc zzh(zzrx zzrx) {
        this.zzbqq.add(zzrx);
        return this;
    }

    public final zzsc zzfn(String str) {
        this.zzbqs.add(str);
        return this;
    }

    public final zzsc zzi(zzrx zzrx) {
        this.zzbqr.add(zzrx);
        return this;
    }

    public final zzsc zzfo(String str) {
        this.zzbqt.add(str);
        return this;
    }

    public final zzsb zztg() {
        return new zzsb(this.zzbpk, this.zzbpl, this.zzbpm, this.zzbpn, this.zzbqq, this.zzbqr, this.zzbqs, this.zzbqt, this.zzbqu, this.zzbqv);
    }
}
