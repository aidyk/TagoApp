package com.liber8tech.tago.service;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ServerProtocol;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/liber8tech/tago/service/FirmwareResponse;", "", ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "", "url", "(Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getVersion", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: FirmwareService.kt */
public final class FirmwareResponse {
    @NotNull
    private final String url;
    @NotNull
    private final String version;

    @NotNull
    public static /* synthetic */ FirmwareResponse copy$default(FirmwareResponse firmwareResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = firmwareResponse.version;
        }
        if ((i & 2) != 0) {
            str2 = firmwareResponse.url;
        }
        return firmwareResponse.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.version;
    }

    @NotNull
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final FirmwareResponse copy(@NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(str, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        Intrinsics.checkParameterIsNotNull(str2, "url");
        return new FirmwareResponse(str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FirmwareResponse)) {
            return false;
        }
        FirmwareResponse firmwareResponse = (FirmwareResponse) obj;
        return Intrinsics.areEqual(this.version, firmwareResponse.version) && Intrinsics.areEqual(this.url, firmwareResponse.url);
    }

    public int hashCode() {
        String str = this.version;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "FirmwareResponse(version=" + this.version + ", url=" + this.url + ")";
    }

    public FirmwareResponse(@NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(str, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        Intrinsics.checkParameterIsNotNull(str2, "url");
        this.version = str;
        this.url = str2;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }
}
