package com.liber8tech.tago.service;

import com.facebook.appevents.UserDataStore;
import com.facebook.internal.FacebookRequestErrorClassification;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\b\b\u0018\u00002\u00020\u0001B;\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\t\u0010\u001b\u001a\u00020\bHÆ\u0003JP\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\r¨\u0006\""}, d2 = {"Lcom/liber8tech/tago/service/OptionalProfile;", "", "birthYear", "", UserDataStore.COUNTRY, "", "gender", "newsletterSubscription", "", "marketingEmails", SettingsJsonConstants.ANALYTICS_KEY, "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZZZ)V", "getAnalytics", "()Z", "getBirthYear", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCountry", "()Ljava/lang/String;", "getGender", "getMarketingEmails", "getNewsletterSubscription", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/liber8tech/tago/service/OptionalProfile;", "equals", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class OptionalProfile {
    private final boolean analytics;
    @Nullable
    private final Integer birthYear;
    @Nullable
    private final String country;
    @Nullable
    private final String gender;
    private final boolean marketingEmails;
    private final boolean newsletterSubscription;

    @NotNull
    public static /* synthetic */ OptionalProfile copy$default(OptionalProfile optionalProfile, Integer num, String str, String str2, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            num = optionalProfile.birthYear;
        }
        if ((i & 2) != 0) {
            str = optionalProfile.country;
        }
        if ((i & 4) != 0) {
            str2 = optionalProfile.gender;
        }
        if ((i & 8) != 0) {
            z = optionalProfile.newsletterSubscription;
        }
        if ((i & 16) != 0) {
            z2 = optionalProfile.marketingEmails;
        }
        if ((i & 32) != 0) {
            z3 = optionalProfile.analytics;
        }
        return optionalProfile.copy(num, str, str2, z, z2, z3);
    }

    @Nullable
    public final Integer component1() {
        return this.birthYear;
    }

    @Nullable
    public final String component2() {
        return this.country;
    }

    @Nullable
    public final String component3() {
        return this.gender;
    }

    public final boolean component4() {
        return this.newsletterSubscription;
    }

    public final boolean component5() {
        return this.marketingEmails;
    }

    public final boolean component6() {
        return this.analytics;
    }

    @NotNull
    public final OptionalProfile copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, boolean z, boolean z2, boolean z3) {
        return new OptionalProfile(num, str, str2, z, z2, z3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof OptionalProfile) {
                OptionalProfile optionalProfile = (OptionalProfile) obj;
                if (Intrinsics.areEqual(this.birthYear, optionalProfile.birthYear) && Intrinsics.areEqual(this.country, optionalProfile.country) && Intrinsics.areEqual(this.gender, optionalProfile.gender)) {
                    if (this.newsletterSubscription == optionalProfile.newsletterSubscription) {
                        if (this.marketingEmails == optionalProfile.marketingEmails) {
                            if (this.analytics == optionalProfile.analytics) {
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
        Integer num = this.birthYear;
        int i = 0;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        String str = this.country;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.gender;
        if (str2 != null) {
            i = str2.hashCode();
        }
        int i2 = (hashCode2 + i) * 31;
        boolean z = this.newsletterSubscription;
        if (z) {
            z = true;
        }
        int i3 = z ? 1 : 0;
        int i4 = z ? 1 : 0;
        int i5 = z ? 1 : 0;
        int i6 = (i2 + i3) * 31;
        boolean z2 = this.marketingEmails;
        if (z2) {
            z2 = true;
        }
        int i7 = z2 ? 1 : 0;
        int i8 = z2 ? 1 : 0;
        int i9 = z2 ? 1 : 0;
        int i10 = (i6 + i7) * 31;
        boolean z3 = this.analytics;
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
        return "OptionalProfile(birthYear=" + this.birthYear + ", country=" + this.country + ", gender=" + this.gender + ", newsletterSubscription=" + this.newsletterSubscription + ", marketingEmails=" + this.marketingEmails + ", analytics=" + this.analytics + ")";
    }

    public OptionalProfile(@Nullable Integer num, @Nullable String str, @Nullable String str2, boolean z, boolean z2, boolean z3) {
        this.birthYear = num;
        this.country = str;
        this.gender = str2;
        this.newsletterSubscription = z;
        this.marketingEmails = z2;
        this.analytics = z3;
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

    public final boolean getNewsletterSubscription() {
        return this.newsletterSubscription;
    }

    public final boolean getMarketingEmails() {
        return this.marketingEmails;
    }

    public final boolean getAnalytics() {
        return this.analytics;
    }
}
