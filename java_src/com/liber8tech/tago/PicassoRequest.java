package com.liber8tech.tago;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.android.TagoApplication;
import com.liber8tech.tago.util.ImageSizeStore;
import com.squareup.picasso.RequestCreator;
import com.squareup.picasso.Target;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0000J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\bJ\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001b\u001a\u00020\u0019H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\bX\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/liber8tech/tago/PicassoRequest;", "", Promotion.ACTION_VIEW, "Landroid/view/View;", "requestCreator", "Lcom/squareup/picasso/RequestCreator;", "(Landroid/view/View;Lcom/squareup/picasso/RequestCreator;)V", SettingsJsonConstants.ICON_HEIGHT_KEY, "", "imageSizeStore", "Lcom/liber8tech/tago/util/ImageSizeStore;", "imageSizeTag", "", "getRequestCreator", "()Lcom/squareup/picasso/RequestCreator;", "getView", "()Landroid/view/View;", SettingsJsonConstants.ICON_WIDTH_KEY, "centerCrop", "error", "drawable", "Landroid/graphics/drawable/Drawable;", "resId", "placeHolder", TtmlNode.START, "", "startDownload", "storeSizeAndStartDownload", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PicassoExtensions.kt */
public final class PicassoRequest {
    private int height = this.view.getHeight();
    private final ImageSizeStore imageSizeStore = TagoApplication.Companion.getInstance().getComponent().imageSizeStore();
    private String imageSizeTag = "";
    @NotNull
    private final RequestCreator requestCreator;
    @NotNull
    private final View view;
    private int width = this.view.getWidth();

    public PicassoRequest(@NotNull View view2, @NotNull RequestCreator requestCreator2) {
        Intrinsics.checkParameterIsNotNull(view2, Promotion.ACTION_VIEW);
        Intrinsics.checkParameterIsNotNull(requestCreator2, "requestCreator");
        this.view = view2;
        this.requestCreator = requestCreator2;
    }

    @NotNull
    public final RequestCreator getRequestCreator() {
        return this.requestCreator;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    public final void start() {
        if (this.width == 0 && this.height == 0) {
            View view2 = this.view;
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            viewTreeObserver.addOnPreDrawListener(new PicassoRequest$start$$inlined$doOnPreDraw$1(view2, viewTreeObserver, this));
            return;
        }
        storeSizeAndStartDownload();
    }

    @NotNull
    public final PicassoRequest imageSizeTag(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "imageSizeTag");
        Pair<Integer, Integer> pair = this.imageSizeStore.get(str);
        if (pair != null) {
            this.width = pair.getFirst().intValue();
            this.height = pair.getSecond().intValue();
        } else {
            this.imageSizeTag = str;
        }
        return this;
    }

    @NotNull
    public final PicassoRequest centerCrop() {
        this.requestCreator.centerCrop();
        return this;
    }

    @NotNull
    public final PicassoRequest placeHolder(int i) {
        this.requestCreator.placeholder(i);
        return this;
    }

    @NotNull
    public final PicassoRequest placeHolder(@NotNull Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        this.requestCreator.placeholder(drawable);
        return this;
    }

    @NotNull
    public final PicassoRequest error(@NotNull Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, "drawable");
        this.requestCreator.error(drawable);
        return this;
    }

    @NotNull
    public final PicassoRequest error(int i) {
        this.requestCreator.error(i);
        return this;
    }

    /* access modifiers changed from: private */
    public final void storeSizeAndStartDownload() {
        if (!Intrinsics.areEqual(this.imageSizeTag, "")) {
            this.imageSizeStore.put(this.imageSizeTag, this.width, this.height);
        }
        this.requestCreator.resize(this.width, this.height);
        startDownload();
    }

    private final void startDownload() {
        if (this.view instanceof ImageView) {
            this.requestCreator.into((ImageView) this.view);
            return;
        }
        this.view.setTag(R.string.image_target_tag, new PicassoRequest$startDownload$1(this));
        RequestCreator requestCreator2 = this.requestCreator;
        Object tag = this.view.getTag(R.string.image_target_tag);
        if (tag != null) {
            requestCreator2.into((Target) tag);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.squareup.picasso.Target");
    }
}
