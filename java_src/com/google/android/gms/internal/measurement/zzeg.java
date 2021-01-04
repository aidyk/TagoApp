package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzeg extends zzr implements zzef {
    public zzeg() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzr
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        zzb((Bundle) zzs.zza(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
