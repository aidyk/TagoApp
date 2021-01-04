package com.liber8tech.tago.service;

import android.graphics.Bitmap;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.glxn.qrgen.android.QRCode;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$uploadQrCodeImage$1<T, R> implements Function<T, R> {
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$uploadQrCodeImage$1(ImageEditorService imageEditorService) {
        this.this$0 = imageEditorService;
    }

    @NotNull
    public final Bitmap apply(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "it");
        ImageEditorService imageEditorService = this.this$0;
        Bitmap bitmap = QRCode.from(str).withSize(310, 310).bitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "QRCode.from(it).withSize(310, 310).bitmap()");
        return imageEditorService.addQRBackground(bitmap);
    }
}
