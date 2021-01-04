package com.liber8tech.tago;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.Context;
import android.view.View;
import com.liber8tech.tago.android.TagoApplication;
import com.liber8tech.tago.di.TagoComponent;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0006\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\b¨\u0006\t"}, d2 = {"component", "Lcom/liber8tech/tago/di/TagoComponent;", "Landroid/app/Activity;", "getComponent", "(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;", "Landroid/app/Fragment;", "(Landroid/app/Fragment;)Lcom/liber8tech/tago/di/TagoComponent;", "Landroid/view/View;", "(Landroid/view/View;)Lcom/liber8tech/tago/di/TagoComponent;", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: DIExtensions.kt */
public final class DIExtensionsKt {
    @NotNull
    public static final TagoComponent getComponent(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        Application application = activity.getApplication();
        if (application != null) {
            return ((TagoApplication) application).getComponent();
        }
        throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.android.TagoApplication");
    }

    @NotNull
    public static final TagoComponent getComponent(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Context context = view.getContext();
        if (context != null) {
            return getComponent((Activity) context);
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
    }

    @NotNull
    public static final TagoComponent getComponent(@NotNull Fragment fragment) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return getComponent(activity);
    }
}
