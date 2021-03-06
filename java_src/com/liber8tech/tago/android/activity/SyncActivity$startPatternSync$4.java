package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.model.Pattern;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SyncActivity.kt */
public final class SyncActivity$startPatternSync$4<T> implements Consumer<Throwable> {
    final /* synthetic */ Pattern $pattern;
    final /* synthetic */ SyncActivity this$0;

    SyncActivity$startPatternSync$4(SyncActivity syncActivity, Pattern pattern) {
        this.this$0 = syncActivity;
        this.$pattern = pattern;
    }

    public final void accept(Throwable th) {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), Screens.sync, Category.auth, Action.imageUpload, this.$pattern.getName(), null, null, null, null, null, 496, null);
        Timber.e(th);
        SyncActivity syncActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(th, "it");
        syncActivity.displayError(th);
    }
}
