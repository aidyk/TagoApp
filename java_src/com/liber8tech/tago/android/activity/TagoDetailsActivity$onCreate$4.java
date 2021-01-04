package com.liber8tech.tago.android.activity;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", Promotion.ACTION_VIEW, "Landroid/view/View;", "hasFocus", "", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoDetailsActivity.kt */
final class TagoDetailsActivity$onCreate$4 extends Lambda implements Function2<View, Boolean, Unit> {
    final /* synthetic */ TagoDetailsActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    TagoDetailsActivity$onCreate$4(TagoDetailsActivity tagoDetailsActivity) {
        super(2);
        this.this$0 = tagoDetailsActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(View view, Boolean bool) {
        invoke(view, bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull View view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        if (z) {
            TagoDetailsActivity.access$getUi$p(this.this$0).getSaveButton().setVisibility(0);
            TagoDetailsActivity.access$getUi$p(this.this$0).getDeleteButton().setVisibility(8);
            return;
        }
        TagoDetailsActivity.access$getUi$p(this.this$0).getSaveButton().callOnClick();
    }
}
