package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "it", "Lcom/liber8tech/tago/model/TagoDevice;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$update$3<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ TagoService this$0;

    TagoService$update$3(TagoService tagoService) {
        this.this$0 = tagoService;
    }

    public final Observable<Unit> apply(@NotNull TagoDevice tagoDevice) {
        Intrinsics.checkParameterIsNotNull(tagoDevice, "it");
        return this.this$0.apiService.update(tagoDevice).subscribeOn(Schedulers.io()).onErrorResumeNext(Observable.empty()).map(AnonymousClass1.INSTANCE);
    }
}
