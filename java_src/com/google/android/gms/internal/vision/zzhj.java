package com.google.android.gms.internal.vision;

import io.reactivex.internal.util.ListAddBiConsumer;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

final class zzhj<T> implements zzhw<T> {
    private static final int[] zzzb = new int[0];
    private static final Unsafe zzzc = zziu.zzhj();
    private final int[] zzzd;
    private final Object[] zzze;
    private final int zzzf;
    private final int zzzg;
    private final zzhf zzzh;
    private final boolean zzzi;
    private final boolean zzzj;
    private final boolean zzzk;
    private final boolean zzzl;
    private final int[] zzzm;
    private final int zzzn;
    private final int zzzo;
    private final zzhn zzzp;
    private final zzgp zzzq;
    private final zzio<?, ?> zzzr;
    private final zzfl<?> zzzs;
    private final zzha zzzt;

    private zzhj(int[] iArr, Object[] objArr, int i, int i2, zzhf zzhf, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzhn zzhn, zzgp zzgp, zzio<?, ?> zzio, zzfl<?> zzfl, zzha zzha) {
        this.zzzd = iArr;
        this.zzze = objArr;
        this.zzzf = i;
        this.zzzg = i2;
        this.zzzj = zzhf instanceof zzfy;
        this.zzzk = z;
        this.zzzi = zzfl != null && zzfl.zze(zzhf);
        this.zzzl = false;
        this.zzzm = iArr2;
        this.zzzn = i3;
        this.zzzo = i4;
        this.zzzp = zzhn;
        this.zzzq = zzgp;
        this.zzzr = zzio;
        this.zzzs = zzfl;
        this.zzzh = zzhf;
        this.zzzt = zzha;
    }

    private static boolean zzbm(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:170:0x037f  */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x03ce  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> com.google.android.gms.internal.vision.zzhj<T> zza(java.lang.Class<T> r37, com.google.android.gms.internal.vision.zzhd r38, com.google.android.gms.internal.vision.zzhn r39, com.google.android.gms.internal.vision.zzgp r40, com.google.android.gms.internal.vision.zzio<?, ?> r41, com.google.android.gms.internal.vision.zzfl<?> r42, com.google.android.gms.internal.vision.zzha r43) {
        /*
        // Method dump skipped, instructions count: 1100
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zza(java.lang.Class, com.google.android.gms.internal.vision.zzhd, com.google.android.gms.internal.vision.zzhn, com.google.android.gms.internal.vision.zzgp, com.google.android.gms.internal.vision.zzio, com.google.android.gms.internal.vision.zzfl, com.google.android.gms.internal.vision.zzha):com.google.android.gms.internal.vision.zzhj");
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

    @Override // com.google.android.gms.internal.vision.zzhw
    public final T newInstance() {
        return (T) this.zzzp.newInstance(this.zzzh);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (com.google.android.gms.internal.vision.zzhy.zzd(com.google.android.gms.internal.vision.zziu.zzp(r10, r6), com.google.android.gms.internal.vision.zziu.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x007e, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzl(r10, r6) == com.google.android.gms.internal.vision.zziu.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0090, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzk(r10, r6) == com.google.android.gms.internal.vision.zziu.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a4, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzl(r10, r6) == com.google.android.gms.internal.vision.zziu.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzk(r10, r6) == com.google.android.gms.internal.vision.zziu.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00c8, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzk(r10, r6) == com.google.android.gms.internal.vision.zziu.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00da, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzk(r10, r6) == com.google.android.gms.internal.vision.zziu.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00f0, code lost:
        if (com.google.android.gms.internal.vision.zzhy.zzd(com.google.android.gms.internal.vision.zziu.zzp(r10, r6), com.google.android.gms.internal.vision.zziu.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0106, code lost:
        if (com.google.android.gms.internal.vision.zzhy.zzd(com.google.android.gms.internal.vision.zziu.zzp(r10, r6), com.google.android.gms.internal.vision.zziu.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x011c, code lost:
        if (com.google.android.gms.internal.vision.zzhy.zzd(com.google.android.gms.internal.vision.zziu.zzp(r10, r6), com.google.android.gms.internal.vision.zziu.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzm(r10, r6) == com.google.android.gms.internal.vision.zziu.zzm(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0140, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzk(r10, r6) == com.google.android.gms.internal.vision.zziu.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0154, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzl(r10, r6) == com.google.android.gms.internal.vision.zziu.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0165, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzk(r10, r6) == com.google.android.gms.internal.vision.zziu.zzk(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0178, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzl(r10, r6) == com.google.android.gms.internal.vision.zziu.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x018b, code lost:
        if (com.google.android.gms.internal.vision.zziu.zzl(r10, r6) == com.google.android.gms.internal.vision.zziu.zzl(r11, r6)) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.vision.zziu.zzn(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.vision.zziu.zzn(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.vision.zziu.zzo(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.vision.zziu.zzo(r11, r6))) goto L_0x01c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (com.google.android.gms.internal.vision.zzhy.zzd(com.google.android.gms.internal.vision.zziu.zzp(r10, r6), com.google.android.gms.internal.vision.zziu.zzp(r11, r6)) != false) goto L_0x01c2;
     */
    @Override // com.google.android.gms.internal.vision.zzhw
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(T r10, T r11) {
        /*
        // Method dump skipped, instructions count: 640
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final int hashCode(T t) {
        int length = this.zzzd.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int zzbk = zzbk(i2);
            int i3 = this.zzzd[i2];
            long j = (long) (1048575 & zzbk);
            int i4 = 37;
            switch ((zzbk & 267386880) >>> 20) {
                case 0:
                    i = (i * 53) + zzga.zzo(Double.doubleToLongBits(zziu.zzo(t, j)));
                    break;
                case 1:
                    i = (i * 53) + Float.floatToIntBits(zziu.zzn(t, j));
                    break;
                case 2:
                    i = (i * 53) + zzga.zzo(zziu.zzl(t, j));
                    break;
                case 3:
                    i = (i * 53) + zzga.zzo(zziu.zzl(t, j));
                    break;
                case 4:
                    i = (i * 53) + zziu.zzk(t, j);
                    break;
                case 5:
                    i = (i * 53) + zzga.zzo(zziu.zzl(t, j));
                    break;
                case 6:
                    i = (i * 53) + zziu.zzk(t, j);
                    break;
                case 7:
                    i = (i * 53) + zzga.zzj(zziu.zzm(t, j));
                    break;
                case 8:
                    i = (i * 53) + ((String) zziu.zzp(t, j)).hashCode();
                    break;
                case 9:
                    Object zzp = zziu.zzp(t, j);
                    if (zzp != null) {
                        i4 = zzp.hashCode();
                    }
                    i = (i * 53) + i4;
                    break;
                case 10:
                    i = (i * 53) + zziu.zzp(t, j).hashCode();
                    break;
                case 11:
                    i = (i * 53) + zziu.zzk(t, j);
                    break;
                case 12:
                    i = (i * 53) + zziu.zzk(t, j);
                    break;
                case 13:
                    i = (i * 53) + zziu.zzk(t, j);
                    break;
                case 14:
                    i = (i * 53) + zzga.zzo(zziu.zzl(t, j));
                    break;
                case 15:
                    i = (i * 53) + zziu.zzk(t, j);
                    break;
                case 16:
                    i = (i * 53) + zzga.zzo(zziu.zzl(t, j));
                    break;
                case 17:
                    Object zzp2 = zziu.zzp(t, j);
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
                    i = (i * 53) + zziu.zzp(t, j).hashCode();
                    break;
                case 50:
                    i = (i * 53) + zziu.zzp(t, j).hashCode();
                    break;
                case 51:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzga.zzo(Double.doubleToLongBits(zzf(t, j)));
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
                        i = (i * 53) + zzga.zzo(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zzga.zzo(zzi(t, j));
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
                        i = (i * 53) + zzga.zzo(zzi(t, j));
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
                        i = (i * 53) + zzga.zzj(zzj(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + ((String) zziu.zzp(t, j)).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zziu.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zziu.zzp(t, j).hashCode();
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
                        i = (i * 53) + zzga.zzo(zzi(t, j));
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
                        i = (i * 53) + zzga.zzo(zzi(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza(t, i3, i2)) {
                        i = (i * 53) + zziu.zzp(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i * 53) + this.zzzr.zzt(t).hashCode();
        return this.zzzi ? (hashCode * 53) + this.zzzs.zzc(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zzc(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzzd.length; i += 3) {
                int zzbk = zzbk(i);
                long j = (long) (1048575 & zzbk);
                int i2 = this.zzzd[i];
                switch ((zzbk & 267386880) >>> 20) {
                    case 0:
                        if (zza(t2, i)) {
                            zziu.zza(t, j, zziu.zzo(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza(t2, i)) {
                            zziu.zza((Object) t, j, zziu.zzn(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza(t2, i)) {
                            zziu.zza((Object) t, j, zziu.zzl(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza(t2, i)) {
                            zziu.zza((Object) t, j, zziu.zzl(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza(t2, i)) {
                            zziu.zzb(t, j, zziu.zzk(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza(t2, i)) {
                            zziu.zza((Object) t, j, zziu.zzl(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza(t2, i)) {
                            zziu.zzb(t, j, zziu.zzk(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza(t2, i)) {
                            zziu.zza(t, j, zziu.zzm(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza(t2, i)) {
                            zziu.zza(t, j, zziu.zzp(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (zza(t2, i)) {
                            zziu.zza(t, j, zziu.zzp(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza(t2, i)) {
                            zziu.zzb(t, j, zziu.zzk(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza(t2, i)) {
                            zziu.zzb(t, j, zziu.zzk(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza(t2, i)) {
                            zziu.zzb(t, j, zziu.zzk(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza(t2, i)) {
                            zziu.zza((Object) t, j, zziu.zzl(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza(t2, i)) {
                            zziu.zzb(t, j, zziu.zzk(t2, j));
                            zzb(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza(t2, i)) {
                            zziu.zza((Object) t, j, zziu.zzl(t2, j));
                            zzb(t, i);
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
                        this.zzzq.zza(t, t2, j);
                        break;
                    case 50:
                        zzhy.zza(this.zzzt, t, t2, j);
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
                            zziu.zza(t, j, zziu.zzp(t2, j));
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
                            zziu.zza(t, j, zziu.zzp(t2, j));
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
            if (!this.zzzk) {
                zzhy.zza(this.zzzr, t, t2);
                if (this.zzzi) {
                    zzhy.zza(this.zzzs, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    private final void zza(T t, T t2, int i) {
        long zzbk = (long) (zzbk(i) & 1048575);
        if (zza(t2, i)) {
            Object zzp = zziu.zzp(t, zzbk);
            Object zzp2 = zziu.zzp(t2, zzbk);
            if (zzp != null && zzp2 != null) {
                zziu.zza(t, zzbk, zzga.zza(zzp, zzp2));
                zzb(t, i);
            } else if (zzp2 != null) {
                zziu.zza(t, zzbk, zzp2);
                zzb(t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int zzbk = zzbk(i);
        int i2 = this.zzzd[i];
        long j = (long) (zzbk & 1048575);
        if (zza(t2, i2, i)) {
            Object zzp = zziu.zzp(t, j);
            Object zzp2 = zziu.zzp(t2, j);
            if (zzp != null && zzp2 != null) {
                zziu.zza(t, j, zzga.zza(zzp, zzp2));
                zzb(t, i2, i);
            } else if (zzp2 != null) {
                zziu.zza(t, j, zzp2);
                zzb(t, i2, i);
            }
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.vision.zzhw
    public final int zzp(T t) {
        int i;
        int i2;
        long j;
        int i3 = 267386880;
        if (this.zzzk) {
            Unsafe unsafe = zzzc;
            int i4 = 0;
            int i5 = 0;
            while (i4 < this.zzzd.length) {
                int zzbk = zzbk(i4);
                int i6 = (zzbk & i3) >>> 20;
                int i7 = this.zzzd[i4];
                long j2 = (long) (zzbk & 1048575);
                int i8 = (i6 < zzfs.DOUBLE_LIST_PACKED.id() || i6 > zzfs.SINT64_LIST_PACKED.id()) ? 0 : this.zzzd[i4 + 2] & 1048575;
                switch (i6) {
                    case 0:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzb(i7, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzb(i7, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzd(i7, zziu.zzl(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza(t, i4)) {
                            i5 += zzfe.zze(i7, zziu.zzl(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzi(i7, zziu.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzg(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzl(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzc(i7, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza(t, i4)) {
                            Object zzp = zziu.zzp(t, j2);
                            if (zzp instanceof zzeo) {
                                i5 += zzfe.zzc(i7, (zzeo) zzp);
                                break;
                            } else {
                                i5 += zzfe.zzb(i7, (String) zzp);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        if (zza(t, i4)) {
                            i5 += zzhy.zzc(i7, zziu.zzp(t, j2), zzbh(i4));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzc(i7, (zzeo) zziu.zzp(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzj(i7, zziu.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzn(i7, zziu.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzm(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzh(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzk(i7, zziu.zzk(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzf(i7, zziu.zzl(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zza(t, i4)) {
                            i5 += zzfe.zzc(i7, (zzhf) zziu.zzp(t, j2), zzbh(i4));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i5 += zzhy.zzw(i7, zze(t, j2), false);
                        break;
                    case 19:
                        i5 += zzhy.zzv(i7, zze(t, j2), false);
                        break;
                    case 20:
                        i5 += zzhy.zzo(i7, zze(t, j2), false);
                        break;
                    case 21:
                        i5 += zzhy.zzp(i7, zze(t, j2), false);
                        break;
                    case 22:
                        i5 += zzhy.zzs(i7, zze(t, j2), false);
                        break;
                    case 23:
                        i5 += zzhy.zzw(i7, zze(t, j2), false);
                        break;
                    case 24:
                        i5 += zzhy.zzv(i7, zze(t, j2), false);
                        break;
                    case 25:
                        i5 += zzhy.zzx(i7, zze(t, j2), false);
                        break;
                    case 26:
                        i5 += zzhy.zzc(i7, zze(t, j2));
                        break;
                    case 27:
                        i5 += zzhy.zzc(i7, (List<?>) zze(t, j2), zzbh(i4));
                        break;
                    case 28:
                        i5 += zzhy.zzd(i7, zze(t, j2));
                        break;
                    case 29:
                        i5 += zzhy.zzt(i7, zze(t, j2), false);
                        break;
                    case 30:
                        i5 += zzhy.zzr(i7, zze(t, j2), false);
                        break;
                    case 31:
                        i5 += zzhy.zzv(i7, zze(t, j2), false);
                        break;
                    case 32:
                        i5 += zzhy.zzw(i7, zze(t, j2), false);
                        break;
                    case 33:
                        i5 += zzhy.zzu(i7, zze(t, j2), false);
                        break;
                    case 34:
                        i5 += zzhy.zzq(i7, zze(t, j2), false);
                        break;
                    case 35:
                        int zzy = zzhy.zzy((List) unsafe.getObject(t, j2));
                        if (zzy <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzy);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzy) + zzy;
                            break;
                        }
                    case 36:
                        int zzx = zzhy.zzx((List) unsafe.getObject(t, j2));
                        if (zzx <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzx);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzx) + zzx;
                            break;
                        }
                    case 37:
                        int zzq = zzhy.zzq((List) unsafe.getObject(t, j2));
                        if (zzq <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzq);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzq) + zzq;
                            break;
                        }
                    case 38:
                        int zzr = zzhy.zzr((List) unsafe.getObject(t, j2));
                        if (zzr <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzr);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzr) + zzr;
                            break;
                        }
                    case 39:
                        int zzu = zzhy.zzu((List) unsafe.getObject(t, j2));
                        if (zzu <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzu);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzu) + zzu;
                            break;
                        }
                    case 40:
                        int zzy2 = zzhy.zzy((List) unsafe.getObject(t, j2));
                        if (zzy2 <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzy2);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzy2) + zzy2;
                            break;
                        }
                    case 41:
                        int zzx2 = zzhy.zzx((List) unsafe.getObject(t, j2));
                        if (zzx2 <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzx2);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzx2) + zzx2;
                            break;
                        }
                    case 42:
                        int zzz = zzhy.zzz((List) unsafe.getObject(t, j2));
                        if (zzz <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzz);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzz) + zzz;
                            break;
                        }
                    case 43:
                        int zzv = zzhy.zzv((List) unsafe.getObject(t, j2));
                        if (zzv <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzv);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzv) + zzv;
                            break;
                        }
                    case 44:
                        int zzt = zzhy.zzt((List) unsafe.getObject(t, j2));
                        if (zzt <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzt);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzt) + zzt;
                            break;
                        }
                    case 45:
                        int zzx3 = zzhy.zzx((List) unsafe.getObject(t, j2));
                        if (zzx3 <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzx3);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzx3) + zzx3;
                            break;
                        }
                    case 46:
                        int zzy3 = zzhy.zzy((List) unsafe.getObject(t, j2));
                        if (zzy3 <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzy3);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzy3) + zzy3;
                            break;
                        }
                    case 47:
                        int zzw = zzhy.zzw((List) unsafe.getObject(t, j2));
                        if (zzw <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzw);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzw) + zzw;
                            break;
                        }
                    case 48:
                        int zzs = zzhy.zzs((List) unsafe.getObject(t, j2));
                        if (zzs <= 0) {
                            break;
                        } else {
                            if (this.zzzl) {
                                unsafe.putInt(t, (long) i8, zzs);
                            }
                            i5 += zzfe.zzav(i7) + zzfe.zzax(zzs) + zzs;
                            break;
                        }
                    case 49:
                        i5 += zzhy.zzd(i7, zze(t, j2), zzbh(i4));
                        break;
                    case 50:
                        i5 += this.zzzt.zzb(i7, zziu.zzp(t, j2), zzbi(i4));
                        break;
                    case 51:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzb(i7, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzb(i7, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzd(i7, zzi(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zze(i7, zzi(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzi(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzg(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzl(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzc(i7, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zza(t, i7, i4)) {
                            Object zzp2 = zziu.zzp(t, j2);
                            if (zzp2 instanceof zzeo) {
                                i5 += zzfe.zzc(i7, (zzeo) zzp2);
                                break;
                            } else {
                                i5 += zzfe.zzb(i7, (String) zzp2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        if (zza(t, i7, i4)) {
                            i5 += zzhy.zzc(i7, zziu.zzp(t, j2), zzbh(i4));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzc(i7, (zzeo) zziu.zzp(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzj(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzn(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzm(i7, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzh(i7, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzk(i7, zzh(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzf(i7, zzi(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zza(t, i7, i4)) {
                            i5 += zzfe.zzc(i7, (zzhf) zziu.zzp(t, j2), zzbh(i4));
                            break;
                        } else {
                            break;
                        }
                }
                i4 += 3;
                i3 = 267386880;
            }
            return i5 + zza((zzio) this.zzzr, (Object) t);
        }
        Unsafe unsafe2 = zzzc;
        int i9 = 0;
        int i10 = -1;
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzzd.length; i12 += 3) {
            int zzbk2 = zzbk(i12);
            int i13 = this.zzzd[i12];
            int i14 = (zzbk2 & 267386880) >>> 20;
            if (i14 <= 17) {
                i2 = this.zzzd[i12 + 2];
                int i15 = i2 & 1048575;
                i = 1 << (i2 >>> 20);
                if (i15 != i10) {
                    i11 = unsafe2.getInt(t, (long) i15);
                    i10 = i15;
                }
            } else {
                i2 = (!this.zzzl || i14 < zzfs.DOUBLE_LIST_PACKED.id() || i14 > zzfs.SINT64_LIST_PACKED.id()) ? 0 : this.zzzd[i12 + 2] & 1048575;
                i = 0;
            }
            long j3 = (long) (zzbk2 & 1048575);
            switch (i14) {
                case 0:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzb(i13, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzb(i13, 0.0f);
                        break;
                    }
                case 2:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzd(i13, unsafe2.getLong(t, j3));
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zze(i13, unsafe2.getLong(t, j3));
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzi(i13, unsafe2.getInt(t, j3));
                    }
                    break;
                case 5:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzg(i13, 0L);
                        j = 0;
                        break;
                    }
                    j = 0;
                    break;
                case 6:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzl(i13, 0);
                        j = 0;
                        break;
                    }
                    j = 0;
                case 7:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzc(i13, true);
                    }
                    j = 0;
                    break;
                case 8:
                    if ((i11 & i) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        i9 = object instanceof zzeo ? i9 + zzfe.zzc(i13, (zzeo) object) : i9 + zzfe.zzb(i13, (String) object);
                    }
                    j = 0;
                    break;
                case 9:
                    if ((i11 & i) != 0) {
                        i9 += zzhy.zzc(i13, unsafe2.getObject(t, j3), zzbh(i12));
                    }
                    j = 0;
                    break;
                case 10:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzc(i13, (zzeo) unsafe2.getObject(t, j3));
                    }
                    j = 0;
                    break;
                case 11:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzj(i13, unsafe2.getInt(t, j3));
                    }
                    j = 0;
                    break;
                case 12:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzn(i13, unsafe2.getInt(t, j3));
                    }
                    j = 0;
                    break;
                case 13:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzm(i13, 0);
                    }
                    j = 0;
                    break;
                case 14:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzh(i13, 0L);
                    }
                    j = 0;
                    break;
                case 15:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzk(i13, unsafe2.getInt(t, j3));
                    }
                    j = 0;
                    break;
                case 16:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzf(i13, unsafe2.getLong(t, j3));
                    }
                    j = 0;
                    break;
                case 17:
                    if ((i11 & i) != 0) {
                        i9 += zzfe.zzc(i13, (zzhf) unsafe2.getObject(t, j3), zzbh(i12));
                    }
                    j = 0;
                    break;
                case 18:
                    i9 += zzhy.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 19:
                    i9 += zzhy.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 20:
                    i9 += zzhy.zzo(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 21:
                    i9 += zzhy.zzp(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 22:
                    i9 += zzhy.zzs(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 23:
                    i9 += zzhy.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 24:
                    i9 += zzhy.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 25:
                    i9 += zzhy.zzx(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 26:
                    i9 += zzhy.zzc(i13, (List) unsafe2.getObject(t, j3));
                    j = 0;
                    break;
                case 27:
                    i9 += zzhy.zzc(i13, (List<?>) ((List) unsafe2.getObject(t, j3)), zzbh(i12));
                    j = 0;
                    break;
                case 28:
                    i9 += zzhy.zzd(i13, (List) unsafe2.getObject(t, j3));
                    j = 0;
                    break;
                case 29:
                    i9 += zzhy.zzt(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 30:
                    i9 += zzhy.zzr(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 31:
                    i9 += zzhy.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 32:
                    i9 += zzhy.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 33:
                    i9 += zzhy.zzu(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 34:
                    i9 += zzhy.zzq(i13, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 35:
                    int zzy4 = zzhy.zzy((List) unsafe2.getObject(t, j3));
                    if (zzy4 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzy4);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzy4) + zzy4;
                    }
                    j = 0;
                    break;
                case 36:
                    int zzx4 = zzhy.zzx((List) unsafe2.getObject(t, j3));
                    if (zzx4 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzx4);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzx4) + zzx4;
                    }
                    j = 0;
                    break;
                case 37:
                    int zzq2 = zzhy.zzq((List) unsafe2.getObject(t, j3));
                    if (zzq2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzq2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzq2) + zzq2;
                    }
                    j = 0;
                    break;
                case 38:
                    int zzr2 = zzhy.zzr((List) unsafe2.getObject(t, j3));
                    if (zzr2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzr2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzr2) + zzr2;
                    }
                    j = 0;
                    break;
                case 39:
                    int zzu2 = zzhy.zzu((List) unsafe2.getObject(t, j3));
                    if (zzu2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzu2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzu2) + zzu2;
                    }
                    j = 0;
                    break;
                case 40:
                    int zzy5 = zzhy.zzy((List) unsafe2.getObject(t, j3));
                    if (zzy5 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzy5);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzy5) + zzy5;
                    }
                    j = 0;
                    break;
                case 41:
                    int zzx5 = zzhy.zzx((List) unsafe2.getObject(t, j3));
                    if (zzx5 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzx5);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzx5) + zzx5;
                    }
                    j = 0;
                    break;
                case 42:
                    int zzz2 = zzhy.zzz((List) unsafe2.getObject(t, j3));
                    if (zzz2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzz2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzz2) + zzz2;
                    }
                    j = 0;
                    break;
                case 43:
                    int zzv2 = zzhy.zzv((List) unsafe2.getObject(t, j3));
                    if (zzv2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzv2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzv2) + zzv2;
                    }
                    j = 0;
                    break;
                case 44:
                    int zzt2 = zzhy.zzt((List) unsafe2.getObject(t, j3));
                    if (zzt2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzt2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzt2) + zzt2;
                    }
                    j = 0;
                    break;
                case 45:
                    int zzx6 = zzhy.zzx((List) unsafe2.getObject(t, j3));
                    if (zzx6 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzx6);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzx6) + zzx6;
                    }
                    j = 0;
                    break;
                case 46:
                    int zzy6 = zzhy.zzy((List) unsafe2.getObject(t, j3));
                    if (zzy6 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzy6);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzy6) + zzy6;
                    }
                    j = 0;
                    break;
                case 47:
                    int zzw2 = zzhy.zzw((List) unsafe2.getObject(t, j3));
                    if (zzw2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzw2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzw2) + zzw2;
                    }
                    j = 0;
                    break;
                case 48:
                    int zzs2 = zzhy.zzs((List) unsafe2.getObject(t, j3));
                    if (zzs2 > 0) {
                        if (this.zzzl) {
                            unsafe2.putInt(t, (long) i2, zzs2);
                        }
                        i9 += zzfe.zzav(i13) + zzfe.zzax(zzs2) + zzs2;
                    }
                    j = 0;
                    break;
                case 49:
                    i9 += zzhy.zzd(i13, (List) unsafe2.getObject(t, j3), zzbh(i12));
                    j = 0;
                    break;
                case 50:
                    i9 += this.zzzt.zzb(i13, unsafe2.getObject(t, j3), zzbi(i12));
                    j = 0;
                    break;
                case 51:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzb(i13, 0.0d);
                    }
                    j = 0;
                    break;
                case 52:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzb(i13, 0.0f);
                    }
                    j = 0;
                    break;
                case 53:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzd(i13, zzi(t, j3));
                    }
                    j = 0;
                    break;
                case 54:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zze(i13, zzi(t, j3));
                    }
                    j = 0;
                    break;
                case 55:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzi(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 56:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzg(i13, 0L);
                    }
                    j = 0;
                    break;
                case 57:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzl(i13, 0);
                    }
                    j = 0;
                    break;
                case 58:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzc(i13, true);
                    }
                    j = 0;
                    break;
                case 59:
                    if (zza(t, i13, i12)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        i9 = object2 instanceof zzeo ? i9 + zzfe.zzc(i13, (zzeo) object2) : i9 + zzfe.zzb(i13, (String) object2);
                    }
                    j = 0;
                    break;
                case 60:
                    if (zza(t, i13, i12)) {
                        i9 += zzhy.zzc(i13, unsafe2.getObject(t, j3), zzbh(i12));
                    }
                    j = 0;
                    break;
                case 61:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzc(i13, (zzeo) unsafe2.getObject(t, j3));
                    }
                    j = 0;
                    break;
                case 62:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzj(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 63:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzn(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 64:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzm(i13, 0);
                    }
                    j = 0;
                    break;
                case 65:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzh(i13, 0L);
                    }
                    j = 0;
                    break;
                case 66:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzk(i13, zzh(t, j3));
                    }
                    j = 0;
                    break;
                case 67:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzf(i13, zzi(t, j3));
                    }
                    j = 0;
                    break;
                case 68:
                    if (zza(t, i13, i12)) {
                        i9 += zzfe.zzc(i13, (zzhf) unsafe2.getObject(t, j3), zzbh(i12));
                    }
                    j = 0;
                    break;
                default:
                    j = 0;
                    break;
            }
        }
        int zza = i9 + zza((zzio) this.zzzr, (Object) t);
        return this.zzzi ? zza + this.zzzs.zzc(t).zzeq() : zza;
    }

    private static <UT, UB> int zza(zzio<UT, UB> zzio, T t) {
        return zzio.zzp(zzio.zzt(t));
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zziu.zzp(obj, j);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0511  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x054f  */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x0a27  */
    @Override // com.google.android.gms.internal.vision.zzhw
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r14, com.google.android.gms.internal.vision.zzjj r15) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 2914
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zza(java.lang.Object, com.google.android.gms.internal.vision.zzjj):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:172:0x0527  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzb(T r20, com.google.android.gms.internal.vision.zzjj r21) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1488
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zzb(java.lang.Object, com.google.android.gms.internal.vision.zzjj):void");
    }

    private final <K, V> void zza(zzjj zzjj, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzjj.zza(i, this.zzzt.zzo(zzbi(i2)), this.zzzt.zzk(obj));
        }
    }

    private static <UT, UB> void zza(zzio<UT, UB> zzio, T t, zzjj zzjj) throws IOException {
        zzio.zza(zzio.zzt(t), zzjj);
    }

    /*  JADX ERROR: StackOverflowError in pass: MarkFinallyVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.instructions.IndexInsnNode.isSame(IndexInsnNode.java:36)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.sameInsns(MarkFinallyVisitor.java:451)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.compareBlocks(MarkFinallyVisitor.java:436)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:408)
        	at jadx.core.dex.visitors.MarkFinallyVisitor.checkBlocksTree(MarkFinallyVisitor.java:411)
        */
    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zza(T r13, com.google.android.gms.internal.vision.zzhv r14, com.google.android.gms.internal.vision.zzfk r15) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1652
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zza(java.lang.Object, com.google.android.gms.internal.vision.zzhv, com.google.android.gms.internal.vision.zzfk):void");
    }

    private static zzip zzq(Object obj) {
        zzfy zzfy = (zzfy) obj;
        zzip zzip = zzfy.zzwj;
        if (zzip != zzip.zzhe()) {
            return zzip;
        }
        zzip zzhf = zzip.zzhf();
        zzfy.zzwj = zzhf;
        return zzhf;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: com.google.android.gms.internal.vision.zzhw */
    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzhw zzhw, byte[] bArr, int i, int i2, zzei zzei) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        byte b2 = b;
        if (b < 0) {
            i3 = zzeh.zza(b, bArr, i3, zzei);
            b2 = zzei.zzro;
        }
        if (b2 < 0 || b2 > i2 - i3) {
            throw zzgf.zzfh();
        }
        Object newInstance = zzhw.newInstance();
        int i4 = (b2 == 1 ? 1 : 0) + i3;
        zzhw.zza(newInstance, bArr, i3, i4, zzei);
        zzhw.zze(newInstance);
        zzei.zzrq = newInstance;
        return i4;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v1, resolved type: com.google.android.gms.internal.vision.zzhj */
    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzhw zzhw, byte[] bArr, int i, int i2, int i3, zzei zzei) throws IOException {
        zzhj zzhj = (zzhj) zzhw;
        Object newInstance = zzhj.newInstance();
        int zza = zzhj.zza(newInstance, bArr, i, i2, i3, zzei);
        zzhj.zze(newInstance);
        zzei.zzrq = newInstance;
        return zza;
    }

    private static int zza(zzhw<?> zzhw, int i, byte[] bArr, int i2, int i3, zzge<?> zzge, zzei zzei) throws IOException {
        int zza = zza((zzhw) zzhw, bArr, i2, i3, zzei);
        zzge.add(zzei.zzrq);
        while (zza < i3) {
            int zza2 = zzeh.zza(bArr, zza, zzei);
            if (i != zzei.zzro) {
                break;
            }
            zza = zza((zzhw) zzhw, bArr, zza2, i3, zzei);
            zzge.add(zzei.zzrq);
        }
        return zza;
    }

    private static int zza(byte[] bArr, int i, int i2, zzjd zzjd, Class<?> cls, zzei zzei) throws IOException {
        switch (zzjd) {
            case BOOL:
                int zzb = zzeh.zzb(bArr, i, zzei);
                zzei.zzrq = Boolean.valueOf(zzei.zzrp != 0);
                return zzb;
            case BYTES:
                return zzeh.zze(bArr, i, zzei);
            case DOUBLE:
                zzei.zzrq = Double.valueOf(zzeh.zzc(bArr, i));
                return i + 8;
            case FIXED32:
            case SFIXED32:
                zzei.zzrq = Integer.valueOf(zzeh.zza(bArr, i));
                return i + 4;
            case FIXED64:
            case SFIXED64:
                zzei.zzrq = Long.valueOf(zzeh.zzb(bArr, i));
                return i + 8;
            case FLOAT:
                zzei.zzrq = Float.valueOf(zzeh.zzd(bArr, i));
                return i + 4;
            case ENUM:
            case INT32:
            case UINT32:
                int zza = zzeh.zza(bArr, i, zzei);
                zzei.zzrq = Integer.valueOf(zzei.zzro);
                return zza;
            case INT64:
            case UINT64:
                int zzb2 = zzeh.zzb(bArr, i, zzei);
                zzei.zzrq = Long.valueOf(zzei.zzrp);
                return zzb2;
            case MESSAGE:
                return zza((zzhw) zzhs.zzgl().zzf(cls), bArr, i, i2, zzei);
            case SINT32:
                int zza2 = zzeh.zza(bArr, i, zzei);
                zzei.zzrq = Integer.valueOf(zzez.zzaq(zzei.zzro));
                return zza2;
            case SINT64:
                int zzb3 = zzeh.zzb(bArr, i, zzei);
                zzei.zzrq = Long.valueOf(zzez.zzd(zzei.zzrp));
                return zzb3;
            case STRING:
                return zzeh.zzd(bArr, i, zzei);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzei zzei) throws IOException {
        return zzeh.zza(i, bArr, i2, i3, zzq(obj), zzei);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:57)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:15)
        */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x023f  */
    /* JADX WARNING: Removed duplicated region for block: B:247:0x0433 A[SYNTHETIC] */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.vision.zzei r30) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1144
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.vision.zzei):int");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:28:0x003e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:32:0x003e */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzei zzei) throws IOException {
        Unsafe unsafe = zzzc;
        Object zzbi = zzbi(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzzt.zzl(object)) {
            Object zzn = this.zzzt.zzn(zzbi);
            this.zzzt.zzb(zzn, object);
            unsafe.putObject(t, j, zzn);
            object = zzn;
        }
        zzgy<?, ?> zzo = this.zzzt.zzo(zzbi);
        Map<?, ?> zzj = this.zzzt.zzj(object);
        int zza = zzeh.zza(bArr, i, zzei);
        int i4 = zzei.zzro;
        if (i4 < 0 || i4 > i2 - zza) {
            throw zzgf.zzfh();
        }
        int i5 = i4 + zza;
        ListAddBiConsumer listAddBiConsumer = (K) zzo.zzyw;
        ListAddBiConsumer listAddBiConsumer2 = (V) zzo.zzgq;
        while (zza < i5) {
            int i6 = zza + 1;
            byte b = bArr[zza];
            int i7 = b;
            if (b < 0) {
                i6 = zzeh.zza(b, bArr, i6, zzei);
                i7 = zzei.zzro;
            }
            int i8 = (i7 == 1 ? 1 : 0) >>> 3;
            int i9 = (i7 == 1 ? 1 : 0) & 7;
            switch (i8) {
                case 1:
                    if (i9 == zzo.zzyv.zzhp()) {
                        zza = zza(bArr, i6, i2, zzo.zzyv, (Class<?>) null, zzei);
                        listAddBiConsumer = (K) zzei.zzrq;
                        continue;
                    }
                    break;
                case 2:
                    if (i9 == zzo.zzyx.zzhp()) {
                        zza = zza(bArr, i6, i2, zzo.zzyx, zzo.zzgq.getClass(), zzei);
                        listAddBiConsumer2 = (V) zzei.zzrq;
                        continue;
                    }
                    break;
            }
            zza = zzeh.zza(i7, bArr, i6, i2, zzei);
        }
        if (zza == i5) {
            zzj.put(listAddBiConsumer, listAddBiConsumer2);
            return i5;
        }
        throw zzgf.zzfo();
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzei zzei) throws IOException {
        int i9;
        Unsafe unsafe = zzzc;
        long j2 = (long) (this.zzzd[i8 + 2] & 1048575);
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzeh.zzc(bArr, i)));
                    i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzeh.zzd(bArr, i)));
                    i9 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    i9 = zzeh.zzb(bArr, i, zzei);
                    unsafe.putObject(t, j, Long.valueOf(zzei.zzrp));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    i9 = zzeh.zza(bArr, i, zzei);
                    unsafe.putObject(t, j, Integer.valueOf(zzei.zzro));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzeh.zzb(bArr, i)));
                    i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzeh.zza(bArr, i)));
                    i9 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    i9 = zzeh.zzb(bArr, i, zzei);
                    unsafe.putObject(t, j, Boolean.valueOf(zzei.zzrp != 0));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int zza = zzeh.zza(bArr, i, zzei);
                    int i10 = zzei.zzro;
                    if (i10 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) == 0 || zziw.zzg(bArr, zza, zza + i10)) {
                        unsafe.putObject(t, j, new String(bArr, zza, i10, zzga.UTF_8));
                        zza += i10;
                    } else {
                        throw zzgf.zzfp();
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int zza2 = zza(zzbh(i8), bArr, i, i2, zzei);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzei.zzrq);
                    } else {
                        unsafe.putObject(t, j, zzga.zza(object, zzei.zzrq));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    i9 = zzeh.zze(bArr, i, zzei);
                    unsafe.putObject(t, j, zzei.zzrq);
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int zza3 = zzeh.zza(bArr, i, zzei);
                    int i11 = zzei.zzro;
                    zzgd zzbj = zzbj(i8);
                    if (zzbj == null || zzbj.zzh(i11)) {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        i9 = zza3;
                        unsafe.putInt(t, j2, i4);
                        return i9;
                    }
                    zzq(t).zzb(i3, Long.valueOf((long) i11));
                    return zza3;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    i9 = zzeh.zza(bArr, i, zzei);
                    unsafe.putObject(t, j, Integer.valueOf(zzez.zzaq(zzei.zzro)));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    i9 = zzeh.zzb(bArr, i, zzei);
                    unsafe.putObject(t, j, Long.valueOf(zzez.zzd(zzei.zzrp)));
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    i9 = zza(zzbh(i8), bArr, i, i2, (i3 & -8) | 4, zzei);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzei.zzrq);
                    } else {
                        unsafe.putObject(t, j, zzga.zza(object2, zzei.zzrq));
                    }
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                return i;
            default:
                return i;
        }
    }

    private final zzhw zzbh(int i) {
        int i2 = (i / 3) << 1;
        zzhw zzhw = (zzhw) this.zzze[i2];
        if (zzhw != null) {
            return zzhw;
        }
        zzhw<T> zzf = zzhs.zzgl().zzf((Class) this.zzze[i2 + 1]);
        this.zzze[i2] = zzf;
        return zzf;
    }

    private final Object zzbi(int i) {
        return this.zzze[(i / 3) << 1];
    }

    private final zzgd zzbj(int i) {
        return (zzgd) this.zzze[((i / 3) << 1) + 1];
    }

    /* JADX WARNING: Code restructure failed: missing block: B:118:0x035a, code lost:
        if (r0 == r4) goto L_0x035c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x035e, code lost:
        r12 = r32;
        r9 = r36;
        r1 = r17;
        r2 = r19;
        r6 = r20;
        r7 = r25;
        r10 = r28;
        r3 = r29;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x039f, code lost:
        if (r0 == r15) goto L_0x035c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zza(T r31, byte[] r32, int r33, int r34, int r35, com.google.android.gms.internal.vision.zzei r36) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1150
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.vision.zzei):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [int] */
    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x01e4, code lost:
        if (r0 == r8) goto L_0x01e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x0212, code lost:
        if (r0 == r15) goto L_0x01e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x0231, code lost:
        if (r0 == r15) goto L_0x01e6;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.vision.zzhw
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(T r29, byte[] r30, int r31, int r32, com.google.android.gms.internal.vision.zzei r33) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 662
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.zzei):void");
    }

    @Override // com.google.android.gms.internal.vision.zzhw
    public final void zze(T t) {
        for (int i = this.zzzn; i < this.zzzo; i++) {
            long zzbk = (long) (zzbk(this.zzzm[i]) & 1048575);
            Object zzp = zziu.zzp(t, zzbk);
            if (zzp != null) {
                zziu.zza(t, zzbk, this.zzzt.zzm(zzp));
            }
        }
        int length = this.zzzm.length;
        for (int i2 = this.zzzo; i2 < length; i2++) {
            this.zzzq.zzb(t, (long) this.zzzm[i2]);
        }
        this.zzzr.zze(t);
        if (this.zzzi) {
            this.zzzs.zze((Object) t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzio<UT, UB> zzio) {
        zzgd zzbj;
        int i2 = this.zzzd[i];
        Object zzp = zziu.zzp(obj, (long) (zzbk(i) & 1048575));
        return (zzp == null || (zzbj = zzbj(i)) == null) ? ub : (UB) zza(i, i2, (Map<K, V>) this.zzzt.zzj(zzp), zzbj, ub, zzio);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzgd zzgd, UB ub, zzio<UT, UB> zzio) {
        zzgy<?, ?> zzo = this.zzzt.zzo(zzbi(i));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!zzgd.zzh(next.getValue().intValue())) {
                if (ub == null) {
                    ub = zzio.zzhd();
                }
                zzev zzaj = zzeo.zzaj(zzgx.zza(zzo, next.getKey(), next.getValue()));
                try {
                    zzgx.zza(zzaj.zzdp(), zzo, next.getKey(), next.getValue());
                    zzio.zza(ub, i2, zzaj.zzdo());
                    it2.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.vision.zzhw] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.vision.zzhw] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0104, code lost:
        continue;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.vision.zzhw
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzr(T r14) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhj.zzr(java.lang.Object):boolean");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.vision.zzhw */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzhw zzhw) {
        return zzhw.zzr(zziu.zzp(obj, (long) (i & 1048575)));
    }

    private static void zza(int i, Object obj, zzjj zzjj) throws IOException {
        if (obj instanceof String) {
            zzjj.zza(i, (String) obj);
        } else {
            zzjj.zza(i, (zzeo) obj);
        }
    }

    private final void zza(Object obj, int i, zzhv zzhv) throws IOException {
        if (zzbm(i)) {
            zziu.zza(obj, (long) (i & 1048575), zzhv.zzcv());
        } else if (this.zzzj) {
            zziu.zza(obj, (long) (i & 1048575), zzhv.readString());
        } else {
            zziu.zza(obj, (long) (i & 1048575), zzhv.zzcw());
        }
    }

    private final int zzbk(int i) {
        return this.zzzd[i + 1];
    }

    private final int zzbl(int i) {
        return this.zzzd[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zziu.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zziu.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zziu.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zziu.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zziu.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza(t, i) == zza(t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzzk) {
            return zza(t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zza(T t, int i) {
        if (this.zzzk) {
            int zzbk = zzbk(i);
            long j = (long) (zzbk & 1048575);
            switch ((zzbk & 267386880) >>> 20) {
                case 0:
                    return zziu.zzo(t, j) != 0.0d;
                case 1:
                    return zziu.zzn(t, j) != 0.0f;
                case 2:
                    return zziu.zzl(t, j) != 0;
                case 3:
                    return zziu.zzl(t, j) != 0;
                case 4:
                    return zziu.zzk(t, j) != 0;
                case 5:
                    return zziu.zzl(t, j) != 0;
                case 6:
                    return zziu.zzk(t, j) != 0;
                case 7:
                    return zziu.zzm(t, j);
                case 8:
                    Object zzp = zziu.zzp(t, j);
                    if (zzp instanceof String) {
                        return !((String) zzp).isEmpty();
                    }
                    if (zzp instanceof zzeo) {
                        return !zzeo.zzrx.equals(zzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zziu.zzp(t, j) != null;
                case 10:
                    return !zzeo.zzrx.equals(zziu.zzp(t, j));
                case 11:
                    return zziu.zzk(t, j) != 0;
                case 12:
                    return zziu.zzk(t, j) != 0;
                case 13:
                    return zziu.zzk(t, j) != 0;
                case 14:
                    return zziu.zzl(t, j) != 0;
                case 15:
                    return zziu.zzk(t, j) != 0;
                case 16:
                    return zziu.zzl(t, j) != 0;
                case 17:
                    return zziu.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int zzbl = zzbl(i);
            return (zziu.zzk(t, (long) (zzbl & 1048575)) & (1 << (zzbl >>> 20))) != 0;
        }
    }

    private final void zzb(T t, int i) {
        if (!this.zzzk) {
            int zzbl = zzbl(i);
            long j = (long) (zzbl & 1048575);
            zziu.zzb(t, j, zziu.zzk(t, j) | (1 << (zzbl >>> 20)));
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zziu.zzk(t, (long) (zzbl(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zziu.zzb(t, (long) (zzbl(i2) & 1048575), i);
    }

    private final int zzbn(int i) {
        if (i < this.zzzf || i > this.zzzg) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i, int i2) {
        if (i < this.zzzf || i > this.zzzg) {
            return -1;
        }
        return zzs(i, i2);
    }

    private final int zzs(int i, int i2) {
        int length = (this.zzzd.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzzd[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
