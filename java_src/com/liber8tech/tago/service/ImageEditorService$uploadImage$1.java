package com.liber8tech.tago.service;

import android.graphics.Bitmap;
import android.graphics.PointF;
import com.facebook.share.internal.MessengerShareContentUtility;
import io.reactivex.functions.Function;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/io/File;", MessengerShareContentUtility.MEDIA_IMAGE, "Landroid/graphics/Bitmap;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$uploadImage$1<T, R> implements Function<T, R> {
    final /* synthetic */ PointF $leftTop;
    final /* synthetic */ PointF $rightBottom;
    final /* synthetic */ Bitmap $src;
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$uploadImage$1(ImageEditorService imageEditorService, Bitmap bitmap, PointF pointF, PointF pointF2) {
        this.this$0 = imageEditorService;
        this.$src = bitmap;
        this.$leftTop = pointF;
        this.$rightBottom = pointF2;
    }

    @NotNull
    public final File apply(@NotNull Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, MessengerShareContentUtility.MEDIA_IMAGE);
        Bitmap bitmap2 = this.$src;
        if (!(this.$leftTop == null || this.$rightBottom == null)) {
            int i = ((int) this.$rightBottom.y) - ((int) this.$leftTop.y);
            bitmap2 = Bitmap.createBitmap(bitmap, (int) this.$leftTop.x, (int) this.$leftTop.y, ((int) this.$rightBottom.x) - ((int) this.$leftTop.x), i);
        }
        // File file = new File(this.this$0.context.getFilesDir(), "image.jpg");
        File file = new File(this.this$0.context.getFilesDir(), Constants.INSTANCE.getCreatedFolderPath() + "image.jpg");

        FileOutputStream fileOutputStream = new FileOutputStream(file);
        if (bitmap2 != null) {
            bitmap2.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        }
        fileOutputStream.close();
        return file;
    }
}
