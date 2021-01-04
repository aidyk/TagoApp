package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00010\u0001 \u0004*\u0012\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00050\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "it", "", "kotlin.jvm.PlatformType", "", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onCreate$9<T> implements Consumer<List<Unit>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onCreate$9(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final void accept(List<Unit> list) {
        MainActivity mainActivity = this.this$0;
        View findViewById = this.this$0.findViewById(16908290);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        ContextExtensionKt.tintedSnack(mainActivity, (int) R.string.restore_success, findViewById);
    }
}
