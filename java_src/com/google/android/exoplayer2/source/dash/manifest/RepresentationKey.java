package com.google.android.exoplayer2.source.dash.manifest;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;

public final class RepresentationKey implements Parcelable, Comparable<RepresentationKey> {
    public static final Parcelable.Creator<RepresentationKey> CREATOR = new Parcelable.Creator<RepresentationKey>() {
        /* class com.google.android.exoplayer2.source.dash.manifest.RepresentationKey.AnonymousClass1 */

        @Override // android.os.Parcelable.Creator
        public RepresentationKey createFromParcel(Parcel parcel) {
            return new RepresentationKey(parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public RepresentationKey[] newArray(int i) {
            return new RepresentationKey[i];
        }
    };
    public final int adaptationSetIndex;
    public final int periodIndex;
    public final int representationIndex;

    public int describeContents() {
        return 0;
    }

    public RepresentationKey(int i, int i2, int i3) {
        this.periodIndex = i;
        this.adaptationSetIndex = i2;
        this.representationIndex = i3;
    }

    public String toString() {
        return this.periodIndex + "." + this.adaptationSetIndex + "." + this.representationIndex;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.periodIndex);
        parcel.writeInt(this.adaptationSetIndex);
        parcel.writeInt(this.representationIndex);
    }

    public int compareTo(@NonNull RepresentationKey representationKey) {
        int i = this.periodIndex - representationKey.periodIndex;
        if (i != 0) {
            return i;
        }
        int i2 = this.adaptationSetIndex - representationKey.adaptationSetIndex;
        return i2 == 0 ? this.representationIndex - representationKey.representationIndex : i2;
    }
}
