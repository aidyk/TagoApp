package com.liber8tech.tago.android.activity;

import android.content.DialogInterface;
import com.polidea.rxandroidble2.RxBleDevice;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/content/DialogInterface;", "invoke", "com/liber8tech/tago/android/activity/KioskActivity$ui$1$1$2"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskActivity.kt */
public final class KioskActivity$ui$1$$special$$inlined$apply$lambda$2 extends Lambda implements Function1<DialogInterface, Unit> {
    final /* synthetic */ RxBleDevice $device$inlined;
    final /* synthetic */ KioskActivity$ui$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    KioskActivity$ui$1$$special$$inlined$apply$lambda$2(KioskActivity$ui$1 kioskActivity$ui$1, RxBleDevice rxBleDevice) {
        super(1);
        this.this$0 = kioskActivity$ui$1;
        this.$device$inlined = rxBleDevice;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DialogInterface dialogInterface) {
        invoke(dialogInterface);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull DialogInterface dialogInterface) {
        Intrinsics.checkParameterIsNotNull(dialogInterface, "it");
        this.this$0.this$0.sendKioskModeCommand(this.$device$inlined, 0);
    }
}
