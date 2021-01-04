package com.liber8tech.tago.service;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "id", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$downloadCreatedImages$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$downloadCreatedImages$2(ImageEditorService imageEditorService) {
        this.this$0 = imageEditorService;
    }

    @NotNull
    public final Observable<Unit> apply(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        return this.this$0.storeDownloadedImage(this.this$0.imageApi.downloadImage(str), str);
    }
}
