package com.liber8tech.tago.android.activity;

import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\r\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0014\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0002\u0010\tJ\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u000f\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0002\u0010\tJ\u0014\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016¨\u0006\u000f"}, d2 = {"Lcom/liber8tech/tago/android/activity/ToolbarElements;", "", "getContentView", "Landroid/view/View;", "getTitleOnClick", "Lkotlin/Function1;", "", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "getToolbarRightIcon", "getToolbarRightIconClick", "getToolbarTitle", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ToolbarElements.kt */
public interface ToolbarElements {
    @NotNull
    View getContentView();

    @NotNull
    Function1<View, Unit> getTitleOnClick();

    @Nullable
    Integer getToolbarLeftIcon();

    @NotNull
    Function1<View, Unit> getToolbarLeftIconClick();

    @Nullable
    Integer getToolbarRightIcon();

    @NotNull
    Function1<View, Unit> getToolbarRightIconClick();

    @Nullable
    CharSequence getToolbarTitle();

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
    /* compiled from: ToolbarElements.kt */
    public static final class DefaultImpls {
        @Nullable
        public static Integer getToolbarLeftIcon(ToolbarElements toolbarElements) {
            return null;
        }

        @Nullable
        public static Integer getToolbarRightIcon(ToolbarElements toolbarElements) {
            return null;
        }

        @Nullable
        public static CharSequence getToolbarTitle(ToolbarElements toolbarElements) {
            return null;
        }

        @NotNull
        public static Function1<View, Unit> getToolbarLeftIconClick(ToolbarElements toolbarElements) {
            return ToolbarElements$getToolbarLeftIconClick$1.INSTANCE;
        }

        @NotNull
        public static Function1<View, Unit> getToolbarRightIconClick(ToolbarElements toolbarElements) {
            return ToolbarElements$getToolbarRightIconClick$1.INSTANCE;
        }

        @NotNull
        public static Function1<View, Unit> getTitleOnClick(ToolbarElements toolbarElements) {
            return ToolbarElements$getTitleOnClick$1.INSTANCE;
        }
    }
}
