package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

final class zzxw {
    private static final Class<?> zzccr = zzyh();
    private static final zzym<?, ?> zzccs = zzv(false);
    private static final zzym<?, ?> zzcct = zzv(true);
    private static final zzym<?, ?> zzccu = new zzyo();

    public static void zzj(Class<?> cls) {
        if (!zzvx.class.isAssignableFrom(cls) && zzccr != null && !zzccr.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i, List<Double> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzg(i, list, z);
        }
    }

    public static void zzb(int i, List<Float> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzf(i, list, z);
        }
    }

    public static void zzc(int i, List<Long> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzc(i, list, z);
        }
    }

    public static void zzd(int i, List<Long> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzd(i, list, z);
        }
    }

    public static void zze(int i, List<Long> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzn(i, list, z);
        }
    }

    public static void zzf(int i, List<Long> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zze(i, list, z);
        }
    }

    public static void zzg(int i, List<Long> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzl(i, list, z);
        }
    }

    public static void zzh(int i, List<Integer> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zza(i, list, z);
        }
    }

    public static void zzi(int i, List<Integer> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzj(i, list, z);
        }
    }

    public static void zzj(int i, List<Integer> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzm(i, list, z);
        }
    }

    public static void zzk(int i, List<Integer> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzb(i, list, z);
        }
    }

    public static void zzl(int i, List<Integer> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzk(i, list, z);
        }
    }

    public static void zzm(int i, List<Integer> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzh(i, list, z);
        }
    }

    public static void zzn(int i, List<Boolean> list, zzzh zzzh, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzi(i, list, z);
        }
    }

    public static void zza(int i, List<String> list, zzzh zzzh) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zza(i, list);
        }
    }

    public static void zzb(int i, List<zzun> list, zzzh zzzh) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzb(i, list);
        }
    }

    public static void zza(int i, List<?> list, zzzh zzzh, zzxu zzxu) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zza(i, list, zzxu);
        }
    }

    public static void zzb(int i, List<?> list, zzzh zzzh, zzxu zzxu) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzh.zzb(i, list, zzxu);
        }
    }

    static int zzx(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbb(zzws.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbb(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzx(list) + (list.size() * zzve.zzbc(i));
    }

    static int zzy(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbc(zzws.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbc(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzve.zzbc(i));
    }

    static int zzz(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzws) {
            zzws zzws = (zzws) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbd(zzws.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbd(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzz(list) + (size * zzve.zzbc(i));
    }

    static int zzaa(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbi(zzvy.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbi(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzaa(list) + (size * zzve.zzbc(i));
    }

    static int zzab(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbd(zzvy.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbd(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzab(list) + (size * zzve.zzbc(i));
    }

    static int zzac(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbe(zzvy.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbe(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzac(list) + (size * zzve.zzbc(i));
    }

    static int zzad(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvy = (zzvy) list;
            i = 0;
            while (i2 < size) {
                i += zzve.zzbf(zzvy.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzve.zzbf(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzad(list) + (size * zzve.zzbc(i));
    }

    static int zzae(List<?> list) {
        return list.size() << 2;
    }

    static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzve.zzk(i, 0);
    }

    static int zzaf(List<?> list) {
        return list.size() << 3;
    }

    static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzve.zzg(i, 0L);
    }

    static int zzag(List<?> list) {
        return list.size();
    }

    static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzve.zzc(i, true);
    }

    static int zzc(int i, List<?> list) {
        int i2;
        int i3;
        int size = list.size();
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int zzbc = zzve.zzbc(i) * size;
        if (list instanceof zzwn) {
            zzwn zzwn = (zzwn) list;
            while (i4 < size) {
                Object zzbo = zzwn.zzbo(i4);
                if (zzbo instanceof zzun) {
                    i3 = zzve.zzb((zzun) zzbo);
                } else {
                    i3 = zzve.zzge((String) zzbo);
                }
                zzbc += i3;
                i4++;
            }
        } else {
            while (i4 < size) {
                Object obj = list.get(i4);
                if (obj instanceof zzun) {
                    i2 = zzve.zzb((zzun) obj);
                } else {
                    i2 = zzve.zzge((String) obj);
                }
                zzbc += i2;
                i4++;
            }
        }
        return zzbc;
    }

    static int zzc(int i, Object obj, zzxu zzxu) {
        if (obj instanceof zzwl) {
            return zzve.zza(i, (zzwl) obj);
        }
        return zzve.zzb(i, (zzxe) obj, zzxu);
    }

    static int zzc(int i, List<?> list, zzxu zzxu) {
        int i2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzbc = zzve.zzbc(i) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            if (obj instanceof zzwl) {
                i2 = zzve.zza((zzwl) obj);
            } else {
                i2 = zzve.zzb((zzxe) obj, zzxu);
            }
            zzbc += i2;
        }
        return zzbc;
    }

    static int zzd(int i, List<zzun> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzbc = size * zzve.zzbc(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzbc += zzve.zzb(list.get(i2));
        }
        return zzbc;
    }

    static int zzd(int i, List<zzxe> list, zzxu zzxu) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzve.zzc(i, list.get(i3), zzxu);
        }
        return i2;
    }

    public static zzym<?, ?> zzye() {
        return zzccs;
    }

    public static zzym<?, ?> zzyf() {
        return zzcct;
    }

    public static zzym<?, ?> zzyg() {
        return zzccu;
    }

    private static zzym<?, ?> zzv(boolean z) {
        try {
            Class<?> zzyi = zzyi();
            if (zzyi == null) {
                return null;
            }
            return (zzym) zzyi.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzyh() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzyi() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static <T> void zza(zzwz zzwz, T t, T t2, long j) {
        zzys.zza(t, j, zzwz.zzc(zzys.zzp(t, j), zzys.zzp(t2, j)));
    }

    static <T, FT extends zzvq<FT>> void zza(zzvl<FT> zzvl, T t, T t2) {
        zzvo<FT> zzw = zzvl.zzw(t2);
        if (!zzw.isEmpty()) {
            zzvl.zzx(t).zza(zzw);
        }
    }

    static <T, UT, UB> void zza(zzym<UT, UB> zzym, T t, T t2) {
        zzym.zzf(t, zzym.zzh(zzym.zzal(t), zzym.zzal(t2)));
    }

    static <UT, UB> UB zza(int i, List<Integer> list, zzwc zzwc, UB ub, zzym<UT, UB> zzym) {
        UB ub2;
        if (zzwc == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it2 = list.iterator();
            loop1:
            while (true) {
                ub2 = ub;
                while (it2.hasNext()) {
                    int intValue = it2.next().intValue();
                    if (!zzwc.zzb(intValue)) {
                        ub = (UB) zza(i, intValue, ub2, zzym);
                        it2.remove();
                    }
                }
                break loop1;
            }
        } else {
            int size = list.size();
            ub2 = ub;
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzwc.zzb(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub2 = (UB) zza(i, intValue2, ub2, zzym);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        }
        return ub2;
    }

    static <UT, UB> UB zza(int i, int i2, UB ub, zzym<UT, UB> zzym) {
        if (ub == null) {
            ub = zzym.zzyr();
        }
        zzym.zza(ub, i, (long) i2);
        return ub;
    }
}
