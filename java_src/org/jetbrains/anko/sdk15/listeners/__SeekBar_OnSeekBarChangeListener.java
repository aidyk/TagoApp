package org.jetbrains.anko.sdk15.listeners;

import android.support.v4.app.NotificationCompat;
import android.widget.SeekBar;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\f\u001a\u00020\b2 \u0010\r\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004J\"\u0010\f\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u001c\u0010\u0011\u001a\u00020\b2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\b0\nJ\u0012\u0010\u0011\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0012\u001a\u00020\b2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\b0\nJ\u0012\u0010\u0012\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016R*\u0010\u0003\u001a\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\b\u0018\u00010\nX\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\b\u0018\u00010\nX\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__SeekBar_OnSeekBarChangeListener;", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "()V", "_onProgressChanged", "Lkotlin/Function3;", "Landroid/widget/SeekBar;", "", "", "", "_onStartTrackingTouch", "Lkotlin/Function1;", "_onStopTrackingTouch", "onProgressChanged", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "seekBar", NotificationCompat.CATEGORY_PROGRESS, "fromUser", "onStartTrackingTouch", "onStopTrackingTouch", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __SeekBar_OnSeekBarChangeListener implements SeekBar.OnSeekBarChangeListener {
    private Function3<? super SeekBar, ? super Integer, ? super Boolean, Unit> _onProgressChanged;
    private Function1<? super SeekBar, Unit> _onStartTrackingTouch;
    private Function1<? super SeekBar, Unit> _onStopTrackingTouch;

    public void onProgressChanged(@Nullable SeekBar seekBar, int i, boolean z) {
        Function3<? super SeekBar, ? super Integer, ? super Boolean, Unit> function3 = this._onProgressChanged;
        if (function3 != null) {
            function3.invoke(seekBar, Integer.valueOf(i), Boolean.valueOf(z));
        }
    }

    public final void onProgressChanged(@NotNull Function3<? super SeekBar, ? super Integer, ? super Boolean, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(function3, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onProgressChanged = function3;
    }

    public void onStartTrackingTouch(@Nullable SeekBar seekBar) {
        Function1<? super SeekBar, Unit> function1 = this._onStartTrackingTouch;
        if (function1 != null) {
            function1.invoke(seekBar);
        }
    }

    public final void onStartTrackingTouch(@NotNull Function1<? super SeekBar, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onStartTrackingTouch = function1;
    }

    public void onStopTrackingTouch(@Nullable SeekBar seekBar) {
        Function1<? super SeekBar, Unit> function1 = this._onStopTrackingTouch;
        if (function1 != null) {
            function1.invoke(seekBar);
        }
    }

    public final void onStopTrackingTouch(@NotNull Function1<? super SeekBar, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onStopTrackingTouch = function1;
    }
}
