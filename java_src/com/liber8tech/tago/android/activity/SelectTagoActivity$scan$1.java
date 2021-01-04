package com.liber8tech.tago.android.activity;

import android.content.Intent;
import com.liber8tech.tago.Constants;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012>\u0010\u0002\u001a:\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004 \u0006*\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "it", "Lkotlin/Pair;", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
public final class SelectTagoActivity$scan$1<T> implements Consumer<Pair<? extends List<? extends RxBleDevice>, ? extends List<? extends RxBleDevice>>> {
    final /* synthetic */ boolean $autoUploadEnabled;
    final /* synthetic */ SelectTagoActivity this$0;

    SelectTagoActivity$scan$1(SelectTagoActivity selectTagoActivity, boolean z) {
        this.this$0 = selectTagoActivity;
        this.$autoUploadEnabled = z;
    }

    public final void accept(Pair<? extends List<? extends RxBleDevice>, ? extends List<? extends RxBleDevice>> pair) {
        Timber.d(pair.toString(), new Object[0]);
        if (((List) pair.getFirst()).size() == 1 && this.$autoUploadEnabled && this.this$0.myTagoList.size() == 1) {
            this.this$0.getBluetoothService().setSelectedDevice((RxBleDevice) CollectionsKt.first((List) pair.getFirst()));
            SelectTagoActivity selectTagoActivity = this.this$0;
            Intent intent = new Intent(this.this$0, SyncActivity.class);
            intent.putExtra(Constants.pattern, SelectTagoActivity.access$getPattern$p(this.this$0));
            intent.putExtra(Constants.autoUpload, true);
            selectTagoActivity.startActivityForResult(intent, SelectTagoActivity.REQUEST_EXIT);
            return;
        }
        this.this$0.ui.setOwnDevices((List) pair.getFirst());
        this.this$0.ui.setNearByDevices((List) pair.getSecond());
    }
}
