package com.liber8tech.tago;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.liber8tech.tago.android.TagoApplication;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.Target;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u001c\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000f"}, d2 = {"com/liber8tech/tago/PicassoRequest$startDownload$1", "Lcom/squareup/picasso/Target;", "onBitmapFailed", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "drawable", "Landroid/graphics/drawable/Drawable;", "onBitmapLoaded", "bitmap", "Landroid/graphics/Bitmap;", "loadedFrom", "Lcom/squareup/picasso/Picasso$LoadedFrom;", "onPrepareLoad", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PicassoExtensions.kt */
public final class PicassoRequest$startDownload$1 implements Target {
    final /* synthetic */ PicassoRequest this$0;

    /* JADX WARN: Incorrect args count in method signature: ()V */
    PicassoRequest$startDownload$1(PicassoRequest picassoRequest) {
        this.this$0 = picassoRequest;
    }

    @Override // com.squareup.picasso.Target
    public void onPrepareLoad(@Nullable Drawable drawable) {
        if (drawable != null) {
            this.this$0.getView().setBackground(drawable);
        }
    }

    @Override // com.squareup.picasso.Target
    public void onBitmapFailed(@NotNull Exception exc, @Nullable Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(exc, "e");
        if (drawable != null) {
            this.this$0.getView().setBackground(drawable);
        }
        this.this$0.getView().setTag(R.string.image_target_tag, null);
    }

    @Override // com.squareup.picasso.Target
    public void onBitmapLoaded(@Nullable Bitmap bitmap, @Nullable Picasso.LoadedFrom loadedFrom) {
        this.this$0.getView().setBackground(new BitmapDrawable(TagoApplication.Companion.getInstance().getResources(), bitmap));
        this.this$0.getView().setTag(R.string.image_target_tag, null);
    }
}
