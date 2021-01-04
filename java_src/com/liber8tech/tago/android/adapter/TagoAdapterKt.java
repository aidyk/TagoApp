package com.liber8tech.tago.android.adapter;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0000¨\u0006\u0004"}, d2 = {"sizeWithHeader", "", "", "", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: TagoAdapter.kt */
public final class TagoAdapterKt {
    public static final int sizeWithHeader(@NotNull List<? extends Object> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (list.isEmpty()) {
            return 1;
        }
        return 1 + list.size();
    }
}
