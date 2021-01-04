package com.liber8tech.tago.android.ui;

import android.widget.Spinner;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"getElementOrNull", "", "Landroid/widget/Spinner;", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: ProfileActivityUI.kt */
public final class ProfileActivityUIKt {
    @Nullable
    public static final String getElementOrNull(@NotNull Spinner spinner) {
        Intrinsics.checkParameterIsNotNull(spinner, "receiver$0");
        if (spinner.getSelectedItemPosition() == 0) {
            return null;
        }
        return spinner.getSelectedItem().toString();
    }
}
