package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzuv {
    private final byte[] buffer;
    private final zzve zzbva;

    private zzuv(int i) {
        this.buffer = new byte[i];
        this.zzbva = zzve.zzj(this.buffer);
    }

    public final zzun zzuo() {
        if (this.zzbva.zzvq() == 0) {
            return new zzux(this.buffer);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final zzve zzup() {
        return this.zzbva;
    }

    /* synthetic */ zzuv(int i, zzuo zzuo) {
        this(i);
    }
}
