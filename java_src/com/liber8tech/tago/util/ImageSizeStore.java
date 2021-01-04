package com.liber8tech.tago.util;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0005J\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007R)\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/liber8tech/tago/util/ImageSizeStore;", "", "()V", "store", "Ljava/util/HashMap;", "", "Lkotlin/Pair;", "", "getStore", "()Ljava/util/HashMap;", "get", "tag", "put", "", SettingsJsonConstants.ICON_WIDTH_KEY, SettingsJsonConstants.ICON_HEIGHT_KEY, "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ImageSizeStore.kt */
public final class ImageSizeStore {
    @NotNull
    private final HashMap<String, Pair<Integer, Integer>> store = new HashMap<>();

    @NotNull
    public final HashMap<String, Pair<Integer, Integer>> getStore() {
        return this.store;
    }

    public final void put(@NotNull String str, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        this.store.put(str, new Pair<>(Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Nullable
    public final Pair<Integer, Integer> get(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        return this.store.get(str);
    }
}
