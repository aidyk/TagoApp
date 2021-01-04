package com.liber8tech.tago.service;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lokhttp3/ResponseBody;", "kotlin.jvm.PlatformType", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$uploadBitmap$3<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$uploadBitmap$3(ImageEditorService imageEditorService) {
        this.this$0 = imageEditorService;
    }

    public final Observable<ResponseBody> apply(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "it");
        return this.this$0.imageApi.downloadImage(str).subscribeOn(Schedulers.io());
    }
}
