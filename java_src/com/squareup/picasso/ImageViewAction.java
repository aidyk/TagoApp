package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;

/* access modifiers changed from: package-private */
public class ImageViewAction extends Action<ImageView> {
    Callback callback;

    ImageViewAction(Picasso picasso, ImageView imageView, Request request, int i, int i2, int i3, Drawable drawable, String str, Object obj, Callback callback2, boolean z) {
        super(picasso, imageView, request, i, i2, i3, drawable, str, obj, z);
        this.callback = callback2;
    }

    @Override // com.squareup.picasso.Action
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            ImageView imageView = (ImageView) this.target.get();
            if (imageView != null) {
                PicassoDrawable.setBitmap(imageView, this.picasso.context, bitmap, loadedFrom, this.noFade, this.picasso.indicatorsEnabled);
                if (this.callback != null) {
                    this.callback.onSuccess();
                    return;
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
    }

    @Override // com.squareup.picasso.Action
    public void error(Exception exc) {
        ImageView imageView = (ImageView) this.target.get();
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).stop();
            }
            if (this.errorResId != 0) {
                imageView.setImageResource(this.errorResId);
            } else if (this.errorDrawable != null) {
                imageView.setImageDrawable(this.errorDrawable);
            }
            if (this.callback != null) {
                this.callback.onError(exc);
            }
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void cancel() {
        super.cancel();
        if (this.callback != null) {
            this.callback = null;
        }
    }
}
