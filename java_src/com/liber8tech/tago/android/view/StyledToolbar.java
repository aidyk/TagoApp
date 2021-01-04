package com.liber8tech.tago.android.view;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\r\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u00103\u001a\u00020\u0015H\u0002R*\u0010\f\u001a\u0004\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t@FX\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R&\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX.¢\u0006\u0002\n\u0000R*\u0010\u001c\u001a\u0004\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t@FX\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R&\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u000e\u0010\"\u001a\u00020\u001bX.¢\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020\u001bX.¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R(\u0010)\u001a\u0004\u0018\u00010(2\b\u0010\u000b\u001a\u0004\u0018\u00010(@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R&\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0017\"\u0004\b0\u0010\u0019R\u000e\u00101\u001a\u000202X.¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/liber8tech/tago/android/view/StyledToolbar;", "Landroid/support/v7/widget/Toolbar;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "value", "leftIcon", "getLeftIcon", "()Ljava/lang/Integer;", "setLeftIcon", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "leftIconOnCLick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getLeftIconOnCLick", "()Lkotlin/jvm/functions/Function1;", "setLeftIconOnCLick", "(Lkotlin/jvm/functions/Function1;)V", "leftNavigationIcon", "Landroid/widget/ImageView;", "rightIcon", "getRightIcon", "setRightIcon", "rightIconOnCLick", "getRightIconOnCLick", "setRightIconOnCLick", "rightNavigationIcon", "selectorIcon", "getSelectorIcon", "()Landroid/widget/ImageView;", "setSelectorIcon", "(Landroid/widget/ImageView;)V", "", MimeTypes.BASE_TYPE_TEXT, "getText", "()Ljava/lang/CharSequence;", "setText", "(Ljava/lang/CharSequence;)V", "titleIconOnClick", "getTitleIconOnClick", "setTitleIconOnClick", "titleTextView", "Landroid/widget/TextView;", "init", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StyledToolbar.kt */
public final class StyledToolbar extends Toolbar {
    private HashMap _$_findViewCache;
    @Nullable
    private Integer leftIcon;
    @NotNull
    private Function1<? super View, Unit> leftIconOnCLick = StyledToolbar$leftIconOnCLick$1.INSTANCE;
    private ImageView leftNavigationIcon;
    @Nullable
    private Integer rightIcon;
    @NotNull
    private Function1<? super View, Unit> rightIconOnCLick = StyledToolbar$rightIconOnCLick$1.INSTANCE;
    private ImageView rightNavigationIcon;
    @NotNull
    public ImageView selectorIcon;
    @Nullable
    private CharSequence text;
    @NotNull
    private Function1<? super View, Unit> titleIconOnClick = StyledToolbar$titleIconOnClick$1.INSTANCE;
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

    @NotNull
    public final ImageView getSelectorIcon() {
        ImageView imageView = this.selectorIcon;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectorIcon");
        }
        return imageView;
    }

    public final void setSelectorIcon(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.selectorIcon = imageView;
    }

    @Nullable
    public final CharSequence getText() {
        return this.text;
    }

    public final void setText(@Nullable CharSequence charSequence) {
        this.text = charSequence;
        TextView textView = this.titleTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleTextView");
        }
        textView.setText(charSequence);
    }

    @Nullable
    public final Integer getLeftIcon() {
        return this.leftIcon;
    }

    public final void setLeftIcon(@Nullable Integer num) {
        this.leftIcon = num;
        if (num != null) {
            ImageView imageView = this.leftNavigationIcon;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftNavigationIcon");
            }
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            imageView.setImageDrawable(AndroidExtensionsKt.tintedDrawable(context, num.intValue(), 17170443));
        }
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getLeftIconOnCLick() {
        return this.leftIconOnCLick;
    }

    public final void setLeftIconOnCLick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.leftIconOnCLick = function1;
    }

    @Nullable
    public final Integer getRightIcon() {
        return this.rightIcon;
    }

    public final void setRightIcon(@Nullable Integer num) {
        this.rightIcon = num;
        if (num != null) {
            ImageView imageView = this.rightNavigationIcon;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightNavigationIcon");
            }
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            imageView.setImageDrawable(AndroidExtensionsKt.tintedDrawable(context, num.intValue(), 17170443));
        }
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getRightIconOnCLick() {
        return this.rightIconOnCLick;
    }

    public final void setRightIconOnCLick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.rightIconOnCLick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getTitleIconOnClick() {
        return this.titleIconOnClick;
    }

    public final void setTitleIconOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.titleIconOnClick = function1;
    }

    public StyledToolbar(@Nullable Context context) {
        super(context);
        init();
    }

    public StyledToolbar(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public StyledToolbar(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private final void init() {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(this, AndroidExtensionsKt.getColorCompat(context, R.color.menuBackground));
        ImageView invoke = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        ImageView imageView = invoke;
        ImageView imageView2 = imageView;
        Context context2 = imageView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        int dip = DimensionsKt.dip(context2, 8);
        Context context3 = imageView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        int dip2 = DimensionsKt.dip(context3, 16);
        Context context4 = imageView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        int dip3 = DimensionsKt.dip(context4, 8);
        Context context5 = imageView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        imageView.setPadding(dip, dip2, dip3, DimensionsKt.dip(context5, 16));
        imageView2.setOnClickListener(new StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0(new StyledToolbar$init$$inlined$imageView$lambda$1(imageView, this)));
        AnkoInternals.INSTANCE.addView(this, invoke);
        this.leftNavigationIcon = imageView;
        ImageView imageView3 = this.leftNavigationIcon;
        if (imageView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftNavigationIcon");
        }
        Context context6 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        Toolbar.LayoutParams layoutParams = new Toolbar.LayoutParams(DimensionsKt.dip(context6, 40), CustomLayoutPropertiesKt.getMatchParent());
        layoutParams.gravity = 3;
        imageView3.setLayoutParams(layoutParams);
        TextView invoke2 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        TextView textView = invoke2;
        Sdk15PropertiesKt.setTextColor(textView, -1);
        textView.setTextSize(18.0f);
        textView.setGravity(17);
        textView.setOnClickListener(new StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0(new StyledToolbar$init$$inlined$textView$lambda$1(textView, this)));
        AnkoInternals.INSTANCE.addView(this, invoke2);
        this.titleTextView = textView;
        TextView textView2 = this.titleTextView;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleTextView");
        }
        Toolbar.LayoutParams layoutParams2 = new Toolbar.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams2.gravity = 17;
        textView2.setLayoutParams(layoutParams2);
        ImageView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        ImageView imageView4 = invoke3;
        Sdk15PropertiesKt.setImageResource(imageView4, R.drawable.ic_arrow_drop_down_white_24dp);
        ImageView imageView5 = imageView4;
        imageView5.setOnClickListener(new StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0(new StyledToolbar$init$$inlined$imageView$lambda$2(imageView4, this)));
        imageView5.setVisibility(8);
        AnkoInternals.INSTANCE.addView(this, invoke3);
        this.selectorIcon = imageView4;
        ImageView imageView6 = this.selectorIcon;
        if (imageView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectorIcon");
        }
        Toolbar.LayoutParams layoutParams3 = new Toolbar.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams3.gravity = 17;
        imageView6.setLayoutParams(layoutParams3);
        ImageView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(this), 0));
        ImageView imageView7 = invoke4;
        ImageView imageView8 = imageView7;
        Context context7 = imageView8.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        int dip4 = DimensionsKt.dip(context7, 8);
        Context context8 = imageView8.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        int dip5 = DimensionsKt.dip(context8, 16);
        Context context9 = imageView8.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context9, "context");
        int dip6 = DimensionsKt.dip(context9, 8);
        Context context10 = imageView8.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context10, "context");
        imageView7.setPadding(dip4, dip5, dip6, DimensionsKt.dip(context10, 16));
        imageView8.setOnClickListener(new StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0(new StyledToolbar$init$$inlined$imageView$lambda$3(imageView7, this)));
        AnkoInternals.INSTANCE.addView(this, invoke4);
        this.rightNavigationIcon = imageView7;
        ImageView imageView9 = this.rightNavigationIcon;
        if (imageView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightNavigationIcon");
        }
        Context context11 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context11, "context");
        Toolbar.LayoutParams layoutParams4 = new Toolbar.LayoutParams(DimensionsKt.dip(context11, 40), CustomLayoutPropertiesKt.getMatchParent());
        layoutParams4.gravity = 5;
        Context context12 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context12, "context");
        layoutParams4.setMargins(0, 0, DimensionsKt.dip(context12, 20), 0);
        imageView9.setLayoutParams(layoutParams4);
        int matchParent = CustomLayoutPropertiesKt.getMatchParent();
        Context context13 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context13, "context");
        setLayoutParams(new ViewGroup.LayoutParams(matchParent, AndroidExtensionsKt.attrAsDimen(context13, R.attr.actionBarSize)));
    }
}
