package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pattern;
import io.reactivex.functions.Action;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
/* compiled from: SyncActivity.kt */
final class SyncActivity$onCreate$5 implements Action {
    final /* synthetic */ Pattern $pattern;
    final /* synthetic */ SyncActivity this$0;

    SyncActivity$onCreate$5(SyncActivity syncActivity, Pattern pattern) {
        this.this$0 = syncActivity;
        this.$pattern = pattern;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        SyncActivity.startPatternSync$default(this.this$0, this.$pattern, 0, 2, null);
    }
}
