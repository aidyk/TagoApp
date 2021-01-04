package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.android.ui.TagoDetailsUI;
import com.liber8tech.tago.model.TagoDevice;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/model/TagoDevice;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoDetailsActivity.kt */
final class TagoDetailsActivity$onCreate$1<T> implements Consumer<TagoDevice> {
    final /* synthetic */ TagoDetailsActivity this$0;

    TagoDetailsActivity$onCreate$1(TagoDetailsActivity tagoDetailsActivity) {
        this.this$0 = tagoDetailsActivity;
    }

    public final void accept(TagoDevice tagoDevice) {
        TagoDetailsActivity.access$setDevice$p(this.this$0, tagoDevice);
        TagoDetailsUI access$getUi$p = TagoDetailsActivity.access$getUi$p(this.this$0);
        TagoDetailsActivity tagoDetailsActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(tagoDevice, "it");
        access$getUi$p.setTago(tagoDetailsActivity, tagoDevice);
        TagoDetailsActivity.m0access$refreshToolbarTitle$s1897208196(this.this$0, tagoDevice.getName());
    }
}
