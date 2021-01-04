package com.liber8tech.tago.service;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001BG\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\tHÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003JU\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001f\u001a\u00020\t2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006$"}, d2 = {"Lcom/liber8tech/tago/service/ProfileData;", "", "firstName", "", "lastName", "id", "profile", "Lcom/liber8tech/tago/service/OptionalProfile;", "termsOfCondition", "", "privacyPolicy", "completedProfile", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liber8tech/tago/service/OptionalProfile;ZZZ)V", "getCompletedProfile", "()Z", "getFirstName", "()Ljava/lang/String;", "getId", "getLastName", "getPrivacyPolicy", "getProfile", "()Lcom/liber8tech/tago/service/OptionalProfile;", "getTermsOfCondition", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class ProfileData {
    private final boolean completedProfile;
    @Nullable
    private final String firstName;
    @NotNull
    private final String id;
    @Nullable
    private final String lastName;
    private final boolean privacyPolicy;
    @Nullable
    private final OptionalProfile profile;
    private final boolean termsOfCondition;

    @NotNull
    public static /* synthetic */ ProfileData copy$default(ProfileData profileData, String str, String str2, String str3, OptionalProfile optionalProfile, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = profileData.firstName;
        }
        if ((i & 2) != 0) {
            str2 = profileData.lastName;
        }
        if ((i & 4) != 0) {
            str3 = profileData.id;
        }
        if ((i & 8) != 0) {
            optionalProfile = profileData.profile;
        }
        if ((i & 16) != 0) {
            z = profileData.termsOfCondition;
        }
        if ((i & 32) != 0) {
            z2 = profileData.privacyPolicy;
        }
        if ((i & 64) != 0) {
            z3 = profileData.completedProfile;
        }
        return profileData.copy(str, str2, str3, optionalProfile, z, z2, z3);
    }

    @Nullable
    public final String component1() {
        return this.firstName;
    }

    @Nullable
    public final String component2() {
        return this.lastName;
    }

    @NotNull
    public final String component3() {
        return this.id;
    }

    @Nullable
    public final OptionalProfile component4() {
        return this.profile;
    }

    public final boolean component5() {
        return this.termsOfCondition;
    }

    public final boolean component6() {
        return this.privacyPolicy;
    }

    public final boolean component7() {
        return this.completedProfile;
    }

    @NotNull
    public final ProfileData copy(@Nullable String str, @Nullable String str2, @NotNull String str3, @Nullable OptionalProfile optionalProfile, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkParameterIsNotNull(str3, "id");
        return new ProfileData(str, str2, str3, optionalProfile, z, z2, z3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ProfileData) {
                ProfileData profileData = (ProfileData) obj;
                if (Intrinsics.areEqual(this.firstName, profileData.firstName) && Intrinsics.areEqual(this.lastName, profileData.lastName) && Intrinsics.areEqual(this.id, profileData.id) && Intrinsics.areEqual(this.profile, profileData.profile)) {
                    if (this.termsOfCondition == profileData.termsOfCondition) {
                        if (this.privacyPolicy == profileData.privacyPolicy) {
                            if (this.completedProfile == profileData.completedProfile) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.firstName;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.lastName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.id;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        OptionalProfile optionalProfile = this.profile;
        if (optionalProfile != null) {
            i = optionalProfile.hashCode();
        }
        int i2 = (hashCode3 + i) * 31;
        boolean z = this.termsOfCondition;
        if (z) {
            z = true;
        }
        int i3 = z ? 1 : 0;
        int i4 = z ? 1 : 0;
        int i5 = z ? 1 : 0;
        int i6 = (i2 + i3) * 31;
        boolean z2 = this.privacyPolicy;
        if (z2) {
            z2 = true;
        }
        int i7 = z2 ? 1 : 0;
        int i8 = z2 ? 1 : 0;
        int i9 = z2 ? 1 : 0;
        int i10 = (i6 + i7) * 31;
        boolean z3 = this.completedProfile;
        if (z3) {
            z3 = true;
        }
        int i11 = z3 ? 1 : 0;
        int i12 = z3 ? 1 : 0;
        int i13 = z3 ? 1 : 0;
        return i10 + i11;
    }

    @NotNull
    public String toString() {
        return "ProfileData(firstName=" + this.firstName + ", lastName=" + this.lastName + ", id=" + this.id + ", profile=" + this.profile + ", termsOfCondition=" + this.termsOfCondition + ", privacyPolicy=" + this.privacyPolicy + ", completedProfile=" + this.completedProfile + ")";
    }

    public ProfileData(@Nullable String str, @Nullable String str2, @NotNull String str3, @Nullable OptionalProfile optionalProfile, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkParameterIsNotNull(str3, "id");
        this.firstName = str;
        this.lastName = str2;
        this.id = str3;
        this.profile = optionalProfile;
        this.termsOfCondition = z;
        this.privacyPolicy = z2;
        this.completedProfile = z3;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ProfileData(String str, String str2, String str3, OptionalProfile optionalProfile, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : optionalProfile, z, z2, z3);
    }

    public final boolean getCompletedProfile() {
        return this.completedProfile;
    }

    public final boolean getPrivacyPolicy() {
        return this.privacyPolicy;
    }

    @Nullable
    public final OptionalProfile getProfile() {
        return this.profile;
    }

    public final boolean getTermsOfCondition() {
        return this.termsOfCondition;
    }
}
