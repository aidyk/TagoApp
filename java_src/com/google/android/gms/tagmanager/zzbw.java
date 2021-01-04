package com.google.android.gms.tagmanager;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
final class zzbw {
    private final long zzaax;
    private final long zzbcu;
    private final long zzbcv;
    private String zzbcw;

    /* access modifiers changed from: package-private */
    public final long zzov() {
        return this.zzbcu;
    }

    /* access modifiers changed from: package-private */
    public final long zzow() {
        return this.zzbcv;
    }

    zzbw(long j, long j2, long j3) {
        this.zzbcu = j;
        this.zzaax = j2;
        this.zzbcv = j3;
    }

    /* access modifiers changed from: package-private */
    public final String zzox() {
        return this.zzbcw;
    }

    /* access modifiers changed from: package-private */
    public final void zzdu(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim())) {
            this.zzbcw = str;
        }
    }
}
