package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Category;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import okhttp3.ResponseBody;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lokhttp3/ResponseBody;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: ChangePasswordActivity.kt */
final class ChangePasswordActivity$clickSave$2<T> implements Consumer<ResponseBody> {
    final /* synthetic */ ChangePasswordActivity this$0;

    ChangePasswordActivity$clickSave$2(ChangePasswordActivity changePasswordActivity) {
        this.this$0 = changePasswordActivity;
    }

    public final void accept(ResponseBody responseBody) {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), "Change Password", Category.auth, "Change Password", null, null, null, null, null, null, 504, null);
        this.this$0.finish();
    }
}
