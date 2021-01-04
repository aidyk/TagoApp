package com.liber8tech.tago.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.liber8tech.tago.PicassoExtensionsKt;
import com.liber8tech.tago.PicassoRequest;
import com.liber8tech.tago.R;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000eR\u0016\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX.¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/android/view/PatternItemView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "IMAGE_TAG", "", "kotlin.jvm.PlatformType", "patternImage", "Landroid/widget/ImageView;", "tagoPattern", "Lcom/liber8tech/tago/model/Pattern;", "init", "", "setup", "pattern", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PatternItemView.kt */
public final class PatternItemView extends FrameLayout {
    public static final Companion Companion = new Companion(null);
    private static final int bgId = 101;
    private static final int deleteButtonId = 103;
    private static final int fgId = 102;
    private static final int titleId = 104;
    private final String IMAGE_TAG = PatternItemView.class.getName();
    private HashMap _$_findViewCache;
    private ImageView patternImage;
    private Pattern tagoPattern;

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

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/liber8tech/tago/android/view/PatternItemView$Companion;", "", "()V", "bgId", "", "getBgId", "()I", "deleteButtonId", "getDeleteButtonId", "fgId", "getFgId", "titleId", "getTitleId", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: PatternItemView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getBgId() {
            return PatternItemView.bgId;
        }

        public final int getFgId() {
            return PatternItemView.fgId;
        }

        public final int getDeleteButtonId() {
            return PatternItemView.deleteButtonId;
        }

        public final int getTitleId() {
            return PatternItemView.titleId;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PatternItemView(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        init();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PatternItemView(@NotNull Context context, @NotNull AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        init();
    }

    public final void setup(@NotNull Pattern pattern) {
        Intrinsics.checkParameterIsNotNull(pattern, "pattern");
        setTag(pattern);
        this.tagoPattern = pattern;
        ImageView imageView = this.patternImage;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("patternImage");
        }
        PicassoRequest loadUrl = PicassoExtensionsKt.loadUrl(imageView, pattern.getSrc());
        String str = this.IMAGE_TAG;
        Intrinsics.checkExpressionValueIsNotNull(str, "IMAGE_TAG");
        loadUrl.imageSizeTag(str).centerCrop().start();
    }

    private final void init() {
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout invoke2 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _FrameLayout _framelayout2 = invoke2;
        _framelayout2.setId(bgId);
        _FrameLayout _framelayout3 = _framelayout2;
        TextView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout3), 0));
        TextView textView = invoke3;
        textView.setId(deleteButtonId);
        TextView textView2 = textView;
        Context context = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(textView2, AndroidExtensionsKt.getColorCompat(context, R.color.red));
        Sdk15PropertiesKt.setTextResource(textView, R.string.delete_pattern);
        Context context2 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context2, R.color.white));
        textView.setTextSize(15.0f);
        textView.setGravity(17);
        AnkoInternals.INSTANCE.addView(_framelayout3, invoke3);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.height = CustomLayoutPropertiesKt.getMatchParent();
        Context context3 = _framelayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams.width = DimensionsKt.dip(context3, 100);
        textView2.setLayoutParams(layoutParams);
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.height = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams2.width = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams2.gravity = 5;
        invoke2.setLayoutParams(layoutParams2);
        _FrameLayout invoke4 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _FrameLayout _framelayout4 = invoke4;
        _framelayout4.setId(fgId);
        _FrameLayout _framelayout5 = _framelayout4;
        ImageView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        ImageView imageView = invoke5;
        imageView.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        Sdk15PropertiesKt.setBackgroundResource(imageView, R.color.gray);
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke5);
        this.patternImage = imageView;
        AnkoInternals.INSTANCE.addView(_framelayout, invoke4);
        AnkoInternals.INSTANCE.addView(this, invoke);
    }
}
