package com.liber8tech.tago.android.activity;

import android.app.Activity;
import android.view.View;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke", "com/liber8tech/tago/android/activity/MainActivityUI$fabShow$2$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivityUI$fabShow$$inlined$apply$lambda$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Activity $context$inlined;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    MainActivityUI$fabShow$$inlined$apply$lambda$1(Activity activity) {
        super(1);
        this.$context$inlined = activity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        AnkoInternals.internalStartActivity(this.$context$inlined, StoreActivity.class, new Pair[0]);
    }
}
