package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzjq implements Cloneable {
    private Object value;
    private zzjo<?, ?> zzadm;
    private List<zzjv> zzadn = new ArrayList();

    zzjq() {
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzjv zzjv) throws IOException {
        if (this.zzadn != null) {
            this.zzadn.add(zzjv);
        } else if (this.value instanceof zzjt) {
            byte[] bArr = zzjv.zzse;
            zzjk zzk = zzjk.zzk(bArr, 0, bArr.length);
            int zzdt = zzk.zzdt();
            if (zzdt == bArr.length - zzjl.zzaw(zzdt)) {
                zzjt zza = ((zzjt) this.value).zza(zzk);
                this.zzadm = this.zzadm;
                this.value = zza;
                this.zzadn = null;
                return;
            }
            throw zzjs.zzht();
        } else if (this.value instanceof zzjt[]) {
            Collections.singletonList(zzjv);
            throw new NoSuchMethodError();
        } else {
            Collections.singletonList(zzjv);
            throw new NoSuchMethodError();
        }
    }

    /* access modifiers changed from: package-private */
    public final int zzt() {
        if (this.value == null) {
            int i = 0;
            for (zzjv zzjv : this.zzadn) {
                i += zzjl.zzbd(zzjv.tag) + 0 + zzjv.zzse.length;
            }
            return i;
        }
        throw new NoSuchMethodError();
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzjl zzjl) throws IOException {
        if (this.value == null) {
            for (zzjv zzjv : this.zzadn) {
                zzjl.zzbv(zzjv.tag);
                zzjl.zzl(zzjv.zzse);
            }
            return;
        }
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjq)) {
            return false;
        }
        zzjq zzjq = (zzjq) obj;
        if (this.value == null || zzjq.value == null) {
            if (this.zzadn != null && zzjq.zzadn != null) {
                return this.zzadn.equals(zzjq.zzadn);
            }
            try {
                return Arrays.equals(toByteArray(), zzjq.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else if (this.zzadm != zzjq.zzadm) {
            return false;
        } else {
            if (!this.zzadm.zzadh.isArray()) {
                return this.value.equals(zzjq.value);
            }
            if (this.value instanceof byte[]) {
                return Arrays.equals((byte[]) this.value, (byte[]) zzjq.value);
            }
            if (this.value instanceof int[]) {
                return Arrays.equals((int[]) this.value, (int[]) zzjq.value);
            }
            if (this.value instanceof long[]) {
                return Arrays.equals((long[]) this.value, (long[]) zzjq.value);
            }
            if (this.value instanceof float[]) {
                return Arrays.equals((float[]) this.value, (float[]) zzjq.value);
            }
            if (this.value instanceof double[]) {
                return Arrays.equals((double[]) this.value, (double[]) zzjq.value);
            }
            if (this.value instanceof boolean[]) {
                return Arrays.equals((boolean[]) this.value, (boolean[]) zzjq.value);
            }
            return Arrays.deepEquals((Object[]) this.value, (Object[]) zzjq.value);
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
        byte[] bArr = new byte[zzt()];
        zza(zzjl.zzk(bArr));
        return bArr;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzhs */
    public final zzjq clone() {
        zzjq zzjq = new zzjq();
        try {
            zzjq.zzadm = this.zzadm;
            if (this.zzadn == null) {
                zzjq.zzadn = null;
            } else {
                zzjq.zzadn.addAll(this.zzadn);
            }
            if (this.value != null) {
                if (this.value instanceof zzjt) {
                    zzjq.value = (zzjt) ((zzjt) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzjq.value = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzjq.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzjq.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzjq.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzjq.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzjq.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzjq.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzjt[]) {
                        zzjt[] zzjtArr = (zzjt[]) this.value;
                        zzjt[] zzjtArr2 = new zzjt[zzjtArr.length];
                        zzjq.value = zzjtArr2;
                        while (i < zzjtArr.length) {
                            zzjtArr2[i] = (zzjt) zzjtArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return zzjq;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
