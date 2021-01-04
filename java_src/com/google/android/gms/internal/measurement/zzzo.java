package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzzo implements Cloneable {
    private Object value;
    private zzzm<?, ?> zzcge;
    private List<zzzt> zzcgf = new ArrayList();

    zzzo() {
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzzt zzzt) throws IOException {
        Object obj;
        Object obj2;
        if (this.zzcgf != null) {
            this.zzcgf.add(zzzt);
            return;
        }
        if (this.value instanceof zzzr) {
            byte[] bArr = zzzt.zzbvb;
            zzzi zzj = zzzi.zzj(bArr, 0, bArr.length);
            int zzvi = zzj.zzvi();
            if (zzvi == bArr.length - zzzj.zzbd(zzvi)) {
                obj = ((zzzr) this.value).zza(zzj);
            } else {
                throw zzzq.zzzk();
            }
        } else {
            if (this.value instanceof zzzr[]) {
                zzzr[] zzzrArr = (zzzr[]) this.zzcge.zzah(Collections.singletonList(zzzt));
                zzzr[] zzzrArr2 = (zzzr[]) this.value;
                obj2 = (zzzr[]) Arrays.copyOf(zzzrArr2, zzzrArr2.length + zzzrArr.length);
                System.arraycopy(zzzrArr, 0, obj2, zzzrArr2.length, zzzrArr.length);
            } else if (this.value instanceof zzxe) {
                obj = ((zzxe) this.value).zzwo().zza((zzxe) this.zzcge.zzah(Collections.singletonList(zzzt))).zzwv();
            } else if (this.value instanceof zzxe[]) {
                zzxe[] zzxeArr = (zzxe[]) this.zzcge.zzah(Collections.singletonList(zzzt));
                zzxe[] zzxeArr2 = (zzxe[]) this.value;
                obj2 = (zzxe[]) Arrays.copyOf(zzxeArr2, zzxeArr2.length + zzxeArr.length);
                System.arraycopy(zzxeArr, 0, obj2, zzxeArr2.length, zzxeArr.length);
            } else {
                obj = this.zzcge.zzah(Collections.singletonList(zzzt));
            }
            obj = obj2;
        }
        this.zzcge = this.zzcge;
        this.value = obj;
        this.zzcgf = null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: com.google.android.gms.internal.measurement.zzzm<?, T> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    public final <T> T zzb(zzzm<?, T> zzzm) {
        if (this.value == null) {
            this.zzcge = zzzm;
            this.value = zzzm.zzah(this.zzcgf);
            this.zzcgf = null;
        } else if (!this.zzcge.equals(zzzm)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return (T) this.value;
    }

    /* access modifiers changed from: package-private */
    public final int zzf() {
        if (this.value != null) {
            zzzm<?, ?> zzzm = this.zzcge;
            Object obj = this.value;
            if (!zzzm.zzcfz) {
                return zzzm.zzao(obj);
            }
            int length = Array.getLength(obj);
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                Object obj2 = Array.get(obj, i2);
                if (obj2 != null) {
                    i += zzzm.zzao(obj2);
                }
            }
            return i;
        }
        int i3 = 0;
        for (zzzt zzzt : this.zzcgf) {
            i3 += zzzj.zzbk(zzzt.tag) + 0 + zzzt.zzbvb.length;
        }
        return i3;
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzzj zzzj) throws IOException {
        if (this.value != null) {
            zzzm<?, ?> zzzm = this.zzcge;
            Object obj = this.value;
            if (zzzm.zzcfz) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        zzzm.zza(obj2, zzzj);
                    }
                }
                return;
            }
            zzzm.zza(obj, zzzj);
            return;
        }
        for (zzzt zzzt : this.zzcgf) {
            zzzj.zzcc(zzzt.tag);
            zzzj.zzp(zzzt.zzbvb);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzo)) {
            return false;
        }
        zzzo zzzo = (zzzo) obj;
        if (this.value == null || zzzo.value == null) {
            if (this.zzcgf != null && zzzo.zzcgf != null) {
                return this.zzcgf.equals(zzzo.zzcgf);
            }
            try {
                return Arrays.equals(toByteArray(), zzzo.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else if (this.zzcge != zzzo.zzcge) {
            return false;
        } else {
            if (!this.zzcge.zzcfy.isArray()) {
                return this.value.equals(zzzo.value);
            }
            if (this.value instanceof byte[]) {
                return Arrays.equals((byte[]) this.value, (byte[]) zzzo.value);
            }
            if (this.value instanceof int[]) {
                return Arrays.equals((int[]) this.value, (int[]) zzzo.value);
            }
            if (this.value instanceof long[]) {
                return Arrays.equals((long[]) this.value, (long[]) zzzo.value);
            }
            if (this.value instanceof float[]) {
                return Arrays.equals((float[]) this.value, (float[]) zzzo.value);
            }
            if (this.value instanceof double[]) {
                return Arrays.equals((double[]) this.value, (double[]) zzzo.value);
            }
            if (this.value instanceof boolean[]) {
                return Arrays.equals((boolean[]) this.value, (boolean[]) zzzo.value);
            }
            return Arrays.deepEquals((Object[]) this.value, (Object[]) zzzo.value);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzf()];
        zza(zzzj.zzo(bArr));
        return bArr;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzzj */
    public final zzzo clone() {
        zzzo zzzo = new zzzo();
        try {
            zzzo.zzcge = this.zzcge;
            if (this.zzcgf == null) {
                zzzo.zzcgf = null;
            } else {
                zzzo.zzcgf.addAll(this.zzcgf);
            }
            if (this.value != null) {
                if (this.value instanceof zzzr) {
                    zzzo.value = (zzzr) ((zzzr) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzzo.value = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzzo.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzzo.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzzo.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzzo.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzzo.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzzo.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzzr[]) {
                        zzzr[] zzzrArr = (zzzr[]) this.value;
                        zzzr[] zzzrArr2 = new zzzr[zzzrArr.length];
                        zzzo.value = zzzrArr2;
                        while (i < zzzrArr.length) {
                            zzzrArr2[i] = (zzzr) zzzrArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return zzzo;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
