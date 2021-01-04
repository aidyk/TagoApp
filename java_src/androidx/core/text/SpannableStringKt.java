package androidx.core.text;

import android.text.Spannable;
import android.text.SpannableString;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\b\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n\u001a%\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\n\u001a\u001d\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005H\n\u001a\r\u0010\r\u001a\u00020\u0002*\u00020\u000eH\b¨\u0006\u000f"}, d2 = {"clearSpans", "", "Landroid/text/Spannable;", "minusAssign", TtmlNode.TAG_SPAN, "", "plusAssign", "set", TtmlNode.START, "", TtmlNode.END, "range", "Lkotlin/ranges/IntRange;", "toSpannable", "", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: SpannableString.kt */
public final class SpannableStringKt {
    @NotNull
    public static final Spannable toSpannable(@NotNull CharSequence charSequence) {
        SpannableString valueOf = SpannableString.valueOf(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(valueOf, "SpannableString.valueOf(this)");
        return valueOf;
    }

    public static final void plusAssign(@NotNull Spannable spannable, @NotNull Object obj) {
        spannable.setSpan(obj, 0, spannable.length(), 17);
    }

    public static final void minusAssign(@NotNull Spannable spannable, @NotNull Object obj) {
        spannable.removeSpan(obj);
    }

    public static final void clearSpans(@NotNull Spannable spannable) {
        Spannable spannable2 = spannable;
        Object[] spans = spannable2.getSpans(0, spannable2.length(), Object.class);
        Intrinsics.checkExpressionValueIsNotNull(spans, "getSpans(start, end, T::class.java)");
        for (Object obj : spans) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(@NotNull Spannable spannable, int i, int i2, @NotNull Object obj) {
        spannable.setSpan(obj, i, i2, 17);
    }

    public static final void set(@NotNull Spannable spannable, @NotNull IntRange intRange, @NotNull Object obj) {
        spannable.setSpan(obj, intRange.getStart().intValue(), intRange.getEndInclusive().intValue(), 17);
    }
}
