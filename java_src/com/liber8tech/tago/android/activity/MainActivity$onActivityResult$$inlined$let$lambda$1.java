package com.liber8tech.tago.android.activity;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import org.jetbrains.anko.internals.AnkoInternals;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "kotlin.jvm.PlatformType", "accept", "(Lkotlin/Unit;)V", "com/liber8tech/tago/android/activity/MainActivity$onActivityResult$1$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onActivityResult$$inlined$let$lambda$1<T> implements Consumer<Unit> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onActivityResult$$inlined$let$lambda$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final void accept(Unit unit) {
        AnkoInternals.internalStartActivity(this.this$0, ImageEditorActivity.class, new Pair[0]);
    }
}
