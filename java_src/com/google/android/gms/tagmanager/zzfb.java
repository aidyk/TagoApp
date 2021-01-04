package com.google.android.gms.tagmanager;

import android.content.Context;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzi;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzp;
import com.google.android.gms.internal.measurement.zzrv;
import com.google.android.gms.internal.measurement.zzrx;
import com.google.android.gms.internal.measurement.zzrz;
import com.google.android.gms.internal.measurement.zzsb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzfb {
    private static final zzdz<zzp> zzbfk = new zzdz<>(zzgj.zzqq(), true);
    private final DataLayer zzbab;
    private final zzrz zzbfl;
    private final zzbo zzbfm;
    private final Map<String, zzbq> zzbfn;
    private final Map<String, zzbq> zzbfo;
    private final Map<String, zzbq> zzbfp;
    private final zzp<zzrx, zzdz<zzp>> zzbfq;
    private final zzp<String, zzfh> zzbfr;
    private final Set<zzsb> zzbfs;
    private final Map<String, zzfi> zzbft;
    private volatile String zzbfu;
    private int zzbfv;

    public zzfb(Context context, zzrz zzrz, DataLayer dataLayer, zzan zzan, zzan zzan2, zzbo zzbo) {
        if (zzrz != null) {
            this.zzbfl = zzrz;
            this.zzbfs = new HashSet(zzrz.zzsg());
            this.zzbab = dataLayer;
            this.zzbfm = zzbo;
            zzfc zzfc = new zzfc(this);
            new zzq();
            this.zzbfq = zzq.zza(1048576, zzfc);
            zzfd zzfd = new zzfd(this);
            new zzq();
            this.zzbfr = zzq.zza(1048576, zzfd);
            this.zzbfn = new HashMap();
            zzb(new zzm(context));
            zzb(new zzam(zzan2));
            zzb(new zzaz(dataLayer));
            zzb(new zzgk(context, dataLayer));
            this.zzbfo = new HashMap();
            zzc(new zzak());
            zzc(new zzbl());
            zzc(new zzbm());
            zzc(new zzbs());
            zzc(new zzbt());
            zzc(new zzde());
            zzc(new zzdf());
            zzc(new zzel());
            zzc(new zzfy());
            this.zzbfp = new HashMap();
            zza(new zze(context));
            zza(new zzf(context));
            zza(new zzh(context));
            zza(new zzi(context));
            zza(new zzj(context));
            zza(new zzk(context));
            zza(new zzl(context));
            zza(new zzt());
            zza(new zzaj(this.zzbfl.getVersion()));
            zza(new zzam(zzan));
            zza(new zzas(dataLayer));
            zza(new zzbc(context));
            zza(new zzbd());
            zza(new zzbk());
            zza(new zzbp(this));
            zza(new zzbu());
            zza(new zzbv());
            zza(new zzcv(context));
            zza(new zzcx());
            zza(new zzdd());
            zza(new zzdk());
            zza(new zzdm(context));
            zza(new zzea());
            zza(new zzee());
            zza(new zzei());
            zza(new zzek());
            zza(new zzem(context));
            zza(new zzfj());
            zza(new zzfk());
            zza(new zzge());
            zza(new zzgl());
            this.zzbft = new HashMap();
            for (zzsb zzsb : this.zzbfs) {
                for (int i = 0; i < zzsb.zzte().size(); i++) {
                    zzrx zzrx = zzsb.zzte().get(i);
                    zzfi zzb = zzb(this.zzbft, zza(zzrx));
                    zzb.zza(zzsb);
                    zzb.zza(zzsb, zzrx);
                    zzb.zza(zzsb, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
                }
                for (int i2 = 0; i2 < zzsb.zztf().size(); i2++) {
                    zzrx zzrx2 = zzsb.zztf().get(i2);
                    zzfi zzb2 = zzb(this.zzbft, zza(zzrx2));
                    zzb2.zza(zzsb);
                    zzb2.zzb(zzsb, zzrx2);
                    zzb2.zzb(zzsb, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
                }
            }
            for (Map.Entry<String, List<zzrx>> entry : this.zzbfl.zztc().entrySet()) {
                for (zzrx zzrx3 : entry.getValue()) {
                    if (!zzgj.zzg(zzrx3.zzsi().get(zzb.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                        zzb(this.zzbft, entry.getKey()).zzb(zzrx3);
                    }
                }
            }
            return;
        }
        throw new NullPointerException("resource cannot be null");
    }

    public final synchronized void zzf(List<zzn> list) {
        for (zzn zzn : list) {
            if (zzn.name != null) {
                if (zzn.name.startsWith("gaExperiment:")) {
                    DataLayer dataLayer = this.zzbab;
                    if (zzn.zzqe == null) {
                        zzdi.zzab("supplemental missing experimentSupplemental");
                    } else {
                        for (zzp zzp : zzn.zzqe.zzop) {
                            dataLayer.zzdj(zzgj.zzc(zzp));
                        }
                        zzp[] zzpArr = zzn.zzqe.zzoo;
                        int length = zzpArr.length;
                        int i = 0;
                        while (true) {
                            Map<String, Object> map = null;
                            if (i >= length) {
                                break;
                            }
                            Object zzh = zzgj.zzh(zzpArr[i]);
                            if (!(zzh instanceof Map)) {
                                String valueOf = String.valueOf(zzh);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                                sb.append("value: ");
                                sb.append(valueOf);
                                sb.append(" is not a map value, ignored.");
                                zzdi.zzab(sb.toString());
                            } else {
                                map = (Map) zzh;
                            }
                            if (map != null) {
                                dataLayer.push(map);
                            }
                            i++;
                        }
                        zzi[] zziArr = zzn.zzqe.zzoq;
                        for (zzi zzi : zziArr) {
                            if (zzi.zzoj == null) {
                                zzdi.zzab("GaExperimentRandom: No key");
                            } else {
                                Object obj = dataLayer.get(zzi.zzoj);
                                Long valueOf2 = !(obj instanceof Number) ? null : Long.valueOf(((Number) obj).longValue());
                                long j = zzi.zzok;
                                long j2 = zzi.zzol;
                                if (!zzi.zzom || valueOf2 == null || valueOf2.longValue() < j || valueOf2.longValue() > j2) {
                                    if (j <= j2) {
                                        double random = Math.random();
                                        double d = (double) (j2 - j);
                                        Double.isNaN(d);
                                        double d2 = (double) j;
                                        Double.isNaN(d2);
                                        obj = Long.valueOf(Math.round((random * d) + d2));
                                    } else {
                                        zzdi.zzab("GaExperimentRandom: random range invalid");
                                    }
                                }
                                dataLayer.zzdj(zzi.zzoj);
                                Map<String, Object> zzk = DataLayer.zzk(zzi.zzoj, obj);
                                if (zzi.zzon > 0) {
                                    if (!zzk.containsKey("gtm")) {
                                        zzk.put("gtm", DataLayer.mapOf("lifetime", Long.valueOf(zzi.zzon)));
                                    } else {
                                        Object obj2 = zzk.get("gtm");
                                        if (obj2 instanceof Map) {
                                            ((Map) obj2).put("lifetime", Long.valueOf(zzi.zzon));
                                        } else {
                                            zzdi.zzab("GaExperimentRandom: gtm not a map");
                                        }
                                    }
                                }
                                dataLayer.push(zzk);
                            }
                        }
                    }
                }
            }
            String valueOf3 = String.valueOf(zzn);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 22);
            sb2.append("Ignored supplemental: ");
            sb2.append(valueOf3);
            zzdi.v(sb2.toString());
        }
    }

    public final synchronized void zzdg(String str) {
        zzec(str);
        zzar zzor = this.zzbfm.zzds(str).zzor();
        for (zzrx zzrx : zza(this.zzbfs, new HashSet(), new zzff(this), zzor.zzog()).getObject()) {
            zza(this.zzbfn, zzrx, new HashSet(), zzor.zzof());
        }
        zzec(null);
    }

    public final zzdz<zzp> zzeb(String str) {
        this.zzbfv = 0;
        return zza(str, new HashSet(), this.zzbfm.zzdr(str).zzoq());
    }

    @VisibleForTesting
    private final synchronized void zzec(String str) {
        this.zzbfu = str;
    }

    /* access modifiers changed from: package-private */
    public final synchronized String zzpt() {
        return this.zzbfu;
    }

    private static zzfi zzb(Map<String, zzfi> map, String str) {
        zzfi zzfi = map.get(str);
        if (zzfi != null) {
            return zzfi;
        }
        zzfi zzfi2 = new zzfi();
        map.put(str, zzfi2);
        return zzfi2;
    }

    private final zzdz<Set<zzrx>> zza(Set<zzsb> set, Set<String> set2, zzfg zzfg, zzfa zzfa) {
        zzdz zzdz;
        Set<zzrx> hashSet = new HashSet<>();
        Set<zzrx> hashSet2 = new HashSet<>();
        Iterator<zzsb> it2 = set.iterator();
        while (true) {
            boolean z = true;
            while (true) {
                if (it2.hasNext()) {
                    zzsb next = it2.next();
                    zzeq zzpg = zzfa.zzpg();
                    Iterator<zzrx> it3 = next.zzsl().iterator();
                    while (true) {
                        boolean z2 = true;
                        while (true) {
                            if (!it3.hasNext()) {
                                Iterator<zzrx> it4 = next.zzsk().iterator();
                                while (true) {
                                    if (!it4.hasNext()) {
                                        zzgj.zzj(true);
                                        zzdz = new zzdz(true, z2);
                                        break;
                                    }
                                    zzdz<Boolean> zza = zza(it4.next(), set2, zzpg.zzpb());
                                    if (!zza.getObject().booleanValue()) {
                                        zzgj.zzj(false);
                                        zzdz = new zzdz(false, zza.zzpi());
                                        break;
                                    }
                                    z2 = z2 && zza.zzpi();
                                }
                            } else {
                                zzdz<Boolean> zza2 = zza(it3.next(), set2, zzpg.zzpa());
                                if (zza2.getObject().booleanValue()) {
                                    zzgj.zzj(false);
                                    zzdz = new zzdz(false, zza2.zzpi());
                                    break;
                                } else if (!z2 || !zza2.zzpi()) {
                                    z2 = false;
                                }
                            }
                        }
                    }
                    if (((Boolean) zzdz.getObject()).booleanValue()) {
                        zzfg.zza(next, hashSet, hashSet2, zzpg);
                    }
                    if (!z || !zzdz.zzpi()) {
                        z = false;
                    }
                } else {
                    hashSet.removeAll(hashSet2);
                    zzfa.zzb(hashSet);
                    return new zzdz<>(hashSet, z);
                }
            }
        }
    }

    private static String zza(zzrx zzrx) {
        return zzgj.zzc(zzrx.zzsi().get(zzb.INSTANCE_NAME.toString()));
    }

    private static void zza(Map<String, zzbq> map, zzbq zzbq) {
        if (map.containsKey(zzbq.zzot())) {
            String valueOf = String.valueOf(zzbq.zzot());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate function type name: ".concat(valueOf) : new String("Duplicate function type name: "));
        } else {
            map.put(zzbq.zzot(), zzbq);
        }
    }

    @VisibleForTesting
    private final void zza(zzbq zzbq) {
        zza(this.zzbfp, zzbq);
    }

    @VisibleForTesting
    private final void zzb(zzbq zzbq) {
        zza(this.zzbfn, zzbq);
    }

    @VisibleForTesting
    private final void zzc(zzbq zzbq) {
        zza(this.zzbfo, zzbq);
    }

    @VisibleForTesting
    private final zzdz<Boolean> zza(zzrx zzrx, Set<String> set, zzen zzen) {
        zzdz<zzp> zza = zza(this.zzbfo, zzrx, set, zzen);
        Boolean zzg = zzgj.zzg(zza.getObject());
        zzen.zza(zzgj.zzj(zzg));
        return new zzdz<>(zzg, zza.zzpi());
    }

    private final String zzpu() {
        if (this.zzbfv <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.zzbfv));
        for (int i = 2; i < this.zzbfv; i++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    private final zzdz<zzp> zza(String str, Set<String> set, zzdl zzdl) {
        zzrx zzrx;
        zzdz<zzp> zzdz;
        this.zzbfv++;
        zzfh zzfh = this.zzbfr.get(str);
        if (zzfh != null) {
            this.zzbfm.zzos();
            zza(zzfh.zzpw(), set);
            this.zzbfv--;
            return zzfh.zzpv();
        }
        zzfi zzfi = this.zzbft.get(str);
        if (zzfi == null) {
            String zzpu = zzpu();
            StringBuilder sb = new StringBuilder(String.valueOf(zzpu).length() + 15 + String.valueOf(str).length());
            sb.append(zzpu);
            sb.append("Invalid macro: ");
            sb.append(str);
            zzdi.e(sb.toString());
            this.zzbfv--;
            return zzbfk;
        }
        zzdz<Set<zzrx>> zza = zza(zzfi.zzpx(), set, new zzfe(this, zzfi.zzpy(), zzfi.zzpz(), zzfi.zzqb(), zzfi.zzqa()), zzdl.zzog());
        if (zza.getObject().isEmpty()) {
            zzrx = zzfi.zzqc();
        } else {
            if (zza.getObject().size() > 1) {
                String zzpu2 = zzpu();
                StringBuilder sb2 = new StringBuilder(String.valueOf(zzpu2).length() + 37 + String.valueOf(str).length());
                sb2.append(zzpu2);
                sb2.append("Multiple macros active for macroName ");
                sb2.append(str);
                zzdi.zzab(sb2.toString());
            }
            zzrx = zza.getObject().iterator().next();
        }
        if (zzrx == null) {
            this.zzbfv--;
            return zzbfk;
        }
        zzdz<zzp> zza2 = zza(this.zzbfp, zzrx, set, zzdl.zzoz());
        boolean z = zza.zzpi() && zza2.zzpi();
        if (zza2 == zzbfk) {
            zzdz = zzbfk;
        } else {
            zzdz = new zzdz<>(zza2.getObject(), z);
        }
        zzp zzpw = zzrx.zzpw();
        if (zzdz.zzpi()) {
            this.zzbfr.zza(str, new zzfh(zzdz, zzpw));
        }
        zza(zzpw, set);
        this.zzbfv--;
        return zzdz;
    }

    private final void zza(zzp zzp, Set<String> set) {
        zzdz<zzp> zza;
        if (zzp != null && (zza = zza(zzp, set, new zzdx())) != zzbfk) {
            Object zzh = zzgj.zzh(zza.getObject());
            if (zzh instanceof Map) {
                this.zzbab.push((Map) zzh);
            } else if (zzh instanceof List) {
                for (Object obj : (List) zzh) {
                    if (obj instanceof Map) {
                        this.zzbab.push((Map) obj);
                    } else {
                        zzdi.zzab("pushAfterEvaluate: value not a Map");
                    }
                }
            } else {
                zzdi.zzab("pushAfterEvaluate: value not a Map or List");
            }
        }
    }

    private final zzdz<zzp> zza(zzp zzp, Set<String> set, zzgm zzgm) {
        if (!zzp.zzqs) {
            return new zzdz<>(zzp, true);
        }
        int i = zzp.type;
        if (i != 7) {
            switch (i) {
                case 2:
                    zzp zzk = zzrv.zzk(zzp);
                    zzk.zzqj = new zzp[zzp.zzqj.length];
                    for (int i2 = 0; i2 < zzp.zzqj.length; i2++) {
                        zzdz<zzp> zza = zza(zzp.zzqj[i2], set, zzgm.zzw(i2));
                        if (zza == zzbfk) {
                            return zzbfk;
                        }
                        zzk.zzqj[i2] = zza.getObject();
                    }
                    return new zzdz<>(zzk, false);
                case 3:
                    zzp zzk2 = zzrv.zzk(zzp);
                    if (zzp.zzqk.length != zzp.zzql.length) {
                        String valueOf = String.valueOf(zzp.toString());
                        zzdi.e(valueOf.length() != 0 ? "Invalid serving value: ".concat(valueOf) : new String("Invalid serving value: "));
                        return zzbfk;
                    }
                    zzk2.zzqk = new zzp[zzp.zzqk.length];
                    zzk2.zzql = new zzp[zzp.zzqk.length];
                    for (int i3 = 0; i3 < zzp.zzqk.length; i3++) {
                        zzdz<zzp> zza2 = zza(zzp.zzqk[i3], set, zzgm.zzx(i3));
                        zzdz<zzp> zza3 = zza(zzp.zzql[i3], set, zzgm.zzy(i3));
                        if (zza2 == zzbfk || zza3 == zzbfk) {
                            return zzbfk;
                        }
                        zzk2.zzqk[i3] = zza2.getObject();
                        zzk2.zzql[i3] = zza3.getObject();
                    }
                    return new zzdz<>(zzk2, false);
                case 4:
                    if (set.contains(zzp.zzqm)) {
                        String str = zzp.zzqm;
                        String obj = set.toString();
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(obj).length());
                        sb.append("Macro cycle detected.  Current macro reference: ");
                        sb.append(str);
                        sb.append(".  Previous macro references: ");
                        sb.append(obj);
                        sb.append(".");
                        zzdi.e(sb.toString());
                        return zzbfk;
                    }
                    set.add(zzp.zzqm);
                    zzdz<zzp> zza4 = zzgn.zza(zza(zzp.zzqm, set, zzgm.zzph()), zzp.zzqr);
                    set.remove(zzp.zzqm);
                    return zza4;
                default:
                    int i4 = zzp.type;
                    StringBuilder sb2 = new StringBuilder(25);
                    sb2.append("Unknown type: ");
                    sb2.append(i4);
                    zzdi.e(sb2.toString());
                    return zzbfk;
            }
        } else {
            zzp zzk3 = zzrv.zzk(zzp);
            zzk3.zzqq = new zzp[zzp.zzqq.length];
            for (int i5 = 0; i5 < zzp.zzqq.length; i5++) {
                zzdz<zzp> zza5 = zza(zzp.zzqq[i5], set, zzgm.zzz(i5));
                if (zza5 == zzbfk) {
                    return zzbfk;
                }
                zzk3.zzqq[i5] = zza5.getObject();
            }
            return new zzdz<>(zzk3, false);
        }
    }

    private final zzdz<zzp> zza(Map<String, zzbq> map, zzrx zzrx, Set<String> set, zzen zzen) {
        zzp zzp = zzrx.zzsi().get(zzb.FUNCTION.toString());
        if (zzp == null) {
            zzdi.e("No function id in properties");
            return zzbfk;
        }
        String str = zzp.zzqn;
        zzbq zzbq = map.get(str);
        if (zzbq == null) {
            zzdi.e(String.valueOf(str).concat(" has no backing implementation."));
            return zzbfk;
        }
        zzdz<zzp> zzdz = this.zzbfq.get(zzrx);
        if (zzdz != null) {
            this.zzbfm.zzos();
            return zzdz;
        }
        HashMap hashMap = new HashMap();
        boolean z = true;
        boolean z2 = true;
        for (Map.Entry<String, zzp> entry : zzrx.zzsi().entrySet()) {
            zzdz<zzp> zza = zza(entry.getValue(), set, zzen.zzdy(entry.getKey()).zzb(entry.getValue()));
            if (zza == zzbfk) {
                return zzbfk;
            }
            if (zza.zzpi()) {
                zzrx.zza(entry.getKey(), zza.getObject());
            } else {
                z2 = false;
            }
            hashMap.put(entry.getKey(), zza.getObject());
        }
        if (!zzbq.zza(hashMap.keySet())) {
            String valueOf = String.valueOf(zzbq.zzou());
            String valueOf2 = String.valueOf(hashMap.keySet());
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
            sb.append("Incorrect keys for function ");
            sb.append(str);
            sb.append(" required ");
            sb.append(valueOf);
            sb.append(" had ");
            sb.append(valueOf2);
            zzdi.e(sb.toString());
            return zzbfk;
        }
        if (!z2 || !zzbq.zznk()) {
            z = false;
        }
        zzdz<zzp> zzdz2 = new zzdz<>(zzbq.zze(hashMap), z);
        if (z) {
            this.zzbfq.zza(zzrx, zzdz2);
        }
        zzen.zza(zzdz2.getObject());
        return zzdz2;
    }
}
