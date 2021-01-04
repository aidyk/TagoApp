package com.liber8tech.tago.android.analytics;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/liber8tech/tago/android/analytics/Category;", "", "()V", "auth", "", "main", "store", "tago", "upload", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Category.kt */
public final class Category {
    public static final Category INSTANCE = new Category();
    @NotNull
    public static final String auth = "Auth";
    @NotNull
    public static final String main = "Main";
    @NotNull
    public static final String store = "Store";
    @NotNull
    public static final String tago = "Tago";
    @NotNull
    public static final String upload = "Upload";

    private Category() {
    }
}
