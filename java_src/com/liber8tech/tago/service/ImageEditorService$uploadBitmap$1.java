package com.liber8tech.tago.service;

import android.graphics.Bitmap;
import io.reactivex.functions.Function;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/io/File;", "it", "Landroid/graphics/Bitmap;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$uploadBitmap$1<T, R> implements Function<T, R> {
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$uploadBitmap$1(ImageEditorService imageEditorService) {
        this.this$0 = imageEditorService;
    }

    @NotNull
    public final File apply(@NotNull Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, "it");
        File file = new File(this.this$0.context.getFilesDir(), "image.jpg");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        fileOutputStream.close();
        return file;
    }
}
