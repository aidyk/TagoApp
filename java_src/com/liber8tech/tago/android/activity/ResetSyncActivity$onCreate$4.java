package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.android.analytics.Screens;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "ex", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetSyncActivity.kt */
final class ResetSyncActivity$onCreate$4<T> implements Consumer<Throwable> {
    final /* synthetic */ ResetSyncActivity this$0;

    ResetSyncActivity$onCreate$4(ResetSyncActivity resetSyncActivity) {
        this.this$0 = resetSyncActivity;
    }

    public final void accept(Throwable th) {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), Screens.sync, Category.tago, Action.resetTago, th.getMessage(), null, null, null, null, null, 496, null);
        ResetSyncActivity resetSyncActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(th, "ex");
        resetSyncActivity.displayError(th);
    }
}
