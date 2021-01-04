package com.liber8tech.tago.service;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.media.ExifInterface;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "it", "apply", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$setGalleryImage$1<T, R> implements Function<T, R> {
    final /* synthetic */ int $targetHeight;
    final /* synthetic */ int $targetWidth;
    final /* synthetic */ Uri $uri;
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$setGalleryImage$1(ImageEditorService imageEditorService, Uri uri, int i, int i2) {
        this.this$0 = imageEditorService;
        this.$uri = uri;
        this.$targetHeight = i;
        this.$targetWidth = i2;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Unit) obj);
        return Unit.INSTANCE;
    }

    public final void apply(@NotNull Unit unit) {
        Intrinsics.checkParameterIsNotNull(unit, "it");
        Bitmap bitmap = MediaStore.Images.Media.getBitmap(this.this$0.context.getContentResolver(), this.$uri);
        int attributeInt = new ExifInterface(this.this$0.context.getContentResolver().openInputStream(this.$uri)).getAttributeInt(ExifInterface.TAG_ORIENTATION, 0);
        if (attributeInt == 3) {
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            Matrix matrix = new Matrix();
            matrix.postRotate(180.0f);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        } else if (attributeInt == 6) {
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
            int width2 = bitmap.getWidth();
            int height2 = bitmap.getHeight();
            Matrix matrix2 = new Matrix();
            matrix2.postRotate(90.0f);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width2, height2, matrix2, true);
        } else if (attributeInt == 8) {
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
            int width3 = bitmap.getWidth();
            int height3 = bitmap.getHeight();
            Matrix matrix3 = new Matrix();
            matrix3.postRotate(270.0f);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width3, height3, matrix3, true);
        }
        ImageEditorService imageEditorService = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "rotatedBitmap");
        this.this$0.setCameraImage(imageEditorService.resizedGrayscale(bitmap, this.$targetHeight, this.$targetWidth));
    }
}
