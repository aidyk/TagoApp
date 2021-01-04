package com.liber8tech.tago.android.activity;

import android.app.AlertDialog;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.polidea.rxandroidble2.RxBleDevice;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AlertBuilder;
import org.jetbrains.anko.AndroidDialogsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskActivity.kt */
final class KioskActivity$ui$1 extends Lambda implements Function1<RxBleDevice, Unit> {
    final /* synthetic */ KioskActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    KioskActivity$ui$1(KioskActivity kioskActivity) {
        super(1);
        this.this$0 = kioskActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxBleDevice rxBleDevice) {
        invoke(rxBleDevice);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "device");
        KioskActivity kioskActivity = this.this$0;
        String string = this.this$0.getString(R.string.kiosk_alert_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.kiosk_alert_title)");
        AlertBuilder alert$default = AndroidDialogsKt.alert$default(kioskActivity, string, (CharSequence) null, (Function1) null, 6, (Object) null);
        String string2 = this.this$0.getString(R.string.enable);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.enable)");
        alert$default.positiveButton(string2, new KioskActivity$ui$1$$special$$inlined$apply$lambda$1(this, rxBleDevice));
        String string3 = this.this$0.getString(R.string.disable);
        Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.disable)");
        alert$default.negativeButton(string3, new KioskActivity$ui$1$$special$$inlined$apply$lambda$2(this, rxBleDevice));
        AlertDialog alertDialog = (AlertDialog) alert$default.show();
        alertDialog.getButton(-2).setTextColor(AndroidExtensionsKt.getColorCompat(this.this$0, R.color.black));
        alertDialog.getButton(-1).setTextColor(AndroidExtensionsKt.getColorCompat(this.this$0, R.color.black));
    }
}
