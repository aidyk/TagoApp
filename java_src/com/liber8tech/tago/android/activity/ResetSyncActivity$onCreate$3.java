package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.android.ui.ResetSyncActivityUI;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "it", "", "kotlin.jvm.PlatformType", "accept", "(Ljava/lang/Long;)V"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetSyncActivity.kt */
final class ResetSyncActivity$onCreate$3<T> implements Consumer<Long> {
    final /* synthetic */ ResetSyncActivity this$0;

    ResetSyncActivity$onCreate$3(ResetSyncActivity resetSyncActivity) {
        this.this$0 = resetSyncActivity;
    }

    public final void accept(Long l) {
        ResetSyncActivityUI resetSyncActivityUI = this.this$0.ui;
        double longValue = (double) (l.longValue() + 1);
        Double.isNaN(longValue);
        resetSyncActivityUI.setProgress(longValue / 20.0d);
    }
}
