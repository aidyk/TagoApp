package com.liber8tech.tago.android.activity;

import android.graphics.Bitmap;
import com.liber8tech.tago.android.drawable.PackPreview;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "bitmap", "Landroid/graphics/Bitmap;", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: PackActivity.kt */
final class PackActivity$setBackgroundImage$2<T> implements Consumer<Bitmap> {
    final /* synthetic */ PackActivity this$0;

    PackActivity$setBackgroundImage$2(PackActivity packActivity) {
        this.this$0 = packActivity;
    }

    public final void accept(@Nullable Bitmap bitmap) {
        if (bitmap != null) {
            PackActivity.access$getUi$p(this.this$0).getPatternsImage().setImageDrawable(new PackPreview(bitmap, this.this$0));
        }
    }
}
