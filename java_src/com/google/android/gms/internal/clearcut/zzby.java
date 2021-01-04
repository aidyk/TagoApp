package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzca;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzby<FieldDescriptorType extends zzca<FieldDescriptorType>> {
    private static final zzby zzgw = new zzby(true);
    private final zzei<FieldDescriptorType, Object> zzgt = zzei.zzaj(16);
    private boolean zzgu;
    private boolean zzgv = false;

    private zzby() {
    }

    private zzby(boolean z) {
        zzv();
    }

    static int zza(zzfl zzfl, int i, Object obj) {
        int zzr = zzbn.zzr(i);
        if (zzfl == zzfl.GROUP) {
            zzci.zzf((zzdo) obj);
            zzr <<= 1;
        }
        return zzr + zzb(zzfl, obj);
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzgt.get(fielddescriptortype);
        return obj instanceof zzcr ? zzcr.zzbr() : obj;
    }

    static void zza(zzbn zzbn, zzfl zzfl, int i, Object obj) throws IOException {
        if (zzfl == zzfl.GROUP) {
            zzdo zzdo = (zzdo) obj;
            zzci.zzf(zzdo);
            zzbn.zzb(i, 3);
            zzdo.zzb(zzbn);
            zzbn.zzb(i, 4);
            return;
        }
        zzbn.zzb(i, zzfl.zzel());
        switch (zzbz.zzgq[zzfl.ordinal()]) {
            case 1:
                zzbn.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzbn.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzbn.zzb(((Long) obj).longValue());
                return;
            case 4:
                zzbn.zzb(((Long) obj).longValue());
                return;
            case 5:
                zzbn.zzn(((Integer) obj).intValue());
                return;
            case 6:
                zzbn.zzd(((Long) obj).longValue());
                return;
            case 7:
                zzbn.zzq(((Integer) obj).intValue());
                return;
            case 8:
                zzbn.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzdo) obj).zzb(zzbn);
                return;
            case 10:
                zzbn.zzb((zzdo) obj);
                return;
            case 11:
                if (obj instanceof zzbb) {
                    zzbn.zza((zzbb) obj);
                    return;
                } else {
                    zzbn.zzg((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzbb) {
                    zzbn.zza((zzbb) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzbn.zzd(bArr, 0, bArr.length);
                return;
            case 13:
                zzbn.zzo(((Integer) obj).intValue());
                return;
            case 14:
                zzbn.zzq(((Integer) obj).intValue());
                return;
            case 15:
                zzbn.zzd(((Long) obj).longValue());
                return;
            case 16:
                zzbn.zzp(((Integer) obj).intValue());
                return;
            case 17:
                zzbn.zzc(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzcj) {
                    zzbn.zzn(((zzcj) obj).zzc());
                    return;
                } else {
                    zzbn.zzn(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzaw()) {
            zza(fielddescriptortype.zzau(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(fielddescriptortype.zzau(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzcr) {
            this.zzgv = true;
        }
        this.zzgt.put(fielddescriptortype, obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        if ((r3 instanceof byte[]) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001b, code lost:
        if ((r3 instanceof com.google.android.gms.internal.clearcut.zzcr) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0024, code lost:
        if ((r3 instanceof com.google.android.gms.internal.clearcut.zzcj) == false) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void zza(com.google.android.gms.internal.clearcut.zzfl r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.clearcut.zzci.checkNotNull(r3)
            int[] r0 = com.google.android.gms.internal.clearcut.zzbz.zzgx
            com.google.android.gms.internal.clearcut.zzfq r2 = r2.zzek()
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
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.zzdo
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.zzcr
            if (r2 == 0) goto L_0x0043
            goto L_0x0026
        L_0x001e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.zzcj
            if (r2 == 0) goto L_0x0043
        L_0x0026:
            r1 = 1
            goto L_0x0043
        L_0x0028:
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.zzbb
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzby.zza(com.google.android.gms.internal.clearcut.zzfl, java.lang.Object):void");
    }

    public static <T extends zzca<T>> zzby<T> zzar() {
        return zzgw;
    }

    private static int zzb(zzca<?> zzca, Object obj) {
        zzfl zzau = zzca.zzau();
        int zzc = zzca.zzc();
        if (!zzca.zzaw()) {
            return zza(zzau, zzc, obj);
        }
        int i = 0;
        if (zzca.zzax()) {
            for (Object obj2 : (List) obj) {
                i += zzb(zzau, obj2);
            }
            return zzbn.zzr(zzc) + i + zzbn.zzz(i);
        }
        for (Object obj3 : (List) obj) {
            i += zza(zzau, zzc, obj3);
        }
        return i;
    }

    private static int zzb(zzfl zzfl, Object obj) {
        switch (zzbz.zzgq[zzfl.ordinal()]) {
            case 1:
                return zzbn.zzb(((Double) obj).doubleValue());
            case 2:
                return zzbn.zzb(((Float) obj).floatValue());
            case 3:
                return zzbn.zze(((Long) obj).longValue());
            case 4:
                return zzbn.zzf(((Long) obj).longValue());
            case 5:
                return zzbn.zzs(((Integer) obj).intValue());
            case 6:
                return zzbn.zzh(((Long) obj).longValue());
            case 7:
                return zzbn.zzv(((Integer) obj).intValue());
            case 8:
                return zzbn.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzbn.zzd((zzdo) obj);
            case 10:
                return obj instanceof zzcr ? zzbn.zza((zzcr) obj) : zzbn.zzc((zzdo) obj);
            case 11:
                return obj instanceof zzbb ? zzbn.zzb((zzbb) obj) : zzbn.zzh((String) obj);
            case 12:
                return obj instanceof zzbb ? zzbn.zzb((zzbb) obj) : zzbn.zzd((byte[]) obj);
            case 13:
                return zzbn.zzt(((Integer) obj).intValue());
            case 14:
                return zzbn.zzw(((Integer) obj).intValue());
            case 15:
                return zzbn.zzi(((Long) obj).longValue());
            case 16:
                return zzbn.zzu(((Integer) obj).intValue());
            case 17:
                return zzbn.zzg(((Long) obj).longValue());
            case 18:
                return obj instanceof zzcj ? zzbn.zzx(((zzcj) obj).zzc()) : zzbn.zzx(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzav() == zzfq.MESSAGE) {
            if (key.zzaw()) {
                for (zzdo zzdo : (List) entry.getValue()) {
                    if (!zzdo.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzdo) {
                    if (!((zzdo) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof zzcr) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzcr) {
            value = zzcr.zzbr();
        }
        if (key.zzaw()) {
            Object zza = zza(key);
            if (zza == null) {
                zza = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) zza).add(zzd(obj));
            }
            this.zzgt.put(key, zza);
        } else if (key.zzav() == zzfq.MESSAGE) {
            Object zza2 = zza(key);
            if (zza2 == null) {
                this.zzgt.put(key, zzd(value));
            } else {
                this.zzgt.put(key, zza2 instanceof zzdv ? key.zza((zzdv) zza2, (zzdv) value) : key.zza(((zzdo) zza2).zzbc(), (zzdo) value).zzbj());
            }
        } else {
            this.zzgt.put(key, zzd(value));
        }
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzav() != zzfq.MESSAGE || key.zzaw() || key.zzax()) ? zzb((zzca<?>) key, value) : value instanceof zzcr ? zzbn.zzb(entry.getKey().zzc(), (zzcr) value) : zzbn.zzd(entry.getKey().zzc(), (zzdo) value);
    }

    private static Object zzd(Object obj) {
        if (obj instanceof zzdv) {
            return ((zzdv) obj).zzci();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzby zzby = new zzby();
        for (int i = 0; i < this.zzgt.zzdr(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzak = this.zzgt.zzak(i);
            zzby.zza(zzak.getKey(), zzak.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            zzby.zza(entry.getKey(), entry.getValue());
        }
        zzby.zzgv = this.zzgv;
        return zzby;
    }

    /* access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        return this.zzgv ? new zzcu(this.zzgt.zzdt().iterator()) : this.zzgt.zzdt().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzby)) {
            return false;
        }
        return this.zzgt.equals(((zzby) obj).zzgt);
    }

    public final int hashCode() {
        return this.zzgt.hashCode();
    }

    /* access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return this.zzgt.isEmpty();
    }

    public final boolean isImmutable() {
        return this.zzgu;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzgt.zzdr(); i++) {
            if (!zzb(this.zzgt.zzak(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzgv ? new zzcu(this.zzgt.entrySet().iterator()) : this.zzgt.entrySet().iterator();
    }

    public final void zza(zzby<FieldDescriptorType> zzby) {
        for (int i = 0; i < zzby.zzgt.zzdr(); i++) {
            zzc(zzby.zzgt.zzak(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzby.zzgt.zzds()) {
            zzc(entry);
        }
    }

    public final int zzas() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzgt.zzdr(); i2++) {
            Map.Entry<FieldDescriptorType, Object> zzak = this.zzgt.zzak(i2);
            i += zzb((zzca<?>) zzak.getKey(), zzak.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            i += zzb((zzca<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public final int zzat() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzgt.zzdr(); i2++) {
            i += zzd((Map.Entry) this.zzgt.zzak(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            i += zzd((Map.Entry) entry);
        }
        return i;
    }

    public final void zzv() {
        if (!this.zzgu) {
            this.zzgt.zzv();
            this.zzgu = true;
        }
    }
}
