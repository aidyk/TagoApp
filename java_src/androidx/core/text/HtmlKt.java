package androidx.core.text;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u001a\u0014\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0003\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", "flags", "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Html.kt */
public final class HtmlKt {
    @NotNull
    public static /* bridge */ /* synthetic */ Spanned parseAsHtml$default(String str, int i, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            imageGetter = null;
        }
        if ((i2 & 4) != 0) {
            tagHandler = null;
        }
        return parseAsHtml(str, i, imageGetter, tagHandler);
    }

    @NotNull
    public static final Spanned parseAsHtml(@NotNull String str, @SuppressLint({"InlinedApi"}) int i, @Nullable Html.ImageGetter imageGetter, @Nullable Html.TagHandler tagHandler) {
        if (Build.VERSION.SDK_INT >= 24) {
            Spanned fromHtml = Html.fromHtml(str, i, imageGetter, tagHandler);
            Intrinsics.checkExpressionValueIsNotNull(fromHtml, "Html.fromHtml(this, flag… imageGetter, tagHandler)");
            return fromHtml;
        }
        Spanned fromHtml2 = Html.fromHtml(str, imageGetter, tagHandler);
        Intrinsics.checkExpressionValueIsNotNull(fromHtml2, "Html.fromHtml(this, imageGetter, tagHandler)");
        return fromHtml2;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ String toHtml$default(Spanned spanned, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return toHtml(spanned, i);
    }

    @NotNull
    public static final String toHtml(@NotNull Spanned spanned, @SuppressLint({"InlinedApi"}) int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            String html = Html.toHtml(spanned, i);
            Intrinsics.checkExpressionValueIsNotNull(html, "Html.toHtml(this, option)");
            return html;
        }
        String html2 = Html.toHtml(spanned);
        Intrinsics.checkExpressionValueIsNotNull(html2, "Html.toHtml(this)");
        return html2;
    }
}
