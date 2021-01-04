package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class zabc extends zabr {
    private WeakReference<zaaw> zahl;

    zabc(zaaw zaaw) {
        this.zahl = new WeakReference<>(zaaw);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zas() {
        zaaw zaaw = this.zahl.get();
        if (zaaw != null) {
            zaaw.resume();
        }
    }
}
