package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzvo<FieldDescriptorType extends zzvq<FieldDescriptorType>> {
    private static final zzvo zzbwn = new zzvo(true);
    private boolean zzbqj;
    private final zzxx<FieldDescriptorType, Object> zzbwl = zzxx.zzbv(16);
    private boolean zzbwm = false;

    private zzvo() {
    }

    private zzvo(boolean z) {
        zzsw();
    }

    public static <T extends zzvq<T>> zzvo<T> zzwd() {
        return zzbwn;
    }

    /* access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return this.zzbwl.isEmpty();
    }

    public final void zzsw() {
        if (!this.zzbqj) {
            this.zzbwl.zzsw();
            this.zzbqj = true;
        }
    }

    public final boolean isImmutable() {
        return this.zzbqj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvo)) {
            return false;
        }
        return this.zzbwl.equals(((zzvo) obj).zzbwl);
    }

    public final int hashCode() {
        return this.zzbwl.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        if (this.zzbwm) {
            return new zzwk(this.zzbwl.entrySet().iterator());
        }
        return this.zzbwl.entrySet().iterator();
    }

    /* access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        if (this.zzbwm) {
            return new zzwk(this.zzbwl.zzyl().iterator());
        }
        return this.zzbwl.zzyl().iterator();
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzbwl.get(fielddescriptortype);
        return obj instanceof zzwh ? zzwh.zzxg() : obj;
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzwi()) {
            zza(fielddescriptortype.zzwg(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(fielddescriptortype.zzwg(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzwh) {
            this.zzbwm = true;
        }
        this.zzbwl.put(fielddescriptortype, obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        if ((r3 instanceof byte[]) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001b, code lost:
        if ((r3 instanceof com.google.android.gms.internal.measurement.zzwh) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0024, code lost:
        if ((r3 instanceof com.google.android.gms.internal.measurement.zzwa) == false) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void zza(com.google.android.gms.internal.measurement.zzzb r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.measurement.zzvz.checkNotNull(r3)
            int[] r0 = com.google.android.gms.internal.measurement.zzvp.zzbwo
            com.google.android.gms.internal.measurement.zzzg r2 = r2.zzzc()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L_0x0040;
                case 2: goto L_0x003d;
                case 3: goto L_0x003a;
                case 4: goto L_0x0037;
                case 5: goto L_0x0034;
                case 6: goto L_0x0031;
                case 7: goto L_0x0028;
                case 8: goto L_0x001e;
                case 9: goto L_0x0015;
                default: goto L_0x0014;
            }
        L_0x0014:
            goto L_0x0043
        L_0x0015:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzxe
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzwh
            if (r2 == 0) goto L_0x0043
            goto L_0x0026
        L_0x001e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzwa
            if (r2 == 0) goto L_0x0043
        L_0x0026:
            r1 = 1
            goto L_0x0043
        L_0x0028:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzun
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L_0x0043
            goto L_0x0026
        L_0x0031:
            boolean r0 = r3 instanceof java.lang.String
            goto L_0x0042
        L_0x0034:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L_0x0042
        L_0x0037:
            boolean r0 = r3 instanceof java.lang.Double
            goto L_0x0042
        L_0x003a:
            boolean r0 = r3 instanceof java.lang.Float
            goto L_0x0042
        L_0x003d:
            boolean r0 = r3 instanceof java.lang.Long
            goto L_0x0042
        L_0x0040:
            boolean r0 = r3 instanceof java.lang.Integer
        L_0x0042:
            r1 = r0
        L_0x0043:
            if (r1 == 0) goto L_0x0046
            return
        L_0x0046:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
            switch-data {1->0x0040, 2->0x003d, 3->0x003a, 4->0x0037, 5->0x0034, 6->0x0031, 7->0x0028, 8->0x001e, 9->0x0015, }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvo.zza(com.google.android.gms.internal.measurement.zzzb, java.lang.Object):void");
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzbwl.zzyj(); i++) {
            if (!zzc(this.zzbwl.zzbw(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbwl.zzyk()) {
            if (!zzc(entry)) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzwh() == zzzg.MESSAGE) {
            if (key.zzwi()) {
                for (zzxe zzxe : (List) entry.getValue()) {
                    if (!zzxe.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzxe) {
                    if (!((zzxe) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof zzwh) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void zza(zzvo<FieldDescriptorType> zzvo) {
        for (int i = 0; i < zzvo.zzbwl.zzyj(); i++) {
            zzd(zzvo.zzbwl.zzbw(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzvo.zzbwl.zzyk()) {
            zzd(entry);
        }
    }

    private static Object zzz(Object obj) {
        if (obj instanceof zzxk) {
            return ((zzxk) obj).zzxw();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final void zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        zzxe zzxe;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzwh) {
            value = zzwh.zzxg();
        }
        if (key.zzwi()) {
            Object zza = zza(key);
            if (zza == null) {
                zza = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) zza).add(zzz(obj));
            }
            this.zzbwl.put(key, zza);
        } else if (key.zzwh() == zzzg.MESSAGE) {
            Object zza2 = zza(key);
            if (zza2 == null) {
                this.zzbwl.put(key, zzz(value));
                return;
            }
            if (zza2 instanceof zzxk) {
                zzxe = key.zza((zzxk) zza2, (zzxk) value);
            } else {
                zzxe = key.zza(((zzxe) zza2).zzwo(), (zzxe) value).zzwv();
            }
            this.zzbwl.put(key, zzxe);
        } else {
            this.zzbwl.put(key, zzz(value));
        }
    }

    static void zza(zzve zzve, zzzb zzzb, int i, Object obj) throws IOException {
        if (zzzb == zzzb.GROUP) {
            zzxe zzxe = (zzxe) obj;
            zzvz.zzf(zzxe);
            zzve.zzc(i, 3);
            zzxe.zzb(zzve);
            zzve.zzc(i, 4);
            return;
        }
        zzve.zzc(i, zzzb.zzzd());
        switch (zzvp.zzbvp[zzzb.ordinal()]) {
            case 1:
                zzve.zzb(((Double) obj).doubleValue());
                return;
            case 2:
                zzve.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzve.zzay(((Long) obj).longValue());
                return;
            case 4:
                zzve.zzay(((Long) obj).longValue());
                return;
            case 5:
                zzve.zzay(((Integer) obj).intValue());
                return;
            case 6:
                zzve.zzba(((Long) obj).longValue());
                return;
            case 7:
                zzve.zzbb(((Integer) obj).intValue());
                return;
            case 8:
                zzve.zzs(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzxe) obj).zzb(zzve);
                return;
            case 10:
                zzve.zzb((zzxe) obj);
                return;
            case 11:
                if (obj instanceof zzun) {
                    zzve.zza((zzun) obj);
                    return;
                } else {
                    zzve.zzgd((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzun) {
                    zzve.zza((zzun) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzve.zze(bArr, 0, bArr.length);
                return;
            case 13:
                zzve.zzaz(((Integer) obj).intValue());
                return;
            case 14:
                zzve.zzbb(((Integer) obj).intValue());
                return;
            case 15:
                zzve.zzba(((Long) obj).longValue());
                return;
            case 16:
                zzve.zzba(((Integer) obj).intValue());
                return;
            case 17:
                zzve.zzaz(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzwa) {
                    zzve.zzay(((zzwa) obj).zzc());
                    return;
                } else {
                    zzve.zzay(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public final int zzwe() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzbwl.zzyj(); i2++) {
            Map.Entry<FieldDescriptorType, Object> zzbw = this.zzbwl.zzbw(i2);
            i += zzb((zzvq<?>) zzbw.getKey(), zzbw.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbwl.zzyk()) {
            i += zzb((zzvq<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public final int zzwf() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzbwl.zzyj(); i2++) {
            i += zze(this.zzbwl.zzbw(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbwl.zzyk()) {
            i += zze(entry);
        }
        return i;
    }

    private static int zze(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzwh() != zzzg.MESSAGE || key.zzwi() || key.zzwj()) {
            return zzb((zzvq<?>) key, value);
        }
        if (value instanceof zzwh) {
            return zzve.zzb(entry.getKey().zzc(), (zzwh) value);
        }
        return zzve.zzd(entry.getKey().zzc(), (zzxe) value);
    }

    static int zza(zzzb zzzb, int i, Object obj) {
        int zzbc = zzve.zzbc(i);
        if (zzzb == zzzb.GROUP) {
            zzvz.zzf((zzxe) obj);
            zzbc <<= 1;
        }
        return zzbc + zzb(zzzb, obj);
    }

    private static int zzb(zzzb zzzb, Object obj) {
        switch (zzvp.zzbvp[zzzb.ordinal()]) {
            case 1:
                return zzve.zzc(((Double) obj).doubleValue());
            case 2:
                return zzve.zzb(((Float) obj).floatValue());
            case 3:
                return zzve.zzbb(((Long) obj).longValue());
            case 4:
                return zzve.zzbc(((Long) obj).longValue());
            case 5:
                return zzve.zzbd(((Integer) obj).intValue());
            case 6:
                return zzve.zzbe(((Long) obj).longValue());
            case 7:
                return zzve.zzbg(((Integer) obj).intValue());
            case 8:
                return zzve.zzt(((Boolean) obj).booleanValue());
            case 9:
                return zzve.zzd((zzxe) obj);
            case 10:
                if (obj instanceof zzwh) {
                    return zzve.zza((zzwh) obj);
                }
                return zzve.zzc((zzxe) obj);
            case 11:
                if (obj instanceof zzun) {
                    return zzve.zzb((zzun) obj);
                }
                return zzve.zzge((String) obj);
            case 12:
                if (obj instanceof zzun) {
                    return zzve.zzb((zzun) obj);
                }
                return zzve.zzk((byte[]) obj);
            case 13:
                return zzve.zzbe(((Integer) obj).intValue());
            case 14:
                return zzve.zzbh(((Integer) obj).intValue());
            case 15:
                return zzve.zzbf(((Long) obj).longValue());
            case 16:
                return zzve.zzbf(((Integer) obj).intValue());
            case 17:
                return zzve.zzbd(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzwa) {
                    return zzve.zzbi(((zzwa) obj).zzc());
                }
                return zzve.zzbi(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int zzb(zzvq<?> zzvq, Object obj) {
        zzzb zzwg = zzvq.zzwg();
        int zzc = zzvq.zzc();
        if (!zzvq.zzwi()) {
            return zza(zzwg, zzc, obj);
        }
        int i = 0;
        if (zzvq.zzwj()) {
            for (Object obj2 : (List) obj) {
                i += zzb(zzwg, obj2);
            }
            return zzve.zzbc(zzc) + i + zzve.zzbk(i);
        }
        for (Object obj3 : (List) obj) {
            i += zza(zzwg, zzc, obj3);
        }
        return i;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzvo zzvo = new zzvo();
        for (int i = 0; i < this.zzbwl.zzyj(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzbw = this.zzbwl.zzbw(i);
            zzvo.zza(zzbw.getKey(), zzbw.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbwl.zzyk()) {
            zzvo.zza(entry.getKey(), entry.getValue());
        }
        zzvo.zzbwm = this.zzbwm;
        return zzvo;
    }
}
