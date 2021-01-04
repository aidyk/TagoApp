package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbs implements Parcelable.Creator<zzbr> {
    zzbs() {
    }

    /* Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable.Creator
    @Deprecated
    public final /* synthetic */ zzbr[] newArray(int i) {
        return new zzbr[i];
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable.Creator
    @Deprecated
    public final /* synthetic */ zzbr createFromParcel(Parcel parcel) {
        return new zzbr(parcel);
    }
}
