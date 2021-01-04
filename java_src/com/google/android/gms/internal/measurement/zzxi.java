package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

final class zzxi<T> implements zzxu<T> {
    private static final int[] zzcbs = new int[0];
    private static final Unsafe zzcbt = zzys.zzyx();
    private final int[] zzcbu;
    private final Object[] zzcbv;
    private final int zzcbw;
    private final int zzcbx;
    private final zzxe zzcby;
    private final boolean zzcbz;
    private final boolean zzcca;
    private final boolean zzccb;
    private final boolean zzccc;
    private final int[] zzccd;
    private final int zzcce;
    private final int zzccf;
    private final zzxl zzccg;
    private final zzwo zzcch;
    private final zzym<?, ?> zzcci;
    private final zzvl<?> zzccj;
    private final zzwz zzcck;

    private zzxi(int[] iArr, Object[] objArr, int i, int i2, zzxe zzxe, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzxl zzxl, zzwo zzwo, zzym<?, ?> zzym, zzvl<?> zzvl, zzwz zzwz) {
        this.zzcbu = iArr;
        this.zzcbv = objArr;
        this.zzcbw = i;
        this.zzcbx = i2;
        this.zzcca = zzxe instanceof zzvx;
        this.zzccb = z;
        this.zzcbz = zzvl != null && zzvl.zze(zzxe);
        this.zzccc = false;
        this.zzccd = iArr2;
        this.zzcce = i3;
        this.zzccf = i4;
        this.zzccg = zzxl;
        this.zzcch = zzwo;
        this.zzcci = zzym;
        this.zzccj = zzvl;
        this.zzcby = zzxe;
        this.zzcck = zzwz;
    }

    private static boolean zzbu(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:170:0x037f  */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x03ce  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> com.google.android.gms.internal.measurement.zzxi<T> zza(java.lang.Class<T> r37, com.google.android.gms.internal.measurement.zzxc r38, com.google.android.gms.internal.measurement.zzxl r39, com.google.android.gms.internal.measurement.zzwo r40, com.google.android.gms.internal.measurement.zzym<?, ?> r41, com.google.android.gms.internal.measurement.zzvl<?> r42, com.google.android.gms.internal.measurement.zzwz r43) {
        /*
        // Method dump skipped, instructions count: 1100
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzxc, com.google.android.gms.internal.measurement.zzxl, com.google.android.gms.internal.measurement.zzwo, com.google.android.gms.internal.measurement.zzym, com.google.android.gms.internal.measurement.zzvl, com.google.android.gms.internal.measurement.zzwz):com.google.android.gms.internal.measurement.zzxi");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final T newInstance() {
        return (T) this.zzccg.newInstance(this.zzcby);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (com.google.android.gms.internal.measurement.zzxw.zze(com.google.android.gms.internal.measurement.zzys.zzp(r10, r6), com.google.android.gms.internal.measurement.zzys.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x007e, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzl(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0090, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzk(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a4, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzl(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzk(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00c8, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzk(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00da, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzk(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00f0, code lost:
        if (com.google.android.gms.internal.measurement.zzxw.zze(com.google.android.gms.internal.measurement.zzys.zzp(r10, r6), com.google.android.gms.internal.measurement.zzys.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0106, code lost:
        if (com.google.android.gms.internal.measurement.zzxw.zze(com.google.android.gms.internal.measurement.zzys.zzp(r10, r6), com.google.android.gms.internal.measurement.zzys.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x011c, code lost:
        if (com.google.android.gms.internal.measurement.zzxw.zze(com.google.android.gms.internal.measurement.zzys.zzp(r10, r6), com.google.android.gms.internal.measurement.zzys.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzm(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzm(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0140, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzk(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0154, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzl(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0165, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzk(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0178, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzl(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x018b, code lost:
        if (com.google.android.gms.internal.measurement.zzys.zzl(r10, r6) == com.google.android.gms.internal.measurement.zzys.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzys.zzn(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzys.zzn(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzys.zzo(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzys.zzo(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (com.google.android.gms.internal.measurement.zzxw.zze(com.google.android.gms.internal.measurement.zzys.zzp(r10, r6), com.google.android.gms.internal.measurement.zzys.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(T r10, T r11) {
        /*
        // Method dump skipped, instructions count: 640
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int hashCode(T t) {
        int length = this.zzcbu.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int zzbs = zzbs(i2);
            int i3 = this.zzcbu[i2];
            long j = (long) (1048575 & zzbs);
            int i4 = 37;
            switch ((zzbs & 267386880) >>> 20) {
                case 0:
                    i = (i * 53) + zzvz.zzbi(Double.doubleToLongBits(zzys.zzo(t, j)));
                    break;
                case 1:
                    i = (i * 53) + Float.floatToIntBits(zzys.zzn(t, j));
                    break;
                case 2:
                    i = (i * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 3:
                    i = (i * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 4:
                    i = (i * 53) + zzys.zzk(t, j);
                    break;
                case 5:
                    i = (i * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 6:
                    i = (i * 53) + zzys.zzk(t, j);
                    break;
                case 7:
                    i = (i * 53) + zzvz.zzu(zzys.zzm(t, j));
                    break;
                case 8:
                    i = (i * 53) + ((String) zzys.zzp(t, j)).hashCode();
                    break;
                case 9:
                    Object zzp = zzys.zzp(t, j);
                    if (zzp != null) {
                        i4 = zzp.hashCode();
                    }
                    i = (i * 53) + i4;
                    break;
                case 10:
                    i = (i * 53) + zzys.zzp(t, j).hashCode();
                    break;
                case 11:
                    i = (i * 53) + zzys.zzk(t, j);
                    break;
                case 12:
                    i = (i * 53) + zzys.zzk(t, j);
                    break;
                case 13:
                    i = (i * 53) + zzys.zzk(t, j);
                    break;
                case 14:
                    i = (i * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 15:
                    i = (i * 53) + zzys.zzk(t, j);
                    break;
                case 16:
                    i = (i * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 17:
                    Object zzp2 = zzys.zzp(t, j);
                    if (zzp2 != null) {
                        i4 = zzp2.hashCode();
                    }
                    i = (i * 53) + i4;
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
                    i = (i * 53) + zzys.zzp(t, j).hashCode();
                    break;
                case 50:
                    i = (i * 53) + zzys.zzp(t, j).hashCode();
                    break;
                case 51:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzbi(Double.doubleToLongBits(zzf(t, j)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + Float.floatToIntBits(zzg(t, j));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzbi(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzbi(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzbi(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzu(zzj(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + ((String) zzys.zzp(t, j)).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzys.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzys.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzbi(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzh(t, j);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzvz.zzbi(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzys.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i * 53) + this.zzcci.zzal(t).hashCode();
        return this.zzcbz ? (hashCode * 53) + this.zzccj.zzw(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzd(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzcbu.length; i += 3) {
                int zzbs = zzbs(i);
                long j = (long) (1048575 & zzbs);
                int i2 = this.zzcbu[i];
                switch ((zzbs & 267386880) >>> 20) {
                    case 0:
                        if (zzb(t2, i)) {
                            zzys.zza(t, j, zzys.zzo(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzb(t2, i)) {
                            zzys.zza((Object) t, j, zzys.zzn(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzb(t2, i)) {
                            zzys.zza((Object) t, j, zzys.zzl(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzb(t2, i)) {
                            zzys.zza((Object) t, j, zzys.zzl(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzb(t2, i)) {
                            zzys.zzb(t, j, zzys.zzk(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzb(t2, i)) {
                            zzys.zza((Object) t, j, zzys.zzl(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzb(t2, i)) {
                            zzys.zzb(t, j, zzys.zzk(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzb(t2, i)) {
                            zzys.zza(t, j, zzys.zzm(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzb(t2, i)) {
                            zzys.zza(t, j, zzys.zzp(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (zzb(t2, i)) {
                            zzys.zza(t, j, zzys.zzp(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzb(t2, i)) {
                            zzys.zzb(t, j, zzys.zzk(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzb(t2, i)) {
                            zzys.zzb(t, j, zzys.zzk(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzb(t2, i)) {
                            zzys.zzb(t, j, zzys.zzk(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzb(t2, i)) {
                            zzys.zza((Object) t, j, zzys.zzl(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzb(t2, i)) {
                            zzys.zzb(t, j, zzys.zzk(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzb(t2, i)) {
                            zzys.zza((Object) t, j, zzys.zzl(t2, j));
                            zzc(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        zza(t, t2, i);
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
                        this.zzcch.zza(t, t2, j);
                        break;
                    case 50:
                        zzxw.zza(this.zzcck, t, t2, j);
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
                        if (zza(t2, i2, i)) {
                            zzys.zza(t, j, zzys.zzp(t2, j));
                            zzb(t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        zzb(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (zza(t2, i2, i)) {
                            zzys.zza(t, j, zzys.zzp(t2, j));
                            zzb(t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        zzb(t, t2, i);
                        break;
                }
            }
            if (!this.zzccb) {
                zzxw.zza(this.zzcci, t, t2);
                if (this.zzcbz) {
                    zzxw.zza(this.zzccj, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    private final void zza(T t, T t2, int i) {
        long zzbs = (long) (zzbs(i) & 1048575);
        if (zzb(t2, i)) {
            Object zzp = zzys.zzp(t, zzbs);
            Object zzp2 = zzys.zzp(t2, zzbs);
            if (zzp != null && zzp2 != null) {
                zzys.zza(t, zzbs, zzvz.zzb(zzp, zzp2));
                zzc(t, i);
            } else if (zzp2 != null) {
                zzys.zza(t, zzbs, zzp2);
                zzc(t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int zzbs = zzbs(i);
        int i2 = this.zzcbu[i];
        long j = (long) (zzbs & 1048575);
        if (zza(t2, i2, i)) {
            Object zzp = zzys.zzp(t, j);
            Object zzp2 = zzys.zzp(t2, j);
            if (zzp != null && zzp2 != null) {
                zzys.zza(t, j, zzvz.zzb(zzp, zzp2));
                zzb(t, i2, i);
            } else if (zzp2 != null) {
                zzys.zza(t, j, zzp2);
                zzb(t, i2, i);
            }
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int zzai(T t) {
        int i;
        int i2;
        long j;
        int i3 = 267386880;
        if (this.zzccb) {
            Unsafe unsafe = zzcbt;
            int i4 = 0;
            int i5 = 0;
            while (i4 < this.zzcbu.length) {
                int zzbs = zzbs(i4);
                int i6 = (zzbs & i3) >>> 20;
                int i7 = this.zzcbu[i4];
                long j2 = (long) (zzbs & 1048575);
                int i8 = (i6 < zzvr.DOUBLE_LIST_PACKED.id() || i6 > zzvr.SINT64_LIST_PACKED.id()) ? 0 : this.zzcbu[i4 + 2] & 1048575;
                switch (i6) {
                    case 0:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzb(i7, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzb(i7, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzd(i7, zzys.zzl(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzb(t, i4)) {
                            i5 += zzve.zze(i7, zzys.zzl(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzh(i7, zzys.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzg(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzk(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzc(i7, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzb(t, i4)) {
                            Object zzp = zzys.zzp(t, j2);
                            if (zzp instanceof zzun) {
                                i5 += zzve.zzc(i7, (zzun) zzp);
                                break;
                            } else {
                                i5 += zzve.zzc(i7, (String) zzp);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        if (zzb(t, i4)) {
                            i5 += zzxw.zzc(i7, zzys.zzp(t, j2), zzbp(i4));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzc(i7, (zzun) zzys.zzp(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzi(i7, zzys.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzm(i7, zzys.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzl(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzh(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzj(i7, zzys.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzf(i7, zzys.zzl(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzb(t, i4)) {
                            i5 += zzve.zzc(i7, (zzxe) zzys.zzp(t, j2), zzbp(i4));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i5 += zzxw.zzw(i7, zze(t, j2), false);
                        break;
                    case 19:
                        i5 += zzxw.zzv(i7, zze(t, j2), false);
                        break;
                    case 20:
                        i5 += zzxw.zzo(i7, zze(t, j2), false);
                        break;
                    case 21:
                        i5 += zzxw.zzp(i7, zze(t, j2), false);
                        break;
                    case 22:
                        i5 += zzxw.zzs(i7, zze(t, j2), false);
                        break;
                    case 23:
                        i5 += zzxw.zzw(i7, zze(t, j2), false);
                        break;
                    case 24:
                        i5 += zzxw.zzv(i7, zze(t, j2), false);
                        break;
                    case 25:
                        i5 += zzxw.zzx(i7, zze(t, j2), false);
                        break;
                    case 26:
                        i5 += zzxw.zzc(i7, zze(t, j2));
                        break;
                    case 27:
                        i5 += zzxw.zzc(i7, (List<?>) zze(t, j2), zzbp(i4));
                        break;
                    case 28:
                        i5 += zzxw.zzd(i7, zze(t, j2));
                        break;
                    case 29:
                        i5 += zzxw.zzt(i7, zze(t, j2), false);
                        break;
                    case 30:
                        i5 += zzxw.zzr(i7, zze(t, j2), false);
                        break;
                    case 31:
                        i5 += zzxw.zzv(i7, zze(t, j2), false);
                        break;
                    case 32:
                        i5 += zzxw.zzw(i7, zze(t, j2), false);
                        break;
                    case 33:
                        i5 += zzxw.zzu(i7, zze(t, j2), false);
                        break;
                    case 34:
                        i5 += zzxw.zzq(i7, zze(t, j2), false);
                        break;
                    case 35:
                        int zzaf = zzxw.zzaf((List) unsafe.getObject(t, j2));
                        if (zzaf <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzaf);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzaf) + zzaf;
                            break;
                        }
                    case 36:
                        int zzae = zzxw.zzae((List) unsafe.getObject(t, j2));
                        if (zzae <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzae);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzae) + zzae;
                            break;
                        }
                    case 37:
                        int zzx = zzxw.zzx((List) unsafe.getObject(t, j2));
                        if (zzx <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzx);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzx) + zzx;
                            break;
                        }
                    case 38:
                        int zzy = zzxw.zzy((List) unsafe.getObject(t, j2));
                        if (zzy <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzy);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzy) + zzy;
                            break;
                        }
                    case 39:
                        int zzab = zzxw.zzab((List) unsafe.getObject(t, j2));
                        if (zzab <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzab);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzab) + zzab;
                            break;
                        }
                    case 40:
                        int zzaf2 = zzxw.zzaf((List) unsafe.getObject(t, j2));
                        if (zzaf2 <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzaf2);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzaf2) + zzaf2;
                            break;
                        }
                    case 41:
                        int zzae2 = zzxw.zzae((List) unsafe.getObject(t, j2));
                        if (zzae2 <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzae2);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzae2) + zzae2;
                            break;
                        }
                    case 42:
                        int zzag = zzxw.zzag((List) unsafe.getObject(t, j2));
                        if (zzag <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzag);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzag) + zzag;
                            break;
                        }
                    case 43:
                        int zzac = zzxw.zzac((List) unsafe.getObject(t, j2));
                        if (zzac <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzac);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzac) + zzac;
                            break;
                        }
                    case 44:
                        int zzaa = zzxw.zzaa((List) unsafe.getObject(t, j2));
                        if (zzaa <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzaa);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzaa) + zzaa;
                            break;
                        }
                    case 45:
                        int zzae3 = zzxw.zzae((List) unsafe.getObject(t, j2));
                        if (zzae3 <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzae3);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzae3) + zzae3;
                            break;
                        }
                    case 46:
                        int zzaf3 = zzxw.zzaf((List) unsafe.getObject(t, j2));
                        if (zzaf3 <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzaf3);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzaf3) + zzaf3;
                            break;
                        }
                    case 47:
                        int zzad = zzxw.zzad((List) unsafe.getObject(t, j2));
                        if (zzad <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzad);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzad) + zzad;
                            break;
                        }
                    case 48:
                        int zzz = zzxw.zzz((List) unsafe.getObject(t, j2));
                        if (zzz <= 0) {
                            break;
                        } else {
                            if (this.zzccc) {
                                unsafe.putInt(t, (long) i8, zzz);
                            }
                            i5 += zzve.zzbc(i7) + zzve.zzbe(zzz) + zzz;
                            break;
                        }
                    case 49:
                        i5 += zzxw.zzd(i7, zze(t, j2), zzbp(i4));
                        break;
                    case 50:
                        i5 += this.zzcck.zzb(i7, zzys.zzp(t, j2), zzbq(i4));
                        break;
                    case 51:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzb(i7, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzb(i7, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzd(i7, zzi(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zze(i7, zzi(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzh(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzg(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzk(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzc(i7, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zza(t, i7, i4)) {
                            Object zzp2 = zzys.zzp(t, j2);
                            if (zzp2 instanceof zzun) {
                                i5 += zzve.zzc(i7, (zzun) zzp2);
                                break;
                            } else {
                                i5 += zzve.zzc(i7, (String) zzp2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        if (zza(t, i7, i4)) {
                            i5 += zzxw.zzc(i7, zzys.zzp(t, j2), zzbp(i4));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzc(i7, (zzun) zzys.zzp(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzi(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzm(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzl(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzh(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzj(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzf(i7, zzi(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zza(t, i7, i4)) {
                            i5 += zzve.zzc(i7, (zzxe) zzys.zzp(t, j2), zzbp(i4));
                            break;
                        } else {
                            break;
                        }
                }
                i4 += 3;
                i3 = 267386880;
            }
            return i5 + zza((zzym) this.zzcci, (Object) t);
        }
        Unsafe unsafe2 = zzcbt;
        int i9 = 0;
        int i10 = -1;
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzcbu.length; i12 += 3) {
            int zzbs2 = zzbs(i12);
            int i13 = this.zzcbu[i12];
            int i14 = (zzbs2 & 267386880) >>> 20;
            if (i14 <= 17) {
                i2 = this.zzcbu[i12 + 2];
                int i15 = i2 & 1048575;
                i = 1 << (i2 >>> 20);
                if (i15 != i10) {
                    i11 = unsafe2.getInt(t, (long) i15);
                    i10 = i15;
                }
            } else {
                i2 = (!this.zzccc || i14 < zzvr.DOUBLE_LIST_PACKED.id() || i14 > zzvr.SINT64_LIST_PACKED.id()) ? 0 : this.zzcbu[i12 + 2] & 1048575;
                i = 0;
            }
            long j3 = (long) (zzbs2 & 1048575);
            switch (i14) {
                case 0:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzb(i13, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzb(i13, 0.0f);
                        break;
                    }
                case 2:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzd(i13, unsafe2.getLong(t, j3));
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzve.zze(i13, unsafe2.getLong(t, j3));
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzh(i13, unsafe2.getInt(t, j3));
                    }
                    break;
                case 5:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzg(i13, 0L);
                        j = 0;
                        break;
                    }
                    j = 0;
                    break;
                case 6:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzk(i13, 0);
                        j = 0;
                        break;
                    }
                    j = 0;
                case 7:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzc(i13, true);
                    }
                    j = 0;
                    break;
                case 8:
                    if ((i11 & i) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        i9 = object instanceof zzun ? i9 + zzve.zzc(i13, (zzun) object) : i9 + zzve.zzc(i13, (String) object);
                    }
                    j = 0;
                    break;
                case 9:
                    if ((i11 & i) != 0) {
                        i9 += zzxw.zzc(i13, unsafe2.getObject(t, j3), zzbp(i12));
                    }
                    j = 0;
                    break;
                case 10:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzc(i13, (zzun) unsafe2.getObject(t, j3));
                    }
                    j = 0;
                    break;
                case 11:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzi(i13, unsafe2.getInt(t, j3));
                    }
                    j = 0;
                    break;
                case 12:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzm(i13, unsafe2.getInt(t, j3));
                    }
                    j = 0;
                    break;
                case 13:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzl(i13, 0);
                    }
                    j = 0;
                    break;
                case 14:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzh(i13, 0L);
                    }
                    j = 0;
                    break;
                case 15:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzj(i13, unsafe2.getInt(t, j3));
                    }
                    j = 0;
                    break;
                case 16:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzf(i13, unsafe2.getLong(t, j3));
                    }
                    j = 0;
                    break;
                case 17:
                    if ((i11 & i) != 0) {
                        i9 += zzve.zzc(i13, (zzxe) unsafe2.getObject(t, j3), zzbp(i12));
                    }
                    j = 0;
                    break;
                case 18:
                    i9 += zzxw.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 19:
                    i9 += zzxw.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 20:
                    i9 += zzxw.zzo(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 21:
                    i9 += zzxw.zzp(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 22:
                    i9 += zzxw.zzs(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 23:
                    i9 += zzxw.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 24:
                    i9 += zzxw.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 25:
                    i9 += zzxw.zzx(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 26:
                    i9 += zzxw.zzc(i13, (List) unsafe2.getObject(t, j3));
                    j = 0;
                    break;
                case 27:
                    i9 += zzxw.zzc(i13, (List<?>) ((List) unsafe2.getObject(t, j3)), zzbp(i12));
                    j = 0;
                    break;
                case 28:
                    i9 += zzxw.zzd(i13, (List) unsafe2.getObject(t, j3));
                    j = 0;
                    break;
                case 29:
                    i9 += zzxw.zzt(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 30:
                    i9 += zzxw.zzr(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 31:
                    i9 += zzxw.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 32:
                    i9 += zzxw.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 33:
                    i9 += zzxw.zzu(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 34:
                    i9 += zzxw.zzq(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 35:
                    int zzaf4 = zzxw.zzaf((List) unsafe2.getObject(t, j3));
                    if (zzaf4 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzaf4);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzaf4) + zzaf4;
                    }
                    j = 0;
                    break;
                case 36:
                    int zzae4 = zzxw.zzae((List) unsafe2.getObject(t, j3));
                    if (zzae4 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzae4);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzae4) + zzae4;
                    }
                    j = 0;
                    break;
                case 37:
                    int zzx2 = zzxw.zzx((List) unsafe2.getObject(t, j3));
                    if (zzx2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzx2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzx2) + zzx2;
                    }
                    j = 0;
                    break;
                case 38:
                    int zzy2 = zzxw.zzy((List) unsafe2.getObject(t, j3));
                    if (zzy2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzy2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzy2) + zzy2;
                    }
                    j = 0;
                    break;
                case 39:
                    int zzab2 = zzxw.zzab((List) unsafe2.getObject(t, j3));
                    if (zzab2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzab2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzab2) + zzab2;
                    }
                    j = 0;
                    break;
                case 40:
                    int zzaf5 = zzxw.zzaf((List) unsafe2.getObject(t, j3));
                    if (zzaf5 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzaf5);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzaf5) + zzaf5;
                    }
                    j = 0;
                    break;
                case 41:
                    int zzae5 = zzxw.zzae((List) unsafe2.getObject(t, j3));
                    if (zzae5 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzae5);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzae5) + zzae5;
                    }
                    j = 0;
                    break;
                case 42:
                    int zzag2 = zzxw.zzag((List) unsafe2.getObject(t, j3));
                    if (zzag2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzag2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzag2) + zzag2;
                    }
                    j = 0;
                    break;
                case 43:
                    int zzac2 = zzxw.zzac((List) unsafe2.getObject(t, j3));
                    if (zzac2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzac2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzac2) + zzac2;
                    }
                    j = 0;
                    break;
                case 44:
                    int zzaa2 = zzxw.zzaa((List) unsafe2.getObject(t, j3));
                    if (zzaa2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzaa2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzaa2) + zzaa2;
                    }
                    j = 0;
                    break;
                case 45:
                    int zzae6 = zzxw.zzae((List) unsafe2.getObject(t, j3));
                    if (zzae6 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzae6);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzae6) + zzae6;
                    }
                    j = 0;
                    break;
                case 46:
                    int zzaf6 = zzxw.zzaf((List) unsafe2.getObject(t, j3));
                    if (zzaf6 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzaf6);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzaf6) + zzaf6;
                    }
                    j = 0;
                    break;
                case 47:
                    int zzad2 = zzxw.zzad((List) unsafe2.getObject(t, j3));
                    if (zzad2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzad2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzad2) + zzad2;
                    }
                    j = 0;
                    break;
                case 48:
                    int zzz2 = zzxw.zzz((List) unsafe2.getObject(t, j3));
                    if (zzz2 > 0) {
                        if (this.zzccc) {
                            unsafe2.putInt(t, (long) i2, zzz2);
                        }
                        i9 += zzve.zzbc(i13) + zzve.zzbe(zzz2) + zzz2;
                    }
                    j = 0;
                    break;
                case 49:
                    i9 += zzxw.zzd(i13, (List) unsafe2.getObject(t, j3), zzbp(i12));
                    j = 0;
                    break;
                case 50:
                    i9 += this.zzcck.zzb(i13, unsafe2.getObject(t, j3), zzbq(i12));
                    j = 0;
                    break;
                case 51:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzb(i13, 0.0d);
                    }
                    j = 0;
                    break;
                case 52:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzb(i13, 0.0f);
                    }
                    j = 0;
                    break;
                case 53:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzd(i13, zzi(t, j3));
                    }
                    j = 0;
                    break;
                case 54:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zze(i13, zzi(t, j3));
                    }
                    j = 0;
                    break;
                case 55:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzh(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 56:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzg(i13, 0L);
                    }
                    j = 0;
                    break;
                case 57:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzk(i13, 0);
                    }
                    j = 0;
                    break;
                case 58:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzc(i13, true);
                    }
                    j = 0;
                    break;
                case 59:
                    if (zza(t, i13, i12)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        i9 = object2 instanceof zzun ? i9 + zzve.zzc(i13, (zzun) object2) : i9 + zzve.zzc(i13, (String) object2);
                    }
                    j = 0;
                    break;
                case 60:
                    if (zza(t, i13, i12)) {
                        i9 += zzxw.zzc(i13, unsafe2.getObject(t, j3), zzbp(i12));
                    }
                    j = 0;
                    break;
                case 61:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzc(i13, (zzun) unsafe2.getObject(t, j3));
                    }
                    j = 0;
                    break;
                case 62:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzi(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 63:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzm(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 64:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzl(i13, 0);
                    }
                    j = 0;
                    break;
                case 65:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzh(i13, 0L);
                    }
                    j = 0;
                    break;
                case 66:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzj(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 67:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzf(i13, zzi(t, j3));
                    }
                    j = 0;
                    break;
                case 68:
                    if (zza(t, i13, i12)) {
                        i9 += zzve.zzc(i13, (zzxe) unsafe2.getObject(t, j3), zzbp(i12));
                    }
                    j = 0;
                    break;
                default:
                    j = 0;
                    break;
            }
        }
        int zza = i9 + zza((zzym) this.zzcci, (Object) t);
        return this.zzcbz ? zza + this.zzccj.zzw(t).zzwe() : zza;
    }

    private static <UT, UB> int zza(zzym<UT, UB> zzym, T t) {
        return zzym.zzai(zzym.zzal(t));
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzys.zzp(obj, j);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0511  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x054f  */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x0a27  */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r14, com.google.android.gms.internal.measurement.zzzh r15) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 2914
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzzh):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:172:0x0527  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzb(T r20, com.google.android.gms.internal.measurement.zzzh r21) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1488
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zzb(java.lang.Object, com.google.android.gms.internal.measurement.zzzh):void");
    }

    private final <K, V> void zza(zzzh zzzh, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzzh.zza(i, this.zzcck.zzah(zzbq(i2)), this.zzcck.zzad(obj));
        }
    }

    private static <UT, UB> void zza(zzym<UT, UB> zzym, T t, zzzh zzzh) throws IOException {
        zzym.zza(zzym.zzal(t), zzzh);
    }

    /*  JADX ERROR: StackOverflowError in pass: MarkFinallyVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.instructions.IndexInsnNode.isSame(IndexInsnNode.java:36)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.sameInsns(MarkFinallyVisitor.java:451)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.compareBlocks(MarkFinallyVisitor.java:436)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:408)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:411)
        */
    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zza(T r18, com.google.android.gms.internal.measurement.zzxt r19, com.google.android.gms.internal.measurement.zzvk r20) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1670
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzxt, com.google.android.gms.internal.measurement.zzvk):void");
    }

    private final zzxu zzbp(int i) {
        int i2 = (i / 3) << 1;
        zzxu zzxu = (zzxu) this.zzcbv[i2];
        if (zzxu != null) {
            return zzxu;
        }
        zzxu<T> zzi = zzxq.zzya().zzi((Class) this.zzcbv[i2 + 1]);
        this.zzcbv[i2] = zzi;
        return zzi;
    }

    private final Object zzbq(int i) {
        return this.zzcbv[(i / 3) << 1];
    }

    private final zzwc zzbr(int i) {
        return (zzwc) this.zzcbv[((i / 3) << 1) + 1];
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzy(T t) {
        for (int i = this.zzcce; i < this.zzccf; i++) {
            long zzbs = (long) (zzbs(this.zzccd[i]) & 1048575);
            Object zzp = zzys.zzp(t, zzbs);
            if (zzp != null) {
                zzys.zza(t, zzbs, this.zzcck.zzaf(zzp));
            }
        }
        int length = this.zzccd.length;
        for (int i2 = this.zzccf; i2 < length; i2++) {
            this.zzcch.zzb(t, (long) this.zzccd[i2]);
        }
        this.zzcci.zzy(t);
        if (this.zzcbz) {
            this.zzccj.zzy(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzym<UT, UB> zzym) {
        zzwc zzbr;
        int i2 = this.zzcbu[i];
        Object zzp = zzys.zzp(obj, (long) (zzbs(i) & 1048575));
        return (zzp == null || (zzbr = zzbr(i)) == null) ? ub : (UB) zza(i, i2, (Map<K, V>) this.zzcck.zzac(zzp), zzbr, ub, zzym);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzwc zzwc, UB ub, zzym<UT, UB> zzym) {
        zzwx<?, ?> zzah = this.zzcck.zzah(zzbq(i));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!zzwc.zzb(next.getValue().intValue())) {
                if (ub == null) {
                    ub = zzym.zzyr();
                }
                zzuv zzan = zzun.zzan(zzww.zza(zzah, next.getKey(), next.getValue()));
                try {
                    zzww.zza(zzan.zzup(), zzah, next.getKey(), next.getValue());
                    zzym.zza(ub, i2, zzan.zzuo());
                    it2.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.measurement.zzxu] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.measurement.zzxu] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0104, code lost:
        continue;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzaj(T r14) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zzaj(java.lang.Object):boolean");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.measurement.zzxu */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzxu zzxu) {
        return zzxu.zzaj(zzys.zzp(obj, (long) (i & 1048575)));
    }

    private static void zza(int i, Object obj, zzzh zzzh) throws IOException {
        if (obj instanceof String) {
            zzzh.zzb(i, (String) obj);
        } else {
            zzzh.zza(i, (zzun) obj);
        }
    }

    private final void zza(Object obj, int i, zzxt zzxt) throws IOException {
        if (zzbu(i)) {
            zzys.zza(obj, (long) (i & 1048575), zzxt.zzux());
        } else if (this.zzcca) {
            zzys.zza(obj, (long) (i & 1048575), zzxt.readString());
        } else {
            zzys.zza(obj, (long) (i & 1048575), zzxt.zzuy());
        }
    }

    private final int zzbs(int i) {
        return this.zzcbu[i + 1];
    }

    private final int zzbt(int i) {
        return this.zzcbu[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzys.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzys.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzys.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzys.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzys.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzb(t, i) == zzb(t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzccb) {
            return zzb(t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zzb(T t, int i) {
        if (this.zzccb) {
            int zzbs = zzbs(i);
            long j = (long) (zzbs & 1048575);
            switch ((zzbs & 267386880) >>> 20) {
                case 0:
                    return zzys.zzo(t, j) != 0.0d;
                case 1:
                    return zzys.zzn(t, j) != 0.0f;
                case 2:
                    return zzys.zzl(t, j) != 0;
                case 3:
                    return zzys.zzl(t, j) != 0;
                case 4:
                    return zzys.zzk(t, j) != 0;
                case 5:
                    return zzys.zzl(t, j) != 0;
                case 6:
                    return zzys.zzk(t, j) != 0;
                case 7:
                    return zzys.zzm(t, j);
                case 8:
                    Object zzp = zzys.zzp(t, j);
                    if (zzp instanceof String) {
                        return !((String) zzp).isEmpty();
                    }
                    if (zzp instanceof zzun) {
                        return !zzun.zzbuu.equals(zzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzys.zzp(t, j) != null;
                case 10:
                    return !zzun.zzbuu.equals(zzys.zzp(t, j));
                case 11:
                    return zzys.zzk(t, j) != 0;
                case 12:
                    return zzys.zzk(t, j) != 0;
                case 13:
                    return zzys.zzk(t, j) != 0;
                case 14:
                    return zzys.zzl(t, j) != 0;
                case 15:
                    return zzys.zzk(t, j) != 0;
                case 16:
                    return zzys.zzl(t, j) != 0;
                case 17:
                    return zzys.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int zzbt = zzbt(i);
            return (zzys.zzk(t, (long) (zzbt & 1048575)) & (1 << (zzbt >>> 20))) != 0;
        }
    }

    private final void zzc(T t, int i) {
        if (!this.zzccb) {
            int zzbt = zzbt(i);
            long j = (long) (zzbt & 1048575);
            zzys.zzb(t, j, zzys.zzk(t, j) | (1 << (zzbt >>> 20)));
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzys.zzk(t, (long) (zzbt(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzys.zzb(t, (long) (zzbt(i2) & 1048575), i);
    }
}
