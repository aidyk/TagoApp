package com.liber8tech.tago.android.activity;

import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "it", "Lcom/polidea/rxandroidble2/RxBleConnection;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskActivity.kt */
final class KioskActivity$sendKioskModeCommand$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ int $kioskMode;
    final /* synthetic */ KioskActivity this$0;

    KioskActivity$sendKioskModeCommand$1(KioskActivity kioskActivity, int i) {
        this.this$0 = kioskActivity;
        this.$kioskMode = i;
    }

    @NotNull
    public final Observable<Unit> apply(@NotNull RxBleConnection rxBleConnection) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "it");
        return this.this$0.getBluetoothService().kioskMode(rxBleConnection, this.$kioskMode);
    }
}
