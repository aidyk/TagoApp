package com.liber8tech.tago.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.UserDataStore;
import com.facebook.internal.FacebookRequestErrorClassification;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.android.parcel.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Parcelize
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001B}\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010&\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010'\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0001\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010*J\t\u0010+\u001a\u00020\u0006HÖ\u0001J\u0013\u0010,\u001a\u00020\n2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0006HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0006HÖ\u0001R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0016\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001c\u0010\u0011R\u0015\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001d\u0010\u0011R\u0015\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001e\u0010\u0011¨\u00066"}, d2 = {"Lcom/liber8tech/tago/service/UpdateProfileData;", "Landroid/os/Parcelable;", "firstName", "", "lastName", "birthYear", "", UserDataStore.COUNTRY, "gender", "newsletterSubscription", "", SettingsJsonConstants.ANALYTICS_KEY, "termsOfCondition", "privacyPolicy", "completedProfile", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getAnalytics", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getBirthYear", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCompletedProfile", "getCountry", "()Ljava/lang/String;", "getFirstName", "getGender", "getLastName", "getNewsletterSubscription", "getPrivacyPolicy", "getTermsOfCondition", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/liber8tech/tago/service/UpdateProfileData;", "describeContents", "equals", FacebookRequestErrorClassification.KEY_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileService.kt */
public final class UpdateProfileData implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    @Nullable
    private final Boolean analytics;
    @Nullable
    private final Integer birthYear;
    @Nullable
    private final Boolean completedProfile;
    @Nullable
    private final String country;
    @Nullable
    private final String firstName;
    @Nullable
    private final String gender;
    @Nullable
    private final String lastName;
    @Nullable
    private final Boolean newsletterSubscription;
    @Nullable
    private final Boolean privacyPolicy;
    @Nullable
    private final Boolean termsOfCondition;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
    public static class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final Object createFromParcel(@NotNull Parcel parcel) {
            Boolean bool;
            Boolean bool2;
            Boolean bool3;
            Boolean bool4;
            Boolean bool5;
            Intrinsics.checkParameterIsNotNull(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            boolean z = false;
            if (parcel.readInt() != 0) {
                bool = Boolean.valueOf(parcel.readInt() != 0);
            } else {
                bool = null;
            }
            if (parcel.readInt() != 0) {
                bool2 = Boolean.valueOf(parcel.readInt() != 0);
            } else {
                bool2 = null;
            }
            if (parcel.readInt() != 0) {
                bool3 = Boolean.valueOf(parcel.readInt() != 0);
            } else {
                bool3 = null;
            }
            if (parcel.readInt() != 0) {
                bool4 = Boolean.valueOf(parcel.readInt() != 0);
            } else {
                bool4 = null;
            }
            if (parcel.readInt() != 0) {
                if (parcel.readInt() != 0) {
                    z = true;
                }
                bool5 = Boolean.valueOf(z);
            } else {
                bool5 = null;
            }
            return new UpdateProfileData(readString, readString2, valueOf, readString3, readString4, bool, bool2, bool3, bool4, bool5);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        public final Object[] newArray(int i) {
            return new UpdateProfileData[i];
        }
    }

    public UpdateProfileData() {
        this(null, null, null, null, null, null, null, null, null, null, 1023, null);
    }

    @NotNull
    public static /* synthetic */ UpdateProfileData copy$default(UpdateProfileData updateProfileData, String str, String str2, Integer num, String str3, String str4, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, int i, Object obj) {
        return updateProfileData.copy((i & 1) != 0 ? updateProfileData.firstName : str, (i & 2) != 0 ? updateProfileData.lastName : str2, (i & 4) != 0 ? updateProfileData.birthYear : num, (i & 8) != 0 ? updateProfileData.country : str3, (i & 16) != 0 ? updateProfileData.gender : str4, (i & 32) != 0 ? updateProfileData.newsletterSubscription : bool, (i & 64) != 0 ? updateProfileData.analytics : bool2, (i & 128) != 0 ? updateProfileData.termsOfCondition : bool3, (i & 256) != 0 ? updateProfileData.privacyPolicy : bool4, (i & 512) != 0 ? updateProfileData.completedProfile : bool5);
    }

    @Nullable
    public final String component1() {
        return this.firstName;
    }

    @Nullable
    public final Boolean component10() {
        return this.completedProfile;
    }

    @Nullable
    public final String component2() {
        return this.lastName;
    }

    @Nullable
    public final Integer component3() {
        return this.birthYear;
    }

    @Nullable
    public final String component4() {
        return this.country;
    }

    @Nullable
    public final String component5() {
        return this.gender;
    }

    @Nullable
    public final Boolean component6() {
        return this.newsletterSubscription;
    }

    @Nullable
    public final Boolean component7() {
        return this.analytics;
    }

    @Nullable
    public final Boolean component8() {
        return this.termsOfCondition;
    }

    @Nullable
    public final Boolean component9() {
        return this.privacyPolicy;
    }

    @NotNull
    public final UpdateProfileData copy(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5) {
        return new UpdateProfileData(str, str2, num, str3, str4, bool, bool2, bool3, bool4, bool5);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateProfileData)) {
            return false;
        }
        UpdateProfileData updateProfileData = (UpdateProfileData) obj;
        return Intrinsics.areEqual(this.firstName, updateProfileData.firstName) && Intrinsics.areEqual(this.lastName, updateProfileData.lastName) && Intrinsics.areEqual(this.birthYear, updateProfileData.birthYear) && Intrinsics.areEqual(this.country, updateProfileData.country) && Intrinsics.areEqual(this.gender, updateProfileData.gender) && Intrinsics.areEqual(this.newsletterSubscription, updateProfileData.newsletterSubscription) && Intrinsics.areEqual(this.analytics, updateProfileData.analytics) && Intrinsics.areEqual(this.termsOfCondition, updateProfileData.termsOfCondition) && Intrinsics.areEqual(this.privacyPolicy, updateProfileData.privacyPolicy) && Intrinsics.areEqual(this.completedProfile, updateProfileData.completedProfile);
    }

    public int hashCode() {
        String str = this.firstName;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.lastName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.birthYear;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        String str3 = this.country;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.gender;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Boolean bool = this.newsletterSubscription;
        int hashCode6 = (hashCode5 + (bool != null ? bool.hashCode() : 0)) * 31;
        Boolean bool2 = this.analytics;
        int hashCode7 = (hashCode6 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        Boolean bool3 = this.termsOfCondition;
        int hashCode8 = (hashCode7 + (bool3 != null ? bool3.hashCode() : 0)) * 31;
        Boolean bool4 = this.privacyPolicy;
        int hashCode9 = (hashCode8 + (bool4 != null ? bool4.hashCode() : 0)) * 31;
        Boolean bool5 = this.completedProfile;
        if (bool5 != null) {
            i = bool5.hashCode();
        }
        return hashCode9 + i;
    }

    @NotNull
    public String toString() {
        return "UpdateProfileData(firstName=" + this.firstName + ", lastName=" + this.lastName + ", birthYear=" + this.birthYear + ", country=" + this.country + ", gender=" + this.gender + ", newsletterSubscription=" + this.newsletterSubscription + ", analytics=" + this.analytics + ", termsOfCondition=" + this.termsOfCondition + ", privacyPolicy=" + this.privacyPolicy + ", completedProfile=" + this.completedProfile + ")";
    }

    public void writeToParcel(@NotNull Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        Integer num = this.birthYear;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.country);
        parcel.writeString(this.gender);
        Boolean bool = this.newsletterSubscription;
        if (bool != null) {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else {
            parcel.writeInt(0);
        }
        Boolean bool2 = this.analytics;
        if (bool2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(bool2.booleanValue() ? 1 : 0);
        } else {
            parcel.writeInt(0);
        }
        Boolean bool3 = this.termsOfCondition;
        if (bool3 != null) {
            parcel.writeInt(1);
            parcel.writeInt(bool3.booleanValue() ? 1 : 0);
        } else {
            parcel.writeInt(0);
        }
        Boolean bool4 = this.privacyPolicy;
        if (bool4 != null) {
            parcel.writeInt(1);
            parcel.writeInt(bool4.booleanValue() ? 1 : 0);
        } else {
            parcel.writeInt(0);
        }
        Boolean bool5 = this.completedProfile;
        if (bool5 != null) {
            parcel.writeInt(1);
            parcel.writeInt(bool5.booleanValue() ? 1 : 0);
            return;
        }
        parcel.writeInt(0);
    }

    public UpdateProfileData(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4, @Nullable Boolean bool5) {
        this.firstName = str;
        this.lastName = str2;
        this.birthYear = num;
        this.country = str3;
        this.gender = str4;
        this.newsletterSubscription = bool;
        this.analytics = bool2;
        this.termsOfCondition = bool3;
        this.privacyPolicy = bool4;
        this.completedProfile = bool5;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UpdateProfileData(String str, String str2, Integer num, String str3, String str4, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? false : bool, (i & 64) != 0 ? false : bool2, (i & 128) != 0 ? false : bool3, (i & 256) != 0 ? false : bool4, (i & 512) != 0 ? false : bool5);
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    @Nullable
    public final Integer getBirthYear() {
        return this.birthYear;
    }

    @Nullable
    public final String getCountry() {
        return this.country;
    }

    @Nullable
    public final String getGender() {
        return this.gender;
    }

    @Nullable
    public final Boolean getNewsletterSubscription() {
        return this.newsletterSubscription;
    }

    @Nullable
    public final Boolean getAnalytics() {
        return this.analytics;
    }

    @Nullable
    public final Boolean getTermsOfCondition() {
        return this.termsOfCondition;
    }

    @Nullable
    public final Boolean getPrivacyPolicy() {
        return this.privacyPolicy;
    }

    @Nullable
    public final Boolean getCompletedProfile() {
        return this.completedProfile;
    }
}
