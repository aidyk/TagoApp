package com.liber8tech.tago.service;

import com.liber8tech.tago.model.CreatedPattern;
import io.reactivex.functions.Function;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lokhttp3/ResponseBody;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$deletePattern$2<T, R> implements Function<T, R> {
    final /* synthetic */ CreatedPattern $createdPattern;

    ImageEditorService$deletePattern$2(CreatedPattern createdPattern) {
        this.$createdPattern = createdPattern;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ResponseBody) obj);
        return Unit.INSTANCE;
    }

    public final void apply(@NotNull ResponseBody responseBody) {
        Intrinsics.checkParameterIsNotNull(responseBody, "it");
        File file = new File(this.$createdPattern.getFileSrc());
        if (file.exists()) {
            file.delete();
        }
    }
}
