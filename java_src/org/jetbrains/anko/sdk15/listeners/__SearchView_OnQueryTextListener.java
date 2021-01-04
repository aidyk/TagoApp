package org.jetbrains.anko.sdk15.listeners;

import android.widget.SearchView;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0012\u0010\b\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\f\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0012\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__SearchView_OnQueryTextListener;", "Landroid/widget/SearchView$OnQueryTextListener;", "()V", "_onQueryTextChange", "Lkotlin/Function1;", "", "", "_onQueryTextSubmit", "onQueryTextChange", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "newText", "onQueryTextSubmit", SearchIntents.EXTRA_QUERY, "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __SearchView_OnQueryTextListener implements SearchView.OnQueryTextListener {
    private Function1<? super String, Boolean> _onQueryTextChange;
    private Function1<? super String, Boolean> _onQueryTextSubmit;

    public boolean onQueryTextSubmit(@Nullable String str) {
        Boolean invoke;
        Function1<? super String, Boolean> function1 = this._onQueryTextSubmit;
        if (function1 == null || (invoke = function1.invoke(str)) == null) {
            return false;
        }
        return invoke.booleanValue();
    }

    public final void onQueryTextSubmit(@NotNull Function1<? super String, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onQueryTextSubmit = function1;
    }

    public boolean onQueryTextChange(@Nullable String str) {
        Boolean invoke;
        Function1<? super String, Boolean> function1 = this._onQueryTextChange;
        if (function1 == null || (invoke = function1.invoke(str)) == null) {
            return false;
        }
        return invoke.booleanValue();
    }

    public final void onQueryTextChange(@NotNull Function1<? super String, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onQueryTextChange = function1;
    }
}
