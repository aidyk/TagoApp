package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* access modifiers changed from: package-private */
public final class zzti {
    private final ConcurrentHashMap<zztj, List<Throwable>> zzbsr = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzbss = new ReferenceQueue<>();

    zzti() {
    }

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzbss.poll();
        while (poll != null) {
            this.zzbsr.remove(poll);
            poll = this.zzbss.poll();
        }
        return this.zzbsr.get(new zztj(th, null));
    }
}
