package com.liber8tech.tago.service;

import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lcom/liber8tech/tago/service/UpdateProfileData;", "it", "Lcom/liber8tech/tago/service/ProfileData;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ProfileService.kt */
public final class ProfileService$getProfile$1<T, R> implements Function<T, R> {
    public static final ProfileService$getProfile$1 INSTANCE = new ProfileService$getProfile$1();

    ProfileService$getProfile$1() {
    }

    @NotNull
    public final UpdateProfileData apply(@NotNull ProfileData profileData) {
        Intrinsics.checkParameterIsNotNull(profileData, "it");
        String firstName = profileData.getFirstName();
        String lastName = profileData.getLastName();
        OptionalProfile profile = profileData.getProfile();
        Integer birthYear = profile != null ? profile.getBirthYear() : null;
        OptionalProfile profile2 = profileData.getProfile();
        String country = profile2 != null ? profile2.getCountry() : null;
        OptionalProfile profile3 = profileData.getProfile();
        String gender = profile3 != null ? profile3.getGender() : null;
        OptionalProfile profile4 = profileData.getProfile();
        Boolean valueOf = profile4 != null ? Boolean.valueOf(profile4.getNewsletterSubscription()) : null;
        OptionalProfile profile5 = profileData.getProfile();
        return new UpdateProfileData(firstName, lastName, birthYear, country, gender, valueOf, profile5 != null ? Boolean.valueOf(profile5.getAnalytics()) : null, Boolean.valueOf(profileData.getTermsOfCondition()), Boolean.valueOf(profileData.getPrivacyPolicy()), Boolean.valueOf(profileData.getCompletedProfile()));
    }
}
