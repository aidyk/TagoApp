package com.liber8tech.tago.android.activity;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "it", "apply", "(Lkotlin/Unit;)Lio/reactivex/Observable;"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onResume$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onResume$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final Observable<Unit> apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
        return this.this$0.getImageEditorService().downloadCreatedImages().subscribeOn(Schedulers.io());
    }
}
