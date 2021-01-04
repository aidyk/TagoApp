package com.liber8tech.tago.service;

import com.liber8tech.tago.model.CreatedPattern;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Single;", "Lokhttp3/ResponseBody;", "it", "Lcom/liber8tech/tago/model/CreatedPattern;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$deletePattern$1<T, R> implements Function<T, SingleSource<? extends R>> {
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$deletePattern$1(ImageEditorService imageEditorService) {
        this.this$0 = imageEditorService;
    }

    @NotNull
    public final Single<ResponseBody> apply(@NotNull CreatedPattern createdPattern) {
        Intrinsics.checkParameterIsNotNull(createdPattern, "it");
        return this.this$0.imageApi.deleteImage(StringsKt.removeSuffix((String) CollectionsKt.last(StringsKt.split$default((CharSequence) createdPattern.getFileSrc(), new String[]{"/"}, false, 0, 6, (Object) null)), (CharSequence) ".jpg"));
    }
}
