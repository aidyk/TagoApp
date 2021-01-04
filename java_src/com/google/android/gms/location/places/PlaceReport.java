package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;

@SafeParcelable.Class(creator = "PlaceReportCreator")
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new zza();
    @SafeParcelable.Field(getter = "getTag", id = 3)
    private final String tag;
    @SafeParcelable.VersionField(id = 1)
    private final int versionCode;
    @SafeParcelable.Field(getter = "getPlaceId", id = 2)
    private final String zza;
    @SafeParcelable.Field(getter = "getSource", id = 4)
    private final String zzb;

    @SafeParcelable.Constructor
    PlaceReport(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3) {
        this.versionCode = i;
        this.zza = str;
        this.tag = str2;
        this.zzb = str3;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @VisibleForTesting
    public static PlaceReport create(String str, String str2) {
        char c;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty("unknown");
        boolean z = false;
        switch ("unknown".hashCode()) {
            case -1436706272:
                if ("unknown".equals("inferredGeofencing")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1194968642:
                if ("unknown".equals("userReported")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -284840886:
                if ("unknown".equals("unknown")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -262743844:
                if ("unknown".equals("inferredReverseGeocoding")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1164924125:
                if ("unknown".equals("inferredSnappedToRoad")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1287171955:
                if ("unknown".equals("inferredRadioSignals")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                z = true;
                break;
        }
        Preconditions.checkArgument(z, "Invalid source");
        return new PlaceReport(1, str, str2, "unknown");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return Objects.equal(this.zza, placeReport.zza) && Objects.equal(this.tag, placeReport.tag) && Objects.equal(this.zzb, placeReport.zzb);
    }

    public String getPlaceId() {
        return this.zza;
    }

    public String getTag() {
        return this.tag;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.tag, this.zzb);
    }

    public String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add("placeId", this.zza);
        stringHelper.add("tag", this.tag);
        if (!"unknown".equals(this.zzb)) {
            stringHelper.add(ShareConstants.FEED_SOURCE_PARAM, this.zzb);
        }
        return stringHelper.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, getPlaceId(), false);
        SafeParcelWriter.writeString(parcel, 3, getTag(), false);
        SafeParcelWriter.writeString(parcel, 4, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
