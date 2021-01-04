package com.liber8tech.tago.service;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/liber8tech/tago/service/SignUp;", "", "email", "", "password", "termsOfCondition", "", "privacyPolicy", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "getEmail", "()Ljava/lang/String;", "getPassword", "getPrivacyPolicy", "()Z", "getTermsOfCondition", "component1", "component2", "component3", "component4", "copy", "equals", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class SignUp {
    @NotNull
    private final String email;
    @NotNull
    private final String password;
    private final boolean privacyPolicy;
    private final boolean termsOfCondition;

    @NotNull
    public static /* synthetic */ SignUp copy$default(SignUp signUp, String str, String str2, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = signUp.email;
        }
        if ((i & 2) != 0) {
            str2 = signUp.password;
        }
        if ((i & 4) != 0) {
            z = signUp.termsOfCondition;
        }
        if ((i & 8) != 0) {
            z2 = signUp.privacyPolicy;
        }
        return signUp.copy(str, str2, z, z2);
    }

    @NotNull
    public final String component1() {
        return this.email;
    }

    @NotNull
    public final String component2() {
        return this.password;
    }

    public final boolean component3() {
        return this.termsOfCondition;
    }

    public final boolean component4() {
        return this.privacyPolicy;
    }

    @NotNull
    public final SignUp copy(@NotNull String str, @NotNull String str2, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(str, "email");
        Intrinsics.checkParameterIsNotNull(str2, "password");
        return new SignUp(str, str2, z, z2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof SignUp) {
                SignUp signUp = (SignUp) obj;
                if (Intrinsics.areEqual(this.email, signUp.email) && Intrinsics.areEqual(this.password, signUp.password)) {
                    if (this.termsOfCondition == signUp.termsOfCondition) {
                        if (this.privacyPolicy == signUp.privacyPolicy) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.email;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.password;
        if (str2 != null) {
            i = str2.hashCode();
        }
        int i2 = (hashCode + i) * 31;
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
        return i6 + i7;
    }

    @NotNull
    public String toString() {
        return "SignUp(email=" + this.email + ", password=" + this.password + ", termsOfCondition=" + this.termsOfCondition + ", privacyPolicy=" + this.privacyPolicy + ")";
    }

    public SignUp(@NotNull String str, @NotNull String str2, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(str, "email");
        Intrinsics.checkParameterIsNotNull(str2, "password");
        this.email = str;
        this.password = str2;
        this.termsOfCondition = z;
        this.privacyPolicy = z2;
    }

    @NotNull
    public final String getEmail() {
        return this.email;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    public final boolean getPrivacyPolicy() {
        return this.privacyPolicy;
    }

    public final boolean getTermsOfCondition() {
        return this.termsOfCondition;
    }
}
