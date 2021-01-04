package com.liber8tech.tago.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0002J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f¨\u0006\u0010"}, d2 = {"Lcom/liber8tech/tago/android/view/TagoButton;", "Landroid/widget/Button;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "init", "", "setColor", TtmlNode.ATTR_TTS_COLOR, "Lcom/liber8tech/tago/android/view/TagoButtonColor;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoButton.kt */
public final class TagoButton extends Button {
    private HashMap _$_findViewCache;

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

    public TagoButton(@Nullable Context context) {
        super(context);
        init();
    }

    public TagoButton(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TagoButton(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public final void setColor(@NotNull TagoButtonColor tagoButtonColor) {
        Intrinsics.checkParameterIsNotNull(tagoButtonColor, TtmlNode.ATTR_TTS_COLOR);
        switch (tagoButtonColor) {
            case GOLD:
                Context context = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                setBackground(AndroidExtensionsKt.getDrawableCompat(context, R.drawable.gold_tago_button));
                Context context2 = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context2, "context");
                Sdk15PropertiesKt.setTextColor(this, AndroidExtensionsKt.getColorCompat(context2, R.color.white));
                return;
            case SILVER:
                Context context3 = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context3, "context");
                setBackground(AndroidExtensionsKt.getDrawableCompat(context3, R.drawable.silver_tago_button));
                return;
            case GREEN:
                Context context4 = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context4, "context");
                setBackground(AndroidExtensionsKt.getDrawableCompat(context4, R.drawable.green_tago_button));
                return;
            case FACEBOOK:
                Context context5 = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context5, "context");
                setBackground(AndroidExtensionsKt.getDrawableCompat(context5, R.drawable.facebook_tago_button));
                return;
            default:
                Context context6 = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context6, "context");
                setBackground(AndroidExtensionsKt.getDrawableCompat(context6, R.drawable.red_tago_button));
                return;
        }
    }

    private final void init() {
        setColor(TagoButtonColor.GOLD);
        Sdk15PropertiesKt.setTextColor(this, -1);
        TypefacesExtensionKt.bold(this);
    }
}
