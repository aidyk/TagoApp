package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;

public final class zzsb {
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

    private zzsb(List<zzrx> list, List<zzrx> list2, List<zzrx> list3, List<zzrx> list4, List<zzrx> list5, List<zzrx> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
        this.zzbpk = Collections.unmodifiableList(list);
        this.zzbpl = Collections.unmodifiableList(list2);
        this.zzbpm = Collections.unmodifiableList(list3);
        this.zzbpn = Collections.unmodifiableList(list4);
        this.zzbqq = Collections.unmodifiableList(list5);
        this.zzbqr = Collections.unmodifiableList(list6);
        this.zzbqs = Collections.unmodifiableList(list7);
        this.zzbqt = Collections.unmodifiableList(list8);
        this.zzbqu = Collections.unmodifiableList(list9);
        this.zzbqv = Collections.unmodifiableList(list10);
    }

    public final List<zzrx> zzsk() {
        return this.zzbpk;
    }

    public final List<zzrx> zzsl() {
        return this.zzbpl;
    }

    public final List<zzrx> zzsm() {
        return this.zzbpm;
    }

    public final List<zzrx> zzsn() {
        return this.zzbpn;
    }

    public final List<zzrx> zzte() {
        return this.zzbqq;
    }

    public final List<zzrx> zztf() {
        return this.zzbqr;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbpk);
        String valueOf2 = String.valueOf(this.zzbpl);
        String valueOf3 = String.valueOf(this.zzbpm);
        String valueOf4 = String.valueOf(this.zzbpn);
        String valueOf5 = String.valueOf(this.zzbqq);
        String valueOf6 = String.valueOf(this.zzbqr);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 102 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length());
        sb.append("Positive predicates: ");
        sb.append(valueOf);
        sb.append("  Negative predicates: ");
        sb.append(valueOf2);
        sb.append("  Add tags: ");
        sb.append(valueOf3);
        sb.append("  Remove tags: ");
        sb.append(valueOf4);
        sb.append("  Add macros: ");
        sb.append(valueOf5);
        sb.append("  Remove macros: ");
        sb.append(valueOf6);
        return sb.toString();
    }
}
