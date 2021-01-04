package com.google.android.gms.internal.clearcut;

import io.reactivex.internal.util.ListAddBiConsumer;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

final class zzds<T> implements zzef<T> {
    private static final Unsafe zzmh = zzfd.zzef();
    private final int[] zzmi;
    private final Object[] zzmj;
    private final int zzmk;
    private final int zzml;
    private final int zzmm;
    private final zzdo zzmn;
    private final boolean zzmo;
    private final boolean zzmp;
    private final boolean zzmq;
    private final boolean zzmr;
    private final int[] zzms;
    private final int[] zzmt;
    private final int[] zzmu;
    private final zzdw zzmv;
    private final zzcy zzmw;
    private final zzex<?, ?> zzmx;
    private final zzbu<?> zzmy;
    private final zzdj zzmz;

    private zzds(int[] iArr, Object[] objArr, int i, int i2, int i3, zzdo zzdo, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, zzdw zzdw, zzcy zzcy, zzex<?, ?> zzex, zzbu<?> zzbu, zzdj zzdj) {
        this.zzmi = iArr;
        this.zzmj = objArr;
        this.zzmk = i;
        this.zzml = i2;
        this.zzmm = i3;
        this.zzmp = zzdo instanceof zzcg;
        this.zzmq = z;
        this.zzmo = zzbu != null && zzbu.zze(zzdo);
        this.zzmr = false;
        this.zzms = iArr2;
        this.zzmt = iArr3;
        this.zzmu = iArr4;
        this.zzmv = zzdw;
        this.zzmw = zzcy;
        this.zzmx = zzex;
        this.zzmy = zzbu;
        this.zzmn = zzdo;
        this.zzmz = zzdj;
    }

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzay zzay) throws IOException {
        return zzax.zza(i, bArr, i2, i3, zzn(obj), zzay);
    }

    private static int zza(zzef<?> zzef, int i, byte[] bArr, int i2, int i3, zzcn<?> zzcn, zzay zzay) throws IOException {
        int zza = zza((zzef) zzef, bArr, i2, i3, zzay);
        while (true) {
            zzcn.add(zzay.zzff);
            if (zza >= i3) {
                break;
            }
            int zza2 = zzax.zza(bArr, zza, zzay);
            if (i != zzay.zzfd) {
                break;
            }
            zza = zza((zzef) zzef, bArr, zza2, i3, zzay);
        }
        return zza;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v1, resolved type: com.google.android.gms.internal.clearcut.zzds */
    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzef zzef, byte[] bArr, int i, int i2, int i3, zzay zzay) throws IOException {
        zzds zzds = (zzds) zzef;
        Object newInstance = zzds.newInstance();
        int zza = zzds.zza(newInstance, bArr, i, i2, i3, zzay);
        zzds.zzc(newInstance);
        zzay.zzff = newInstance;
        return zza;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: com.google.android.gms.internal.clearcut.zzef */
    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzef zzef, byte[] bArr, int i, int i2, zzay zzay) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        byte b2 = b;
        if (b < 0) {
            i3 = zzax.zza(b, bArr, i3, zzay);
            b2 = zzay.zzfd;
        }
        if (b2 < 0 || b2 > i2 - i3) {
            throw zzco.zzbl();
        }
        Object newInstance = zzef.newInstance();
        int i4 = (b2 == 1 ? 1 : 0) + i3;
        zzef.zza(newInstance, bArr, i3, i4, zzay);
        zzef.zzc(newInstance);
        zzay.zzff = newInstance;
        return i4;
    }

    private static <UT, UB> int zza(zzex<UT, UB> zzex, T t) {
        return zzex.zzm(zzex.zzq(t));
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzay zzay) throws IOException {
        int i9;
        Object obj;
        Object obj2;
        Object obj3;
        long j2;
        int i10;
        int i11;
        Unsafe unsafe = zzmh;
        long j3 = (long) (this.zzmi[i8 + 2] & 1048575);
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    obj = Double.valueOf(zzax.zze(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i9 = i + 8;
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    obj2 = Float.valueOf(zzax.zzf(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i9 = i + 4;
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    i9 = zzax.zzb(bArr, i, zzay);
                    j2 = zzay.zzfe;
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    i9 = zzax.zza(bArr, i, zzay);
                    i10 = zzay.zzfd;
                    obj3 = Integer.valueOf(i10);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    obj = Long.valueOf(zzax.zzd(bArr, i));
                    unsafe.putObject(t, j, obj);
                    i9 = i + 8;
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    obj2 = Integer.valueOf(zzax.zzc(bArr, i));
                    unsafe.putObject(t, j, obj2);
                    i9 = i + 4;
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    i9 = zzax.zzb(bArr, i, zzay);
                    obj3 = Boolean.valueOf(zzay.zzfe != 0);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    i9 = zzax.zza(bArr, i, zzay);
                    i11 = zzay.zzfd;
                    if (i11 == 0) {
                        obj3 = "";
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        return i9;
                    } else if ((i6 & 536870912) == 0 || zzff.zze(bArr, i9, i9 + i11)) {
                        unsafe.putObject(t, j, new String(bArr, i9, i11, zzci.UTF_8));
                        i9 += i11;
                        unsafe.putInt(t, j3, i4);
                        return i9;
                    } else {
                        throw zzco.zzbp();
                    }
                }
                return i;
            case 60:
                if (i5 == 2) {
                    i9 = zza(zzad(i8), bArr, i, i2, zzay);
                    Object object = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    obj3 = object == null ? zzay.zzff : zzci.zza(object, zzay.zzff);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    i9 = zzax.zza(bArr, i, zzay);
                    i11 = zzay.zzfd;
                    if (i11 == 0) {
                        obj3 = zzbb.zzfi;
                        unsafe.putObject(t, j, obj3);
                        unsafe.putInt(t, j3, i4);
                        return i9;
                    }
                    unsafe.putObject(t, j, zzbb.zzb(bArr, i9, i11));
                    i9 += i11;
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int zza = zzax.zza(bArr, i, zzay);
                    int i12 = zzay.zzfd;
                    zzck<?> zzaf = zzaf(i8);
                    if (zzaf == null || zzaf.zzb(i12) != null) {
                        unsafe.putObject(t, j, Integer.valueOf(i12));
                        i9 = zza;
                        unsafe.putInt(t, j3, i4);
                        return i9;
                    }
                    zzn(t).zzb(i3, Long.valueOf((long) i12));
                    return zza;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    i9 = zzax.zza(bArr, i, zzay);
                    i10 = zzbk.zzm(zzay.zzfd);
                    obj3 = Integer.valueOf(i10);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    i9 = zzax.zzb(bArr, i, zzay);
                    j2 = zzbk.zza(zzay.zzfe);
                    obj3 = Long.valueOf(j2);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    i9 = zza(zzad(i8), bArr, i, i2, (i3 & -8) | 4, zzay);
                    Object object2 = unsafe.getInt(t, j3) == i4 ? unsafe.getObject(t, j) : null;
                    obj3 = object2 == null ? zzay.zzff : zzci.zza(object2, zzay.zzff);
                    unsafe.putObject(t, j, obj3);
                    unsafe.putInt(t, j3, i4);
                    return i9;
                }
                return i;
            default:
                return i;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:113:0x022e, code lost:
        if (r30.zzfe != 0) goto L_0x0230;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x0230, code lost:
        r6 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x0232, code lost:
        r6 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x0233, code lost:
        r11.addBoolean(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x0236, code lost:
        if (r4 >= r20) goto L_0x0397;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x0238, code lost:
        r6 = com.google.android.gms.internal.clearcut.zzax.zza(r18, r4, r30);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x023e, code lost:
        if (r21 != r30.zzfd) goto L_0x0397;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x0240, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzax.zzb(r18, r6, r30);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0248, code lost:
        if (r30.zzfe == 0) goto L_0x0232;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:224:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:225:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0130, code lost:
        if (r4 == 0) goto L_0x0132;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0132, code lost:
        r11.add(com.google.android.gms.internal.clearcut.zzbb.zzfi);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0138, code lost:
        r11.add(com.google.android.gms.internal.clearcut.zzbb.zzb(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0140, code lost:
        if (r1 >= r20) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0142, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzax.zza(r18, r1, r30);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0148, code lost:
        if (r21 != r30.zzfd) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x014a, code lost:
        r1 = com.google.android.gms.internal.clearcut.zzax.zza(r18, r4, r30);
        r4 = r30.zzfd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0150, code lost:
        if (r4 != 0) goto L_0x0138;
     */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0193  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01cf  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.clearcut.zzay r30) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 990
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.clearcut.zzay):int");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:28:0x003e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:32:0x003e */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, zzay zzay) throws IOException {
        Unsafe unsafe = zzmh;
        Object zzae = zzae(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzmz.zzi(object)) {
            Object zzk = this.zzmz.zzk(zzae);
            this.zzmz.zzb(zzk, object);
            unsafe.putObject(t, j, zzk);
            object = zzk;
        }
        zzdh<?, ?> zzl = this.zzmz.zzl(zzae);
        Map<?, ?> zzg = this.zzmz.zzg(object);
        int zza = zzax.zza(bArr, i, zzay);
        int i5 = zzay.zzfd;
        if (i5 < 0 || i5 > i2 - zza) {
            throw zzco.zzbl();
        }
        int i6 = i5 + zza;
        ListAddBiConsumer listAddBiConsumer = (K) zzl.zzmc;
        ListAddBiConsumer listAddBiConsumer2 = (V) zzl.zzdu;
        while (zza < i6) {
            int i7 = zza + 1;
            byte b = bArr[zza];
            int i8 = b;
            if (b < 0) {
                i7 = zzax.zza(b, bArr, i7, zzay);
                i8 = zzay.zzfd;
            }
            int i9 = (i8 == 1 ? 1 : 0) >>> 3;
            int i10 = (i8 == 1 ? 1 : 0) & 7;
            switch (i9) {
                case 1:
                    if (i10 == zzl.zzmb.zzel()) {
                        zza = zza(bArr, i7, i2, zzl.zzmb, (Class<?>) null, zzay);
                        listAddBiConsumer = (K) zzay.zzff;
                        continue;
                    }
                    break;
                case 2:
                    if (i10 == zzl.zzmd.zzel()) {
                        zza = zza(bArr, i7, i2, zzl.zzmd, zzl.zzdu.getClass(), zzay);
                        listAddBiConsumer2 = (V) zzay.zzff;
                        continue;
                    }
                    break;
            }
            zza = zzax.zza(i8, bArr, i7, i2, zzay);
        }
        if (zza == i6) {
            zzg.put(listAddBiConsumer, listAddBiConsumer2);
            return i6;
        }
        throw zzco.zzbo();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:116:0x02ff, code lost:
        if (r0 == r4) goto L_0x0301;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x0304, code lost:
        r12 = r33;
        r9 = r37;
        r6 = r18;
        r7 = r24;
        r10 = r29;
        r1 = r30;
        r8 = -1;
        r11 = r36;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x0346, code lost:
        if (r0 == r15) goto L_0x0301;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x0363, code lost:
        if (r0 == r15) goto L_0x0301;
     */
    /* JADX WARNING: Removed duplicated region for block: B:133:0x0376 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zza(T r32, byte[] r33, int r34, int r35, int r36, com.google.android.gms.internal.clearcut.zzay r37) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1084
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.zzay):int");
    }

    private static int zza(byte[] bArr, int i, int i2, zzfl zzfl, Class<?> cls, zzay zzay) throws IOException {
        int zzb;
        Object valueOf;
        Object obj;
        Object obj2;
        int i3;
        long j;
        switch (zzdt.zzgq[zzfl.ordinal()]) {
            case 1:
                zzb = zzax.zzb(bArr, i, zzay);
                valueOf = Boolean.valueOf(zzay.zzfe != 0);
                zzay.zzff = valueOf;
                return zzb;
            case 2:
                return zzax.zze(bArr, i, zzay);
            case 3:
                obj = Double.valueOf(zzax.zze(bArr, i));
                zzay.zzff = obj;
                return i + 8;
            case 4:
            case 5:
                obj2 = Integer.valueOf(zzax.zzc(bArr, i));
                zzay.zzff = obj2;
                return i + 4;
            case 6:
            case 7:
                obj = Long.valueOf(zzax.zzd(bArr, i));
                zzay.zzff = obj;
                return i + 8;
            case 8:
                obj2 = Float.valueOf(zzax.zzf(bArr, i));
                zzay.zzff = obj2;
                return i + 4;
            case 9:
            case 10:
            case 11:
                zzb = zzax.zza(bArr, i, zzay);
                i3 = zzay.zzfd;
                valueOf = Integer.valueOf(i3);
                zzay.zzff = valueOf;
                return zzb;
            case 12:
            case 13:
                zzb = zzax.zzb(bArr, i, zzay);
                j = zzay.zzfe;
                valueOf = Long.valueOf(j);
                zzay.zzff = valueOf;
                return zzb;
            case 14:
                return zza((zzef) zzea.zzcm().zze(cls), bArr, i, i2, zzay);
            case 15:
                zzb = zzax.zza(bArr, i, zzay);
                i3 = zzbk.zzm(zzay.zzfd);
                valueOf = Integer.valueOf(i3);
                zzay.zzff = valueOf;
                return zzb;
            case 16:
                zzb = zzax.zzb(bArr, i, zzay);
                j = zzbk.zza(zzay.zzfe);
                valueOf = Long.valueOf(j);
                zzay.zzff = valueOf;
                return zzb;
            case 17:
                return zzax.zzd(bArr, i, zzay);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00d2  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x014c  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0165  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x016d A[EDGE_INSN: B:75:0x016d->B:71:0x016d ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> com.google.android.gms.internal.clearcut.zzds<T> zza(java.lang.Class<T> r22, com.google.android.gms.internal.clearcut.zzdm r23, com.google.android.gms.internal.clearcut.zzdw r24, com.google.android.gms.internal.clearcut.zzcy r25, com.google.android.gms.internal.clearcut.zzex<?, ?> r26, com.google.android.gms.internal.clearcut.zzbu<?> r27, com.google.android.gms.internal.clearcut.zzdj r28) {
        /*
        // Method dump skipped, instructions count: 406
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Class, com.google.android.gms.internal.clearcut.zzdm, com.google.android.gms.internal.clearcut.zzdw, com.google.android.gms.internal.clearcut.zzcy, com.google.android.gms.internal.clearcut.zzex, com.google.android.gms.internal.clearcut.zzbu, com.google.android.gms.internal.clearcut.zzdj):com.google.android.gms.internal.clearcut.zzds");
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzck<?> zzck, UB ub, zzex<UT, UB> zzex) {
        zzdh<?, ?> zzl = this.zzmz.zzl(zzae(i));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (zzck.zzb(next.getValue().intValue()) == null) {
                if (ub == null) {
                    ub = zzex.zzdz();
                }
                zzbg zzk = zzbb.zzk(zzdg.zza(zzl, next.getKey(), next.getValue()));
                try {
                    zzdg.zza(zzk.zzae(), zzl, next.getKey(), next.getValue());
                    zzex.zza(ub, i2, zzk.zzad());
                    it2.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private static void zza(int i, Object obj, zzfr zzfr) throws IOException {
        if (obj instanceof String) {
            zzfr.zza(i, (String) obj);
        } else {
            zzfr.zza(i, (zzbb) obj);
        }
    }

    private static <UT, UB> void zza(zzex<UT, UB> zzex, T t, zzfr zzfr) throws IOException {
        zzex.zza(zzex.zzq(t), zzfr);
    }

    private final <K, V> void zza(zzfr zzfr, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzfr.zza(i, this.zzmz.zzl(zzae(i2)), this.zzmz.zzh(obj));
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzag = (long) (zzag(i) & 1048575);
        if (zza(t2, i)) {
            Object zzo = zzfd.zzo(t, zzag);
            Object zzo2 = zzfd.zzo(t2, zzag);
            if (zzo != null && zzo2 != null) {
                zzfd.zza(t, zzag, zzci.zza(zzo, zzo2));
                zzb(t, i);
            } else if (zzo2 != null) {
                zzfd.zza(t, zzag, zzo2);
                zzb(t, i);
            }
        }
    }

    private final boolean zza(T t, int i) {
        if (this.zzmq) {
            int zzag = zzag(i);
            long j = (long) (zzag & 1048575);
            switch ((zzag & 267386880) >>> 20) {
                case 0:
                    return zzfd.zzn(t, j) != 0.0d;
                case 1:
                    return zzfd.zzm(t, j) != 0.0f;
                case 2:
                    return zzfd.zzk(t, j) != 0;
                case 3:
                    return zzfd.zzk(t, j) != 0;
                case 4:
                    return zzfd.zzj(t, j) != 0;
                case 5:
                    return zzfd.zzk(t, j) != 0;
                case 6:
                    return zzfd.zzj(t, j) != 0;
                case 7:
                    return zzfd.zzl(t, j);
                case 8:
                    Object zzo = zzfd.zzo(t, j);
                    if (zzo instanceof String) {
                        return !((String) zzo).isEmpty();
                    }
                    if (zzo instanceof zzbb) {
                        return !zzbb.zzfi.equals(zzo);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzfd.zzo(t, j) != null;
                case 10:
                    return !zzbb.zzfi.equals(zzfd.zzo(t, j));
                case 11:
                    return zzfd.zzj(t, j) != 0;
                case 12:
                    return zzfd.zzj(t, j) != 0;
                case 13:
                    return zzfd.zzj(t, j) != 0;
                case 14:
                    return zzfd.zzk(t, j) != 0;
                case 15:
                    return zzfd.zzj(t, j) != 0;
                case 16:
                    return zzfd.zzk(t, j) != 0;
                case 17:
                    return zzfd.zzo(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int zzah = zzah(i);
            return (zzfd.zzj(t, (long) (zzah & 1048575)) & (1 << (zzah >>> 20))) != 0;
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzfd.zzj(t, (long) (zzah(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzmq ? zza(t, i) : (i2 & i3) != 0;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.clearcut.zzef */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzef zzef) {
        return zzef.zzo(zzfd.zzo(obj, (long) (i & 1048575)));
    }

    private final zzef zzad(int i) {
        int i2 = (i / 4) << 1;
        zzef zzef = (zzef) this.zzmj[i2];
        if (zzef != null) {
            return zzef;
        }
        zzef<T> zze = zzea.zzcm().zze((Class) this.zzmj[i2 + 1]);
        this.zzmj[i2] = zze;
        return zze;
    }

    private final Object zzae(int i) {
        return this.zzmj[(i / 4) << 1];
    }

    private final zzck<?> zzaf(int i) {
        return (zzck) this.zzmj[((i / 4) << 1) + 1];
    }

    private final int zzag(int i) {
        return this.zzmi[i + 1];
    }

    private final int zzah(int i) {
        return this.zzmi[i + 2];
    }

    private final int zzai(int i) {
        if (i >= this.zzmk) {
            if (i < this.zzmm) {
                int i2 = (i - this.zzmk) << 2;
                if (this.zzmi[i2] == i) {
                    return i2;
                }
                return -1;
            } else if (i <= this.zzml) {
                int i3 = this.zzmm - this.zzmk;
                int length = (this.zzmi.length / 4) - 1;
                while (i3 <= length) {
                    int i4 = (length + i3) >>> 1;
                    int i5 = i4 << 2;
                    int i6 = this.zzmi[i5];
                    if (i == i6) {
                        return i5;
                    }
                    if (i < i6) {
                        length = i4 - 1;
                    } else {
                        i3 = i4 + 1;
                    }
                }
            }
        }
        return -1;
    }

    private final void zzb(T t, int i) {
        if (!this.zzmq) {
            int zzah = zzah(i);
            long j = (long) (zzah & 1048575);
            zzfd.zza((Object) t, j, zzfd.zzj(t, j) | (1 << (zzah >>> 20)));
        }
    }

    private final void zzb(T t, int i, int i2) {
        zzfd.zza((Object) t, (long) (zzah(i2) & 1048575), i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:178:0x04f7  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzb(T r20, com.google.android.gms.internal.clearcut.zzfr r21) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1440
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zzb(java.lang.Object, com.google.android.gms.internal.clearcut.zzfr):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzag = zzag(i);
        int i2 = this.zzmi[i];
        long j = (long) (zzag & 1048575);
        if (zza(t2, i2, i)) {
            Object zzo = zzfd.zzo(t, j);
            Object zzo2 = zzfd.zzo(t2, j);
            if (zzo != null && zzo2 != null) {
                zzfd.zza(t, j, zzci.zza(zzo, zzo2));
                zzb(t, i2, i);
            } else if (zzo2 != null) {
                zzfd.zza(t, j, zzo2);
                zzb(t, i2, i);
            }
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza(t, i) == zza(t2, i);
    }

    private static <E> List<E> zzd(Object obj, long j) {
        return (List) zzfd.zzo(obj, j);
    }

    private static <T> double zze(T t, long j) {
        return ((Double) zzfd.zzo(t, j)).doubleValue();
    }

    private static <T> float zzf(T t, long j) {
        return ((Float) zzfd.zzo(t, j)).floatValue();
    }

    private static <T> int zzg(T t, long j) {
        return ((Integer) zzfd.zzo(t, j)).intValue();
    }

    private static <T> long zzh(T t, long j) {
        return ((Long) zzfd.zzo(t, j)).longValue();
    }

    private static <T> boolean zzi(T t, long j) {
        return ((Boolean) zzfd.zzo(t, j)).booleanValue();
    }

    private static zzey zzn(Object obj) {
        zzcg zzcg = (zzcg) obj;
        zzey zzey = zzcg.zzjp;
        if (zzey != zzey.zzea()) {
            return zzey;
        }
        zzey zzeb = zzey.zzeb();
        zzcg.zzjp = zzeb;
        return zzeb;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x005c, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r10, r6), com.google.android.gms.internal.clearcut.zzfd.zzo(r11, r6)) != false) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0070, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzk(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0082, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0096, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzk(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00a8, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ba, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00cc, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00e2, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r10, r6), com.google.android.gms.internal.clearcut.zzfd.zzo(r11, r6)) != false) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f8, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r10, r6), com.google.android.gms.internal.clearcut.zzfd.zzo(r11, r6)) != false) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x010e, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r10, r6), com.google.android.gms.internal.clearcut.zzfd.zzo(r11, r6)) != false) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0120, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzl(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzl(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0132, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0145, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzk(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0156, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0169, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzk(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x017c, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzk(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x018d, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzj(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x01a0, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r10, r6) == com.google.android.gms.internal.clearcut.zzfd.zzk(r11, r6)) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r10, r6), com.google.android.gms.internal.clearcut.zzfd.zzo(r11, r6)) != false) goto L_0x01a3;
     */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(T r10, T r11) {
        /*
        // Method dump skipped, instructions count: 610
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.equals(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00ce, code lost:
        if (r3 != null) goto L_0x00e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00e0, code lost:
        if (r3 != null) goto L_0x00e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00e2, code lost:
        r7 = r3.hashCode();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00e6, code lost:
        r2 = (r2 * 53) + r7;
     */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int hashCode(T r9) {
        /*
        // Method dump skipped, instructions count: 476
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.hashCode(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final T newInstance() {
        return (T) this.zzmv.newInstance(this.zzmn);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:173:0x04b9  */
    /* JADX WARNING: Removed duplicated region for block: B:188:0x04f7  */
    /* JADX WARNING: Removed duplicated region for block: B:351:0x0977  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r14, com.google.android.gms.internal.clearcut.zzfr r15) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 2738
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, com.google.android.gms.internal.clearcut.zzfr):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v25, types: [int] */
    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r7 == 0) goto L_0x00d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00ce, code lost:
        if (r7 == 0) goto L_0x00d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d0, code lost:
        r0 = com.google.android.gms.internal.clearcut.zzax.zza(r12, r10, r11);
        r1 = r11.zzfd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0164, code lost:
        if (r0 == r10) goto L_0x0166;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0189, code lost:
        if (r0 == r15) goto L_0x0166;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x01a2, code lost:
        if (r0 == r15) goto L_0x0166;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r24, byte[] r25, int r26, int r27, com.google.android.gms.internal.clearcut.zzay r28) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 518
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.clearcut.zzay):void");
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(T t) {
        if (this.zzmt != null) {
            for (int i : this.zzmt) {
                long zzag = (long) (zzag(i) & 1048575);
                Object zzo = zzfd.zzo(t, zzag);
                if (zzo != null) {
                    zzfd.zza(t, zzag, this.zzmz.zzj(zzo));
                }
            }
        }
        if (this.zzmu != null) {
            for (int i2 : this.zzmu) {
                this.zzmw.zza(t, (long) i2);
            }
        }
        this.zzmx.zzc(t);
        if (this.zzmo) {
            this.zzmy.zzc(t);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzmi.length; i += 4) {
                int zzag = zzag(i);
                long j = (long) (1048575 & zzag);
                int i2 = this.zzmi[i];
                switch ((zzag & 267386880) >>> 20) {
                    case 0:
                        if (zza(t2, i)) {
                            zzfd.zza(t, j, zzfd.zzn(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza(t2, i)) {
                            zzfd.zza((Object) t, j, zzfd.zzm(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb(t, i);
                        break;
                    case 3:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb(t, i);
                        break;
                    case 4:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb(t, i);
                        break;
                    case 5:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb(t, i);
                        break;
                    case 6:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb(t, i);
                        break;
                    case 7:
                        if (zza(t2, i)) {
                            zzfd.zza(t, j, zzfd.zzl(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb(t, i);
                        break;
                    case 9:
                    case 17:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb(t, i);
                        break;
                    case 11:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb(t, i);
                        break;
                    case 12:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb(t, i);
                        break;
                    case 13:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb(t, i);
                        break;
                    case 14:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb(t, i);
                        break;
                    case 15:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb(t, i);
                        break;
                    case 16:
                        if (!zza(t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb(t, i);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.zzmw.zza(t, t2, j);
                        break;
                    case 50:
                        zzeh.zza(this.zzmz, t, t2, j);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (!zza(t2, i2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb(t, i2, i);
                        break;
                    case 60:
                    case 68:
                        zzb(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!zza(t2, i2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb(t, i2, i);
                        break;
                }
            }
            if (!this.zzmq) {
                zzeh.zza(this.zzmx, t, t2);
                if (this.zzmo) {
                    zzeh.zza(this.zzmy, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x01d8, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:0x01e9, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x01fa, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x020b, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x020d, code lost:
        r2.putInt(r21, (long) r14, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x0211, code lost:
        r3 = (com.google.android.gms.internal.clearcut.zzbn.zzr(r3) + com.google.android.gms.internal.clearcut.zzbn.zzt(r5)) + r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:166:0x0331, code lost:
        if ((r5 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L_0x030a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:167:0x0334, code lost:
        r3 = com.google.android.gms.internal.clearcut.zzbn.zzb(r3, (java.lang.String) r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:218:0x0418, code lost:
        if (zza(r21, r14, r3) != false) goto L_0x06ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:226:0x0438, code lost:
        if (zza(r21, r14, r3) != false) goto L_0x06e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:228:0x0440, code lost:
        if (zza(r21, r14, r3) != false) goto L_0x06f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:236:0x0460, code lost:
        if (zza(r21, r14, r3) != false) goto L_0x0717;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:238:0x0468, code lost:
        if (zza(r21, r14, r3) != false) goto L_0x0726;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:242:0x0478, code lost:
        if ((r4 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L_0x071b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:244:0x0480, code lost:
        if (zza(r21, r14, r3) != false) goto L_0x074d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:271:0x0518, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:275:0x052a, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:279:0x053c, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:283:0x054e, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:287:0x0560, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:291:0x0572, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:295:0x0584, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:299:0x0596, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:303:0x05a7, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:307:0x05b8, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:311:0x05c9, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:315:0x05da, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:319:0x05eb, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:323:0x05fc, code lost:
        if (r20.zzmr != false) goto L_0x05fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:324:0x05fe, code lost:
        r2.putInt(r21, (long) r4, r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:325:0x0602, code lost:
        r4 = (com.google.android.gms.internal.clearcut.zzbn.zzr(r14) + com.google.android.gms.internal.clearcut.zzbn.zzt(r9)) + r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:343:0x06b8, code lost:
        if ((r12 & r16) != 0) goto L_0x06ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:344:0x06ba, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzbn.zzc(r14, (com.google.android.gms.internal.clearcut.zzdo) r2.getObject(r21, r9), zzad(r3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:354:0x06e5, code lost:
        if ((r12 & r16) != 0) goto L_0x06e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:355:0x06e7, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzbn.zzh(r14, 0L);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:357:0x06f0, code lost:
        if ((r12 & r16) != 0) goto L_0x06f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:358:0x06f2, code lost:
        r9 = com.google.android.gms.internal.clearcut.zzbn.zzk(r14, 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:369:0x0715, code lost:
        if ((r12 & r16) != 0) goto L_0x0717;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:370:0x0717, code lost:
        r4 = r2.getObject(r21, r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:371:0x071b, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzbn.zzc(r14, (com.google.android.gms.internal.clearcut.zzbb) r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:373:0x0724, code lost:
        if ((r12 & r16) != 0) goto L_0x0726;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:374:0x0726, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzeh.zzc(r14, r2.getObject(r21, r9), zzad(r3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:378:0x073e, code lost:
        if ((r4 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L_0x071b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:379:0x0741, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzbn.zzb(r14, (java.lang.String) r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00ab, code lost:
        if ((r5 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L_0x030a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:381:0x074b, code lost:
        if ((r12 & r16) != 0) goto L_0x074d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:382:0x074d, code lost:
        r4 = com.google.android.gms.internal.clearcut.zzbn.zzc(r14, true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0127, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0139, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x014b, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x015d, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x016f, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0181, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0193, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x01a5, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x01b6, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x01c7, code lost:
        if (r20.zzmr != false) goto L_0x020d;
     */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzm(T r21) {
        /*
        // Method dump skipped, instructions count: 2298
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zzm(java.lang.Object):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.google.android.gms.internal.clearcut.zzef] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v19, types: [com.google.android.gms.internal.clearcut.zzef] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x011a, code lost:
        continue;
     */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0108 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x011a A[SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzo(T r17) {
        /*
        // Method dump skipped, instructions count: 318
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zzo(java.lang.Object):boolean");
    }
}
