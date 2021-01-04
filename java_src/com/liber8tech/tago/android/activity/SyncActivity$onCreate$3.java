package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.R;
import com.liber8tech.tago.android.ui.SyncActivityUI;
import com.liber8tech.tago.model.SyncState;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/model/SyncState;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SyncActivity.kt */
final class SyncActivity$onCreate$3<T> implements Consumer<SyncState> {
    final /* synthetic */ SyncActivity this$0;

    SyncActivity$onCreate$3(SyncActivity syncActivity) {
        this.this$0 = syncActivity;
    }

    public final void accept(SyncState syncState) {
        Timber.i(String.valueOf(syncState), new Object[0]);
        SyncActivityUI syncActivityUI = this.this$0.ui;
        double d = 1.0d;
        if (syncState.getProgress() < 1.0d) {
            d = syncState.getProgress();
        }
        syncActivityUI.setProgressValue(d);
        this.this$0.ui.getDetailText().setText(this.this$0.getString(R.string.firmware_updating_message));
    }
}
