package com.liber8tech.tago.service;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/liber8tech/tago/service/Terms;", "", "termsOfCondition", "", "privacyPolicy", "(ZZ)V", "getPrivacyPolicy", "()Z", "getTermsOfCondition", "component1", "component2", "copy", "equals", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileService.kt */
public final class Terms {
    private final boolean privacyPolicy;
    private final boolean termsOfCondition;

    @NotNull
    public static /* synthetic */ Terms copy$default(Terms terms, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = terms.termsOfCondition;
        }
        if ((i & 2) != 0) {
            z2 = terms.privacyPolicy;
        }
        return terms.copy(z, z2);
    }

    public final boolean component1() {
        return this.termsOfCondition;
    }

    public final boolean component2() {
        return this.privacyPolicy;
    }

    @NotNull
    public final Terms copy(boolean z, boolean z2) {
        return new Terms(z, z2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof Terms) {
                Terms terms = (Terms) obj;
                if (this.termsOfCondition == terms.termsOfCondition) {
                    if (this.privacyPolicy == terms.privacyPolicy) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.termsOfCondition;
        int i = 1;
        if (z) {
            z = true;
        }
        int i2 = z ? 1 : 0;
        int i3 = z ? 1 : 0;
        int i4 = z ? 1 : 0;
        int i5 = i2 * 31;
        boolean z2 = this.privacyPolicy;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i5 + i;
    }

    @NotNull
    public String toString() {
        return "Terms(termsOfCondition=" + this.termsOfCondition + ", privacyPolicy=" + this.privacyPolicy + ")";
    }

    public Terms(boolean z, boolean z2) {
        this.termsOfCondition = z;
        this.privacyPolicy = z2;
    }

    public final boolean getPrivacyPolicy() {
        return this.privacyPolicy;
    }

    public final boolean getTermsOfCondition() {
        return this.termsOfCondition;
    }
}
