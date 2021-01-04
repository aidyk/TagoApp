package org.jetbrains.anko.sdk15.listeners;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\f\u001a\u00020\u00062\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0012\u0010\f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016J.\u0010\u000f\u001a\u00020\u00062&\u0010\r\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\bJ*\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016J.\u0010\u0013\u001a\u00020\u00062&\u0010\r\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\bJ*\u0010\u0013\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R0\u0010\u0007\u001a$\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bX\u000e¢\u0006\u0002\n\u0000R0\u0010\u000b\u001a$\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bX\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__TextWatcher;", "Landroid/text/TextWatcher;", "()V", "_afterTextChanged", "Lkotlin/Function1;", "Landroid/text/Editable;", "", "_beforeTextChanged", "Lkotlin/Function4;", "", "", "_onTextChanged", "afterTextChanged", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "s", "beforeTextChanged", TtmlNode.START, "count", "after", "onTextChanged", "before", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __TextWatcher implements TextWatcher {
    private Function1<? super Editable, Unit> _afterTextChanged;
    private Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> _beforeTextChanged;
    private Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> _onTextChanged;

    public void beforeTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
        Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> function4 = this._beforeTextChanged;
        if (function4 != null) {
            function4.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    public final void beforeTextChanged(@NotNull Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> function4) {
        Intrinsics.checkParameterIsNotNull(function4, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._beforeTextChanged = function4;
    }

    public void onTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
        Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> function4 = this._onTextChanged;
        if (function4 != null) {
            function4.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    public final void onTextChanged(@NotNull Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> function4) {
        Intrinsics.checkParameterIsNotNull(function4, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onTextChanged = function4;
    }

    public void afterTextChanged(@Nullable Editable editable) {
        Function1<? super Editable, Unit> function1 = this._afterTextChanged;
        if (function1 != null) {
            function1.invoke(editable);
        }
    }

    public final void afterTextChanged(@NotNull Function1<? super Editable, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._afterTextChanged = function1;
    }
}
