package com.google.android.gms.internal.vision;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class zzcw extends WeakReference<Throwable> {
    private final int zzlv;

    public zzcw(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, null);
        if (th != null) {
            this.zzlv = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final int hashCode() {
        return this.zzlv;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzcw zzcw = (zzcw) obj;
        return this.zzlv == zzcw.zzlv && get() == zzcw.get();
    }
}
