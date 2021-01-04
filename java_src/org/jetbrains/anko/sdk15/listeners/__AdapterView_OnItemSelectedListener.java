package org.jetbrains.anko.sdk15.listeners;

import android.view.View;
import android.widget.AdapterView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J4\u0010\f\u001a\u00020\t2,\u0010\r\u001a(\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0004J0\u0010\f\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\bH\u0016J \u0010\u0012\u001a\u00020\t2\u0018\u0010\r\u001a\u0014\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0004\u0012\u00020\t0\u000bJ\u0016\u0010\u0012\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016R6\u0010\u0003\u001a*\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0016\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bX\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__AdapterView_OnItemSelectedListener;", "Landroid/widget/AdapterView$OnItemSelectedListener;", "()V", "_onItemSelected", "Lkotlin/Function4;", "Landroid/widget/AdapterView;", "Landroid/view/View;", "", "", "", "_onNothingSelected", "Lkotlin/Function1;", "onItemSelected", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "p0", "p1", "p2", "p3", "onNothingSelected", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __AdapterView_OnItemSelectedListener implements AdapterView.OnItemSelectedListener {
    private Function4<? super AdapterView<?>, ? super View, ? super Integer, ? super Long, Unit> _onItemSelected;
    private Function1<? super AdapterView<?>, Unit> _onNothingSelected;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(@Nullable AdapterView<?> adapterView, @Nullable View view, int i, long j) {
        Function4<? super AdapterView<?>, ? super View, ? super Integer, ? super Long, Unit> function4 = this._onItemSelected;
        if (function4 != null) {
            function4.invoke(adapterView, view, Integer.valueOf(i), Long.valueOf(j));
        }
    }

    public final void onItemSelected(@NotNull Function4<? super AdapterView<?>, ? super View, ? super Integer, ? super Long, Unit> function4) {
        Intrinsics.checkParameterIsNotNull(function4, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onItemSelected = function4;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(@Nullable AdapterView<?> adapterView) {
        Function1<? super AdapterView<?>, Unit> function1 = this._onNothingSelected;
        if (function1 != null) {
            function1.invoke(adapterView);
        }
    }

    public final void onNothingSelected(@NotNull Function1<? super AdapterView<?>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onNothingSelected = function1;
    }
}
