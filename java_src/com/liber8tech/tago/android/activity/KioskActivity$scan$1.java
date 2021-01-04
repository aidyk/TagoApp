package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.android.ui.KioskActivityUI;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "it", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskActivity.kt */
final class KioskActivity$scan$1<T> implements Consumer<List<? extends RxBleDevice>> {
    final /* synthetic */ KioskActivity this$0;

    KioskActivity$scan$1(KioskActivity kioskActivity) {
        this.this$0 = kioskActivity;
    }

    public final void accept(List<? extends RxBleDevice> list) {
        KioskActivityUI access$getUi$p = KioskActivity.access$getUi$p(this.this$0);
        Intrinsics.checkExpressionValueIsNotNull(list, "it");
        access$getUi$p.setDevices(list);
    }
}
