package com.liber8tech.tago.android.view;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/android/view/SpinnerRowItem;", "Landroid/widget/TextView;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "init", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SpinnerRowItem.kt */
public final class SpinnerRowItem extends TextView {
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

    public SpinnerRowItem(@Nullable Context context) {
        super(context);
        init();
    }

    public final void init() {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dip = DimensionsKt.dip(context, 8);
        setPadding(dip, dip, dip, dip);
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setTextColor(this, AndroidExtensionsKt.getColorCompat(context2, 17170443));
        TypefacesExtensionKt.regular(this);
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        Sdk15PropertiesKt.setBackgroundColor(this, AndroidExtensionsKt.getColorCompat(context3, R.color.appBackground));
    }
}
