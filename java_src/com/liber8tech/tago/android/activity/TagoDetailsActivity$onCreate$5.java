package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.util.RxRealm;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoDetailsActivity.kt */
final class TagoDetailsActivity$onCreate$5 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ String $id;
    final /* synthetic */ TagoDetailsActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    TagoDetailsActivity$onCreate$5(TagoDetailsActivity tagoDetailsActivity, String str) {
        super(1);
        this.this$0 = tagoDetailsActivity;
        this.$id = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        TagoDevice access$getDevice$p = TagoDetailsActivity.access$getDevice$p(this.this$0);
        if (access$getDevice$p != null) {
            access$getDevice$p.setName(TagoDetailsActivity.access$getUi$p(this.this$0).getName().getText());
            RxRealm rxRealm = RxRealm.INSTANCE;
            String str = this.$id;
            Intrinsics.checkExpressionValueIsNotNull(str, "id");
            this.this$0.getDisposeBag().add(rxRealm.delete(TagoDevice.class, SettingsJsonConstants.APP_IDENTIFIER_KEY, str).flatMap(new TagoDetailsActivity$onCreate$5$1$1(access$getDevice$p)).subscribe(new TagoDetailsActivity$onCreate$5$$special$$inlined$let$lambda$1(this), TagoDetailsActivity$onCreate$5$1$3.INSTANCE));
        }
    }
}
