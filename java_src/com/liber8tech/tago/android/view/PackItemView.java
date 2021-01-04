package com.liber8tech.tago.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0017R\u000e\u0010\u000b\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/android/view/PackItemView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "boughtImage", "Landroid/widget/ImageView;", "featuredImage", "title", "Landroid/widget/TextView;", "init", "", "packOwned", "isBought", "", "setImage", "url", "", "setTitle", "name", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PackItemView.kt */
public final class PackItemView extends FrameLayout {
    private HashMap _$_findViewCache;
    private ImageView boughtImage;
    private ImageView featuredImage;
    private TextView title;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    public PackItemView(@Nullable Context context) {
        super(context);
        init();
    }

    public PackItemView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PackItemView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public final void setImage(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "url");
        RequestCreator load = Picasso.get().load(str);
        ImageView imageView = this.featuredImage;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuredImage");
        }
        load.into(imageView);
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        TextView textView = this.title;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("title");
        }
        textView.setText(str);
    }

    public final void packOwned(boolean z) {
        if (z) {
            ImageView imageView = this.boughtImage;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("boughtImage");
            }
            imageView.setVisibility(0);
            return;
        }
        ImageView imageView2 = this.boughtImage;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("boughtImage");
        }
        imageView2.setVisibility(8);
    }

    public final void init() {
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        _FrameLayout _framelayout = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout _linearlayout2 = _linearlayout;
        _FrameLayout invoke3 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _FrameLayout _framelayout2 = invoke3;
        _FrameLayout _framelayout3 = _framelayout2;
        ImageView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout3), 0));
        AnkoInternals.INSTANCE.addView(_framelayout3, invoke4);
        ImageView imageView = invoke4;
        _FrameLayout _framelayout4 = _framelayout2;
        Context context = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dip = DimensionsKt.dip(context, 120);
        Context context2 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        imageView.setLayoutParams(new FrameLayout.LayoutParams(new ViewGroup.LayoutParams(dip, DimensionsKt.dip(context2, (int) DimensionsKt.MDPI))));
        this.featuredImage = imageView;
        ImageView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout3), 0));
        ImageView imageView2 = invoke5;
        ImageView imageView3 = imageView2;
        imageView3.setVisibility(8);
        Sdk15PropertiesKt.setImageResource(imageView2, R.drawable.ic_check_circle_green_24dp);
        AnkoInternals.INSTANCE.addView(_framelayout3, invoke5);
        Context context3 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        int dip2 = DimensionsKt.dip(context3, 72);
        Context context4 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dip2, DimensionsKt.dip(context4, 72));
        layoutParams.gravity = 17;
        imageView3.setLayoutParams(layoutParams);
        this.boughtImage = imageView3;
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
        TextView invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke6;
        Context context5 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context5, R.color.packTitle));
        textView.setTextSize(13.0f);
        TypefacesExtensionKt.semibold(textView);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke6);
        TextView textView2 = textView;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        Context context6 = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        layoutParams2.topMargin = DimensionsKt.dip(context6, 12);
        textView2.setLayoutParams(layoutParams2);
        this.title = textView2;
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        AnkoInternals.INSTANCE.addView(this, invoke);
    }
}
