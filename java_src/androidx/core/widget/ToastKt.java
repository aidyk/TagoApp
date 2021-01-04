package androidx.core.widget;

import android.content.Context;
import android.support.annotation.StringRes;
import android.widget.Toast;
import com.google.android.exoplayer2.util.MimeTypes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\b\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\b¨\u0006\b"}, d2 = {"toast", "Landroid/widget/Toast;", "Landroid/content/Context;", MimeTypes.BASE_TYPE_TEXT, "", "duration", "", "resId", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Toast.kt */
public final class ToastKt {
    @NotNull
    public static final Toast toast(@NotNull Context context, @NotNull CharSequence charSequence, int i) {
        Toast makeText = Toast.makeText(context, charSequence, i);
        makeText.show();
        Intrinsics.checkExpressionValueIsNotNull(makeText, "Toast.makeText(this, tex…uration).apply { show() }");
        return makeText;
    }

    @NotNull
    public static final Toast toast(@NotNull Context context, @StringRes int i, int i2) {
        Toast makeText = Toast.makeText(context, i, i2);
        makeText.show();
        Intrinsics.checkExpressionValueIsNotNull(makeText, "Toast.makeText(this, res…uration).apply { show() }");
        return makeText;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Toast toast$default(Context context, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        Toast makeText = Toast.makeText(context, charSequence, i);
        makeText.show();
        Intrinsics.checkExpressionValueIsNotNull(makeText, "Toast.makeText(this, tex…uration).apply { show() }");
        return makeText;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Toast toast$default(Context context, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        Toast makeText = Toast.makeText(context, i, i2);
        makeText.show();
        Intrinsics.checkExpressionValueIsNotNull(makeText, "Toast.makeText(this, res…uration).apply { show() }");
        return makeText;
    }
}
