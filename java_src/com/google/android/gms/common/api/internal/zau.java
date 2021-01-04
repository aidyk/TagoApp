package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

/* access modifiers changed from: package-private */
public final class zau implements zabt {
    private final /* synthetic */ zas zaep;

    private zau(zas zas) {
        this.zaep = zas;
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(@Nullable Bundle bundle) {
        this.zaep.zaen.lock();
        try {
            this.zaep.zaa((zas) bundle);
            this.zaep.zaek = ConnectionResult.RESULT_SUCCESS;
            this.zaep.zax();
        } finally {
            this.zaep.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(@NonNull ConnectionResult connectionResult) {
        this.zaep.zaen.lock();
        try {
            this.zaep.zaek = connectionResult;
            this.zaep.zax();
        } finally {
            this.zaep.zaen.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(int i, boolean z) {
        this.zaep.zaen.lock();
        try {
            if (!(this.zaep.zaem) && this.zaep.zael != null) {
                if (this.zaep.zael.isSuccess()) {
                    this.zaep.zaem = true;
                    this.zaep.zaef.onConnectionSuspended(i);
                    this.zaep.zaen.unlock();
                    return;
                }
            }
            this.zaep.zaem = false;
            this.zaep.zaa((zas) i, (int) z);
        } finally {
            this.zaep.zaen.unlock();
        }
    }

    /* synthetic */ zau(zas zas, zat zat) {
        this(zas);
    }
}
