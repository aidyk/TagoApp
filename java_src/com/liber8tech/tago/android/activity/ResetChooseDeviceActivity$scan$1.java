package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.android.ui.ResetChooseDeviceActivityUI;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "it", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetChooseDeviceActivity.kt */
public final class ResetChooseDeviceActivity$scan$1<T> implements Consumer<List<? extends RxBleDevice>> {
    final /* synthetic */ ResetChooseDeviceActivity this$0;

    ResetChooseDeviceActivity$scan$1(ResetChooseDeviceActivity resetChooseDeviceActivity) {
        this.this$0 = resetChooseDeviceActivity;
    }

    public final void accept(List<? extends RxBleDevice> list) {
        ResetChooseDeviceActivityUI resetChooseDeviceActivityUI = this.this$0.ui;
        Intrinsics.checkExpressionValueIsNotNull(list, "it");
        resetChooseDeviceActivityUI.setDevices(list);
    }
}
