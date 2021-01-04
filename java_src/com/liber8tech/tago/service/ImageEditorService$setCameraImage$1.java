package com.liber8tech.tago.service;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$setCameraImage$1<T, R> implements Function<T, R> {
    final /* synthetic */ byte[] $jpegBytes;
    final /* synthetic */ int $rotation;
    final /* synthetic */ int $targetHeight;
    final /* synthetic */ int $targetWidth;
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$setCameraImage$1(ImageEditorService imageEditorService, byte[] bArr, int i, int i2, int i3) {
        this.this$0 = imageEditorService;
        this.$jpegBytes = bArr;
        this.$rotation = i;
        this.$targetHeight = i2;
        this.$targetWidth = i3;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((byte[]) obj);
        return Unit.INSTANCE;
    }

    public final void apply(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "it");
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(this.$jpegBytes, 0, bArr.length);
        Matrix matrix = new Matrix();
        matrix.postRotate((float) this.$rotation);
        Intrinsics.checkExpressionValueIsNotNull(decodeByteArray, "bitmap");
        Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, true);
        ImageEditorService imageEditorService = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "bitmap");
        this.this$0.setCameraImage(imageEditorService.centerCropGrayscale(createBitmap, this.$targetHeight, this.$targetWidth));
    }
}
