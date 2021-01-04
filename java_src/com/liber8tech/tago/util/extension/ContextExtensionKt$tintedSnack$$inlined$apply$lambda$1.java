package com.liber8tech.tago.util.extension;

import android.content.Context;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "com/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$1$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: ContextExtension.kt */
public final class ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1 implements View.OnClickListener {
    final /* synthetic */ Function1 $action$inlined;
    final /* synthetic */ int $actionTitle$inlined;
    final /* synthetic */ Snackbar $this_apply;
    final /* synthetic */ Context $this_tintedSnack$inlined;

    ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1(Snackbar snackbar, Context context, int i, Function1 function1) {
        this.$this_apply = snackbar;
        this.$this_tintedSnack$inlined = context;
        this.$actionTitle$inlined = i;
        this.$action$inlined = function1;
    }

    public final void onClick(View view) {
        Function1 function1 = this.$action$inlined;
        View view2 = this.$this_apply.getView();
        Intrinsics.checkExpressionValueIsNotNull(view2, Promotion.ACTION_VIEW);
        function1.invoke(view2);
    }
}
