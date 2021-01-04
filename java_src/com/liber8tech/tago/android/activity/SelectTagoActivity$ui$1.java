package com.liber8tech.tago.android.activity;

import android.content.Intent;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Action;
import com.polidea.rxandroidble2.RxBleDevice;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import org.apache.commons.io.IOUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
final class SelectTagoActivity$ui$1 extends Lambda implements Function1<RxBleDevice, Unit> {
    final /* synthetic */ SelectTagoActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SelectTagoActivity$ui$1(SelectTagoActivity selectTagoActivity) {
        super(1);
        this.this$0 = selectTagoActivity;
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
        this.this$0.getBluetoothService().setSelectedDevice(rxBleDevice);
        AnalyticsService analytics = this.this$0.getAnalytics();
        AnalyticsApi.DefaultImpls.trackEvent$default(analytics, "Upload", "Upload", Action.imageUpload, SelectTagoActivity.access$getPattern$p(this.this$0).getName() + IOUtils.DIR_SEPARATOR_UNIX + ((String) CollectionsKt.last(StringsKt.split$default((CharSequence) SelectTagoActivity.access$getPattern$p(this.this$0).getSrc(), new String[]{"/"}, false, 0, 6, (Object) null))), null, null, null, null, null, 496, null);
        SelectTagoActivity selectTagoActivity = this.this$0;
        Intent intent = new Intent(this.this$0, SyncActivity.class);
        intent.putExtra(Constants.pattern, SelectTagoActivity.access$getPattern$p(this.this$0));
        intent.putExtra(Constants.autoUpload, false);
        selectTagoActivity.startActivityForResult(intent, SelectTagoActivity.REQUEST_EXIT);
    }
}
