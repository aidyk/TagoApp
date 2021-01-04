package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Comparator;

@SafeParcelable.Class(creator = "FlagCreator")
@SafeParcelable.Reserved({1})
public final class zzi extends AbstractSafeParcelable implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new zzk();
    private static final Comparator<zzi> zzai = new zzj();
    @SafeParcelable.Field(id = 2)
    public final String name;
    @SafeParcelable.Field(id = 3)
    private final long zzab;
    @SafeParcelable.Field(id = 4)
    private final boolean zzac;
    @SafeParcelable.Field(id = 5)
    private final double zzad;
    @SafeParcelable.Field(id = 6)
    private final String zzae;
    @SafeParcelable.Field(id = 7)
    private final byte[] zzaf;
    @SafeParcelable.Field(id = 8)
    private final int zzag;
    @SafeParcelable.Field(id = 9)
    public final int zzah;

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) double d, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) byte[] bArr, @SafeParcelable.Param(id = 8) int i, @SafeParcelable.Param(id = 9) int i2) {
        this.name = str;
        this.zzab = j;
        this.zzac = z;
        this.zzad = d;
        this.zzae = str2;
        this.zzaf = bArr;
        this.zzag = i;
        this.zzah = i2;
    }

    private static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzi zzi) {
        zzi zzi2 = zzi;
        int compareTo = this.name.compareTo(zzi2.name);
        if (compareTo != 0) {
            return compareTo;
        }
        int compare = compare(this.zzag, zzi2.zzag);
        if (compare != 0) {
            return compare;
        }
        switch (this.zzag) {
            case 1:
                long j = this.zzab;
                long j2 = zzi2.zzab;
                if (j < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            case 2:
                boolean z = this.zzac;
                if (z == zzi2.zzac) {
                    return 0;
                }
                return z ? 1 : -1;
            case 3:
                return Double.compare(this.zzad, zzi2.zzad);
            case 4:
                String str = this.zzae;
                String str2 = zzi2.zzae;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return str.compareTo(str2);
            case 5:
                if (this.zzaf == zzi2.zzaf) {
                    return 0;
                }
                if (this.zzaf == null) {
                    return -1;
                }
                if (zzi2.zzaf == null) {
                    return 1;
                }
                for (int i = 0; i < Math.min(this.zzaf.length, zzi2.zzaf.length); i++) {
                    int i2 = this.zzaf[i] - zzi2.zzaf[i];
                    if (i2 != 0) {
                        return i2;
                    }
                }
                return compare(this.zzaf.length, zzi2.zzaf.length);
            default:
                int i3 = this.zzag;
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid enum value: ");
                sb.append(i3);
                throw new AssertionError(sb.toString());
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean equals(Object obj) {
        if (obj instanceof zzi) {
            zzi zzi = (zzi) obj;
            if (zzn.equals(this.name, zzi.name) && this.zzag == zzi.zzag && this.zzah == zzi.zzah) {
                switch (this.zzag) {
                    case 1:
                        if (this.zzab == zzi.zzab) {
                            return true;
                        }
                        break;
                    case 2:
                        return this.zzac == zzi.zzac;
                    case 3:
                        return this.zzad == zzi.zzad;
                    case 4:
                        return zzn.equals(this.zzae, zzi.zzae);
                    case 5:
                        return Arrays.equals(this.zzaf, zzi.zzaf);
                    default:
                        int i = this.zzag;
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("Invalid enum value: ");
                        sb.append(i);
                        throw new AssertionError(sb.toString());
                }
            }
        }
        return false;
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.name);
        sb.append(", ");
        switch (this.zzag) {
            case 1:
                sb.append(this.zzab);
                break;
            case 2:
                sb.append(this.zzac);
                break;
            case 3:
                sb.append(this.zzad);
                break;
            case 4:
                sb.append("'");
                str2 = this.zzae;
                sb.append(str2);
                str = "'";
                sb.append(str);
                break;
            case 5:
                if (this.zzaf == null) {
                    str = "null";
                    sb.append(str);
                    break;
                } else {
                    sb.append("'");
                    str2 = Base64.encodeToString(this.zzaf, 3);
                    sb.append(str2);
                    str = "'";
                    sb.append(str);
                }
            default:
                String str3 = this.name;
                int i = this.zzag;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str3);
                sb2.append(", ");
                sb2.append(i);
                throw new AssertionError(sb2.toString());
        }
        sb.append(", ");
        sb.append(this.zzag);
        sb.append(", ");
        sb.append(this.zzah);
        sb.append(")");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzab);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzac);
        SafeParcelWriter.writeDouble(parcel, 5, this.zzad);
        SafeParcelWriter.writeString(parcel, 6, this.zzae, false);
        SafeParcelWriter.writeByteArray(parcel, 7, this.zzaf, false);
        SafeParcelWriter.writeInt(parcel, 8, this.zzag);
        SafeParcelWriter.writeInt(parcel, 9, this.zzah);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
