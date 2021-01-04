package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import com.liber8tech.tago.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.IntentsKt;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke", "com/liber8tech/tago/android/ui/AboutActivityUI$createView$1$root$1$1$1", "com/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$settingsRowItem$lambda$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: AboutActivityUI.kt */
public final class AboutActivityUI$$special$$inlined$verticalLayout$lambda$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ AnkoContext $this_with$inlined;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    AboutActivityUI$$special$$inlined$verticalLayout$lambda$1(AnkoContext ankoContext) {
        super(1);
        this.$this_with$inlined = ankoContext;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        Context ctx = this.$this_with$inlined.getCtx();
        String string = this.$this_with$inlined.getCtx().getString(R.string.url_terms);
        Intrinsics.checkExpressionValueIsNotNull(string, "ctx.getString(R.string.url_terms)");
        IntentsKt.browse(ctx, string, true);
    }
}
