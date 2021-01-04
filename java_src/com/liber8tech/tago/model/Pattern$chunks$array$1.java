package com.liber8tech.tago.model;

import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012(\u0010\u0002\u001a$\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u00060\u0003H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "it", "", "", "kotlin.jvm.PlatformType", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: Pattern.kt */
public final class Pattern$chunks$array$1<T, R> implements Function<T, R> {
    public static final Pattern$chunks$array$1 INSTANCE = new Pattern$chunks$array$1();

    Pattern$chunks$array$1() {
    }

    @NotNull
    public final byte[] apply(@NotNull List<Byte> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        byte[] bArr = new byte[list.size()];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            Byte b = list.get(i);
            Intrinsics.checkExpressionValueIsNotNull(b, "it[i]");
            bArr[i] = b.byteValue();
        }
        return bArr;
    }
}
