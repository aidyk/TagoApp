package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.util.RxRealm;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "it", "apply", "(Lkotlin/Unit;)Lio/reactivex/Observable;"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoDetailsActivity.kt */
public final class TagoDetailsActivity$onCreate$5$1$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ TagoDevice $currentDevice;

    TagoDetailsActivity$onCreate$5$1$1(TagoDevice tagoDevice) {
        this.$currentDevice = tagoDevice;
    }

    @NotNull
    public final Observable<Unit> apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
        return RxRealm.INSTANCE.save(this.$currentDevice);
    }
}
