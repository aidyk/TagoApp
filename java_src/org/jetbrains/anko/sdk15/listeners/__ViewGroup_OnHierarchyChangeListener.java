package org.jetbrains.anko.sdk15.listeners;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J$\u0010\b\u001a\u00020\u00062\u001c\u0010\t\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u001c\u0010\b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\f\u001a\u00020\u00062\u001c\u0010\t\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u001c\u0010\f\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0016R&\u0010\u0003\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__ViewGroup_OnHierarchyChangeListener;", "Landroid/view/ViewGroup$OnHierarchyChangeListener;", "()V", "_onChildViewAdded", "Lkotlin/Function2;", "Landroid/view/View;", "", "_onChildViewRemoved", "onChildViewAdded", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "parent", "child", "onChildViewRemoved", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __ViewGroup_OnHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
    private Function2<? super View, ? super View, Unit> _onChildViewAdded;
    private Function2<? super View, ? super View, Unit> _onChildViewRemoved;

    public void onChildViewAdded(@Nullable View view, @Nullable View view2) {
        Function2<? super View, ? super View, Unit> function2 = this._onChildViewAdded;
        if (function2 != null) {
            function2.invoke(view, view2);
        }
    }

    public final void onChildViewAdded(@NotNull Function2<? super View, ? super View, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onChildViewAdded = function2;
    }

    public void onChildViewRemoved(@Nullable View view, @Nullable View view2) {
        Function2<? super View, ? super View, Unit> function2 = this._onChildViewRemoved;
        if (function2 != null) {
            function2.invoke(view, view2);
        }
    }

    public final void onChildViewRemoved(@NotNull Function2<? super View, ? super View, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onChildViewRemoved = function2;
    }
}
