package com.liber8tech.tago.android.adapter;

import com.liber8tech.tago.model.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/android/adapter/PatternListItem;", "Lcom/liber8tech/tago/android/adapter/MainListItem;", "pattern", "Lcom/liber8tech/tago/model/Pattern;", "(Lcom/liber8tech/tago/model/Pattern;)V", "getPattern", "()Lcom/liber8tech/tago/model/Pattern;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PatternAdapter.kt */
public final class PatternListItem extends MainListItem {
    @NotNull
    private final Pattern pattern;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PatternListItem(@NotNull Pattern pattern2) {
        super(null);
        Intrinsics.checkParameterIsNotNull(pattern2, "pattern");
        this.pattern = pattern2;
    }

    @NotNull
    public final Pattern getPattern() {
        return this.pattern;
    }
}
