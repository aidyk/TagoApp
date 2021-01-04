package com.liber8tech.tago.android.activity;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivityUI$createView$1$1$2$8$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ TextView $this_textView;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    MainActivityUI$createView$1$1$2$8$1(TextView textView) {
        super(1);
        this.$this_textView = textView;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        Context context = this.$this_textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        AnkoInternals.internalStartActivity(context, StoreActivity.class, new Pair[0]);
    }
}
