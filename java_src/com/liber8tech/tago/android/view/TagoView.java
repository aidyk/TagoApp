package com.liber8tech.tago.android.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.liber8tech.tago.ViewExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/android/view/TagoView;", "Landroid/widget/TextView;", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoView.kt */
public final class TagoView extends TextView {
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

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public TagoView(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        setTextSize(13.0f);
        Sdk15PropertiesKt.setTextColor(this, -1);
        int matchParent = CustomLayoutPropertiesKt.getMatchParent();
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        setLayoutParams(new ViewGroup.LayoutParams(matchParent, DimensionsKt.dip(context2, 56)));
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        setCompoundDrawablePadding(DimensionsKt.dip(context3, 16));
        ViewExtensionsKt.gravityCenterVertical(this);
        TypefacesExtensionKt.regular(this);
    }
}
