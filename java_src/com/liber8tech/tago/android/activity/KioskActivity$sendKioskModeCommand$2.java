package com.liber8tech.tago.android.activity;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "kotlin.jvm.PlatformType", "accept", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskActivity.kt */
final class KioskActivity$sendKioskModeCommand$2<T> implements Consumer<Unit> {
    final /* synthetic */ KioskActivity this$0;

    KioskActivity$sendKioskModeCommand$2(KioskActivity kioskActivity) {
        this.this$0 = kioskActivity;
    }

    public final void accept(Unit unit) {
        this.this$0.setResult(-1);
        this.this$0.finish();
    }
}
