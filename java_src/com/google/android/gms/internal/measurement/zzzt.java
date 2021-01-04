package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* access modifiers changed from: package-private */
public final class zzzt {
    final int tag;
    final byte[] zzbvb;

    zzzt(int i, byte[] bArr) {
        this.tag = i;
        this.zzbvb = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzt)) {
            return false;
        }
        zzzt zzzt = (zzzt) obj;
        return this.tag == zzzt.tag && Arrays.equals(this.zzbvb, zzzt.zzbvb);
    }

    public final int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzbvb);
    }
}
