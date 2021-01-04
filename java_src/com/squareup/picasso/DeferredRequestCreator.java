package com.squareup.picasso;

import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public class DeferredRequestCreator implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    @VisibleForTesting
    Callback callback;
    private final RequestCreator creator;
    @VisibleForTesting
    final WeakReference<ImageView> target;

    DeferredRequestCreator(RequestCreator requestCreator, ImageView imageView, Callback callback2) {
        this.creator = requestCreator;
        this.target = new WeakReference<>(imageView);
        this.callback = callback2;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    public void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    public void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnPreDrawListener(this);
    }

    public boolean onPreDraw() {
        ImageView imageView = this.target.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width <= 0 || height <= 0) {
            return true;
        }
        imageView.removeOnAttachStateChangeListener(this);
        viewTreeObserver.removeOnPreDrawListener(this);
        this.target.clear();
        this.creator.unfit().resize(width, height).into(imageView, this.callback);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void cancel() {
        this.creator.clearTag();
        this.callback = null;
        ImageView imageView = this.target.get();
        if (imageView != null) {
            this.target.clear();
            imageView.removeOnAttachStateChangeListener(this);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public Object getTag() {
        return this.creator.getTag();
    }
}
