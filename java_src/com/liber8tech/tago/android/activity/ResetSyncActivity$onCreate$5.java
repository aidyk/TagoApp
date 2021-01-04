package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.android.analytics.Screens;
import io.reactivex.functions.Action;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetSyncActivity.kt */
final class ResetSyncActivity$onCreate$5 implements Action {
    final /* synthetic */ ResetSyncActivity this$0;

    ResetSyncActivity$onCreate$5(ResetSyncActivity resetSyncActivity) {
        this.this$0 = resetSyncActivity;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), Screens.sync, Category.tago, com.liber8tech.tago.android.analytics.Action.resetTago, null, null, null, null, null, null, 504, null);
        this.this$0.setResult(-1);
        this.this$0.finish();
    }
}
