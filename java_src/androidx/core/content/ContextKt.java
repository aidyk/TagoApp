package androidx.core.content;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.AttrRes;
import android.support.annotation.RequiresApi;
import android.support.annotation.StyleRes;
import android.util.AttributeSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 2}, d1 = {"\u00006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0003H\b¢\u0006\u0002\u0010\u0004\u001aN\u0010\u0005\u001a\u00020\u0006*\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0003\u0010\u000b\u001a\u00020\f2\b\b\u0003\u0010\r\u001a\u00020\f2\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0002\b\u0011H\b\u001a8\u0010\u0005\u001a\u00020\u0006*\u00020\u00032\b\b\u0001\u0010\u0012\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0002\b\u0011H\b¨\u0006\u0013"}, d2 = {"systemService", "T", "kotlin.jvm.PlatformType", "Landroid/content/Context;", "(Landroid/content/Context;)Ljava/lang/Object;", "withStyledAttributes", "", "set", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "", "defStyleRes", "block", "Lkotlin/Function1;", "Landroid/content/res/TypedArray;", "Lkotlin/ExtensionFunctionType;", "resourceId", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Context.kt */
public final class ContextKt {
    @RequiresApi(23)
    private static final <T> T systemService(@NotNull Context context) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) context.getSystemService(Object.class);
    }

    public static /* bridge */ /* synthetic */ void withStyledAttributes$default(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            attributeSet = null;
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        try {
            Intrinsics.checkExpressionValueIsNotNull(obtainStyledAttributes, "typedArray");
            function1.invoke(obtainStyledAttributes);
        } finally {
            InlineMarker.finallyStart(1);
            obtainStyledAttributes.recycle();
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withStyledAttributes(@NotNull Context context, @Nullable AttributeSet attributeSet, @NotNull int[] iArr, @AttrRes int i, @StyleRes int i2, @NotNull Function1<? super TypedArray, Unit> function1) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        try {
            Intrinsics.checkExpressionValueIsNotNull(obtainStyledAttributes, "typedArray");
            function1.invoke(obtainStyledAttributes);
        } finally {
            InlineMarker.finallyStart(1);
            obtainStyledAttributes.recycle();
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withStyledAttributes(@NotNull Context context, @StyleRes int i, @NotNull int[] iArr, @NotNull Function1<? super TypedArray, Unit> function1) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, iArr);
        try {
            Intrinsics.checkExpressionValueIsNotNull(obtainStyledAttributes, "typedArray");
            function1.invoke(obtainStyledAttributes);
        } finally {
            InlineMarker.finallyStart(1);
            obtainStyledAttributes.recycle();
            InlineMarker.finallyEnd(1);
        }
    }
}
