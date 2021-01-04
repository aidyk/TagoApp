package com.liber8tech.tago.service;

import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lcom/liber8tech/tago/service/UpdateProfileData;", "it", "Lcom/liber8tech/tago/service/FacebookSignInResponse;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class AuthService$signInFacebook$4<T, R> implements Function<T, R> {
    public static final AuthService$signInFacebook$4 INSTANCE = new AuthService$signInFacebook$4();

    AuthService$signInFacebook$4() {
    }

    @NotNull
    public final UpdateProfileData apply(@NotNull FacebookSignInResponse facebookSignInResponse) {
        Intrinsics.checkParameterIsNotNull(facebookSignInResponse, "it");
        String firstName = facebookSignInResponse.getUser().getFirstName();
        String lastName = facebookSignInResponse.getUser().getLastName();
        OptionalProfile profile = facebookSignInResponse.getUser().getProfile();
        Integer birthYear = profile != null ? profile.getBirthYear() : null;
        OptionalProfile profile2 = facebookSignInResponse.getUser().getProfile();
        String country = profile2 != null ? profile2.getCountry() : null;
        OptionalProfile profile3 = facebookSignInResponse.getUser().getProfile();
        String gender = profile3 != null ? profile3.getGender() : null;
        OptionalProfile profile4 = facebookSignInResponse.getUser().getProfile();
        Boolean valueOf = profile4 != null ? Boolean.valueOf(profile4.getNewsletterSubscription()) : null;
        OptionalProfile profile5 = facebookSignInResponse.getUser().getProfile();
        return new UpdateProfileData(firstName, lastName, birthYear, country, gender, valueOf, profile5 != null ? Boolean.valueOf(profile5.getAnalytics()) : null, Boolean.valueOf(facebookSignInResponse.getUser().getTermsOfCondition()), Boolean.valueOf(facebookSignInResponse.getUser().getPrivacyPolicy()), Boolean.valueOf(facebookSignInResponse.getUser().getCompletedProfile()));
    }
}
