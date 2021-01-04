package com.liber8tech.tago.android.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.drawable.DevicePreview;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u000b\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X.¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/liber8tech/tago/android/view/TagoRowItem;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "lowBatteryImage", "Landroid/widget/ImageView;", "moreIcon", "tagoImage", "titleTextView", "Landroid/widget/TextView;", "init", "", "setTagoDrawable", TtmlNode.ATTR_TTS_COLOR, "Landroid/graphics/drawable/Drawable;", "setTitle", "title", "", "showLowBattery", "visible", "", "showMoreIcon", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoRowItem.kt */
public final class TagoRowItem extends LinearLayout {
    private HashMap _$_findViewCache;
    private ImageView lowBatteryImage;
    private ImageView moreIcon;
    private ImageView tagoImage;
    private TextView titleTextView;

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

    public TagoRowItem(@Nullable Context context) {
        super(context);
        init();
    }

    public TagoRowItem(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TagoRowItem(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private final void init() {
        setOrientation(0);
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dip = DimensionsKt.dip(context, 19);
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        int dip2 = DimensionsKt.dip(context2, 13);
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        setPadding(dip, dip2, 0, DimensionsKt.dip(context3, 13));
        ImageView invoke = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        ImageView imageView = invoke;
        imageView.setImageDrawable(DevicePreview.Companion.getUnknown());
        AnkoInternals.INSTANCE.addView(this, invoke);
        this.tagoImage = imageView;
        ImageView imageView2 = this.tagoImage;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoImage");
        }
        Context context4 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        int dip3 = DimensionsKt.dip(context4, 15);
        Context context5 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(dip3, DimensionsKt.dip(context5, 35)));
        TextView invoke2 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        TextView textView = invoke2;
        Context context6 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        textView.setPadding(DimensionsKt.dip(context6, 12), 0, 0, 0);
        textView.setTextSize(13.0f);
        Context context7 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context7, 17170443));
        TypefacesExtensionKt.regular(textView);
        textView.setGravity(16);
        AnkoInternals.INSTANCE.addView(this, invoke2);
        this.titleTextView = textView;
        TextView textView2 = this.titleTextView;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleTextView");
        }
        Context context8 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DimensionsKt.dip(context8, 0), CustomLayoutPropertiesKt.getMatchParent());
        layoutParams.weight = 1.0f;
        textView2.setLayoutParams(layoutParams);
        ImageView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        ImageView imageView3 = invoke3;
        imageView3.setImageResource(R.drawable.icon_battery);
        imageView3.setVisibility(4);
        AnkoInternals.INSTANCE.addView(this, invoke3);
        this.lowBatteryImage = imageView3;
        ImageView imageView4 = this.lowBatteryImage;
        if (imageView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lowBatteryImage");
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        Context context9 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context9, "context");
        layoutParams2.setMargins(0, 0, DimensionsKt.dip(context9, 16), 0);
        layoutParams2.gravity = 16;
        imageView4.setLayoutParams(layoutParams2);
        ImageView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        ImageView imageView5 = invoke4;
        imageView5.setImageResource(R.drawable.button_more);
        AnkoInternals.INSTANCE.addView(this, invoke4);
        this.moreIcon = imageView5;
        ImageView imageView6 = this.moreIcon;
        if (imageView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moreIcon");
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        Context context10 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context10, "context");
        layoutParams3.setMargins(0, 0, DimensionsKt.dip(context10, 19), 0);
        layoutParams3.gravity = 16;
        imageView6.setLayoutParams(layoutParams3);
    }

    public final void showLowBattery(boolean z) {
        if (z) {
            ImageView imageView = this.lowBatteryImage;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lowBatteryImage");
            }
            imageView.setVisibility(0);
            return;
        }
        ImageView imageView2 = this.lowBatteryImage;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lowBatteryImage");
        }
        imageView2.setVisibility(4);
    }

    public final void showMoreIcon(boolean z) {
        if (z) {
            ImageView imageView = this.moreIcon;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moreIcon");
            }
            imageView.setVisibility(0);
            return;
        }
        ImageView imageView2 = this.moreIcon;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moreIcon");
        }
        imageView2.setVisibility(4);
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "title");
        TextView textView = this.titleTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleTextView");
        }
        textView.setText(str);
    }

    public final void setTagoDrawable(@Nullable Drawable drawable) {
        ImageView imageView = this.tagoImage;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoImage");
        }
        imageView.setImageDrawable(drawable);
    }
}
