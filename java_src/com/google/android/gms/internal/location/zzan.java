package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzan extends zzb implements zzam {
    public zzan() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.location.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza(parcel.readInt(), parcel.createStringArray());
                return true;
            case 2:
                zzb(parcel.readInt(), parcel.createStringArray());
                return true;
            case 3:
                zza(parcel.readInt(), (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
