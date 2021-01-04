package androidx.core.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.support.annotation.Px;
import android.support.annotation.RequiresApi;
import android.support.annotation.StringRes;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.facebook.internal.NativeProtocol;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000X\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u0017\u0010\u000b\u001a\u00020\f*\u00020\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH\b\u001a2\u0010\u000f\u001a\u00020\f*\u00020\u00032#\b\u0004\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u0011H\b\u001a2\u0010\u0015\u001a\u00020\f*\u00020\u00032#\b\u0004\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u0011H\b\u001a2\u0010\u0016\u001a\u00020\f*\u00020\u00032#\b\u0004\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\f0\u0011H\b\u001a%\u0010\u0017\u001a\u00020\u0018*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\b\u0004\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u001bH\b\u001a%\u0010\u001c\u001a\u00020\u0018*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\b\u0004\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u001bH\b\u001a\u0017\u0010\u001d\u001a\u00020\f*\u00020\u00032\b\b\u0001\u0010\u001e\u001a\u00020\u000eH\b\u001a\u0014\u0010\u001f\u001a\u00020 *\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\"\u001a7\u0010#\u001a\u00020\f\"\n\b\u0000\u0010$\u0018\u0001*\u00020%*\u00020\u00032\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u00020\f0\u0011¢\u0006\u0002\b'H\b¢\u0006\u0002\b(\u001a&\u0010#\u001a\u00020\f*\u00020\u00032\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\f0\u0011¢\u0006\u0002\b'H\b\u001a5\u0010)\u001a\u00020\f*\u00020\u00032\b\b\u0003\u0010*\u001a\u00020\u000e2\b\b\u0003\u0010+\u001a\u00020\u000e2\b\b\u0003\u0010,\u001a\u00020\u000e2\b\b\u0003\u0010-\u001a\u00020\u000eH\b\u001a5\u0010.\u001a\u00020\f*\u00020\u00032\b\b\u0003\u0010/\u001a\u00020\u000e2\b\b\u0003\u0010+\u001a\u00020\u000e2\b\b\u0003\u00100\u001a\u00020\u000e2\b\b\u0003\u0010-\u001a\u00020\u000eH\b\"*\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u000e¢\u0006\f\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0006\"*\u0010\u0007\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\u0004\"\u0004\b\b\u0010\u0006\"*\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0004\"\u0004\b\n\u0010\u0006¨\u00061"}, d2 = {"value", "", "isGone", "Landroid/view/View;", "(Landroid/view/View;)Z", "setGone", "(Landroid/view/View;Z)V", "isInvisible", "setInvisible", "isVisible", "setVisible", "announceForAccessibility", "", "resource", "", "doOnLayout", NativeProtocol.WEB_DIALOG_ACTION, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", Promotion.ACTION_VIEW, "doOnNextLayout", "doOnPreDraw", "postDelayed", "Ljava/lang/Runnable;", "delayInMillis", "", "Lkotlin/Function0;", "postOnAnimationDelayed", "setPadding", "size", "toBitmap", "Landroid/graphics/Bitmap;", "config", "Landroid/graphics/Bitmap$Config;", "updateLayoutParams", "T", "Landroid/view/ViewGroup$LayoutParams;", "block", "Lkotlin/ExtensionFunctionType;", "updateLayoutParamsTyped", "updatePadding", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "updatePaddingRelative", TtmlNode.START, TtmlNode.END, "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: View.kt */
public final class ViewKt {
    public static final void doOnNextLayout(@NotNull View view, @NotNull Function1<? super View, Unit> function1) {
        view.addOnLayoutChangeListener(new ViewKt$doOnNextLayout$1(function1));
    }

    public static final void doOnLayout(@NotNull View view, @NotNull Function1<? super View, Unit> function1) {
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new ViewKt$doOnLayout$$inlined$doOnNextLayout$1(function1));
        } else {
            function1.invoke(view);
        }
    }

    public static final void doOnPreDraw(@NotNull View view, @NotNull Function1<? super View, Unit> function1) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        viewTreeObserver.addOnPreDrawListener(new ViewKt$doOnPreDraw$1(view, function1, viewTreeObserver));
    }

    @RequiresApi(16)
    public static final void announceForAccessibility(@NotNull View view, @StringRes int i) {
        view.announceForAccessibility(view.getResources().getString(i));
    }

    @RequiresApi(17)
    public static /* bridge */ /* synthetic */ void updatePaddingRelative$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingStart();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingEnd();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        view.setPaddingRelative(i, i2, i3, i4);
    }

    @RequiresApi(17)
    public static final void updatePaddingRelative(@NotNull View view, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        view.setPaddingRelative(i, i2, i3, i4);
    }

    public static /* bridge */ /* synthetic */ void updatePadding$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingLeft();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingRight();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        view.setPadding(i, i2, i3, i4);
    }

    public static final void updatePadding(@NotNull View view, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        view.setPadding(i, i2, i3, i4);
    }

    public static final void setPadding(@NotNull View view, @Px int i) {
        view.setPadding(i, i, i, i);
    }

    @NotNull
    public static final Runnable postDelayed(@NotNull View view, long j, @NotNull Function0<Unit> function0) {
        ViewKt$postDelayed$runnable$1 viewKt$postDelayed$runnable$1 = new ViewKt$postDelayed$runnable$1(function0);
        view.postDelayed(viewKt$postDelayed$runnable$1, j);
        return viewKt$postDelayed$runnable$1;
    }

    @RequiresApi(16)
    @NotNull
    public static final Runnable postOnAnimationDelayed(@NotNull View view, long j, @NotNull Function0<Unit> function0) {
        ViewKt$postOnAnimationDelayed$runnable$1 viewKt$postOnAnimationDelayed$runnable$1 = new ViewKt$postOnAnimationDelayed$runnable$1(function0);
        view.postOnAnimationDelayed(viewKt$postOnAnimationDelayed$runnable$1, j);
        return viewKt$postOnAnimationDelayed$runnable$1;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Bitmap toBitmap$default(View view, Bitmap.Config config, int i, Object obj) {
        if ((i & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return toBitmap(view, config);
    }

    @NotNull
    public static final Bitmap toBitmap(@NotNull View view, @NotNull Bitmap.Config config) {
        if (ViewCompat.isLaidOut(view)) {
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
            Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(width, height, config)");
            view.draw(new Canvas(createBitmap));
            return createBitmap;
        }
        throw new IllegalStateException("View needs to be laid out before calling toBitmap()");
    }

    public static final boolean isVisible(@NotNull View view) {
        return view.getVisibility() == 0;
    }

    public static final void setVisible(@NotNull View view, boolean z) {
        view.setVisibility(z ? 0 : 8);
    }

    public static final boolean isInvisible(@NotNull View view) {
        return view.getVisibility() == 4;
    }

    public static final void setInvisible(@NotNull View view, boolean z) {
        view.setVisibility(z ? 4 : 0);
    }

    public static final boolean isGone(@NotNull View view) {
        return view.getVisibility() == 8;
    }

    public static final void setGone(@NotNull View view, boolean z) {
        view.setVisibility(z ? 8 : 0);
    }

    @JvmName(name = "updateLayoutParamsTyped")
    private static final <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(@NotNull View view, Function1<? super T, Unit> function1) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.reifiedOperationMarker(1, "T");
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        function1.invoke(layoutParams2);
        view.setLayoutParams(layoutParams2);
    }

    public static final void updateLayoutParams(@NotNull View view, @NotNull Function1<? super ViewGroup.LayoutParams, Unit> function1) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            function1.invoke(layoutParams);
            view.setLayoutParams(layoutParams);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }
}
