package com.liber8tech.tago.service;

import io.reactivex.functions.Function;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.Okio;
import org.apache.commons.io.IOUtils;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lokhttp3/ResponseBody;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$storeDownloadedImage$1<T, R> implements Function<T, R> {
    final /* synthetic */ String $id;
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$storeDownloadedImage$1(ImageEditorService imageEditorService, String str) {
        this.this$0 = imageEditorService;
        this.$id = str;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ResponseBody) obj);
        return Unit.INSTANCE;
    }

    public final void apply(@NotNull ResponseBody responseBody) {
        Intrinsics.checkParameterIsNotNull(responseBody, "it");
        File file = new File(this.this$0.context.getFilesDir(), this.this$0.runtimeConfig.getUserId());
        if (!file.exists()) {
            file.mkdir();
        }
        BufferedSink buffer = Okio.buffer(Okio.sink(new File(file.getPath() + IOUtils.DIR_SEPARATOR_UNIX + this.$id + ".jpg")));
        buffer.writeAll(responseBody.source());
        buffer.close();
    }
}
