package com.liber8tech.tago.protocol;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\f\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0005¨\u0006\u0006"}, d2 = {"toUpperLowerBytes", "", "", "trim", "uint", "", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: Helpers.kt */
public final class HelpersKt {
    public static final int uint(byte b) {
        return b & UByte.MAX_VALUE;
    }

    @Nullable
    public static final byte[] trim(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "receiver$0");
        if (bArr.length <= 2) {
            return null;
        }
        byte[] bArr2 = new byte[(bArr.length - 2)];
        System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 2);
        return bArr2;
    }

    @NotNull
    public static final byte[] toUpperLowerBytes(int i) {
        return new byte[]{(byte) ((65280 & i) >> 8), (byte) (i & 255)};
    }
}
