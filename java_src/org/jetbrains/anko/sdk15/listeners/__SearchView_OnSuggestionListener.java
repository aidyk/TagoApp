package org.jetbrains.anko.sdk15.listeners;

import android.widget.SearchView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u001a\u0010\f\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__SearchView_OnSuggestionListener;", "Landroid/widget/SearchView$OnSuggestionListener;", "()V", "_onSuggestionClick", "Lkotlin/Function1;", "", "", "_onSuggestionSelect", "onSuggestionClick", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "position", "onSuggestionSelect", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __SearchView_OnSuggestionListener implements SearchView.OnSuggestionListener {
    private Function1<? super Integer, Boolean> _onSuggestionClick;
    private Function1<? super Integer, Boolean> _onSuggestionSelect;

    public boolean onSuggestionSelect(int i) {
        Boolean invoke;
        Function1<? super Integer, Boolean> function1 = this._onSuggestionSelect;
        if (function1 == null || (invoke = function1.invoke(Integer.valueOf(i))) == null) {
            return false;
        }
        return invoke.booleanValue();
    }

    public final void onSuggestionSelect(@NotNull Function1<? super Integer, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onSuggestionSelect = function1;
    }

    public boolean onSuggestionClick(int i) {
        Boolean invoke;
        Function1<? super Integer, Boolean> function1 = this._onSuggestionClick;
        if (function1 == null || (invoke = function1.invoke(Integer.valueOf(i))) == null) {
            return false;
        }
        return invoke.booleanValue();
    }

    public final void onSuggestionClick(@NotNull Function1<? super Integer, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onSuggestionClick = function1;
    }
}
