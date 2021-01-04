package com.liber8tech.tago.util.extension;

import android.support.v4.content.res.ResourcesCompat;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0006"}, d2 = {TtmlNode.BOLD, "", "Landroid/widget/TextView;", TtmlNode.ITALIC, "regular", "semibold", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: TypefacesExtension.kt */
public final class TypefacesExtensionKt {
    public static final void regular(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        if (Typefaces.Companion.getRegular() == null) {
            Typefaces.Companion.setRegular(ResourcesCompat.getFont(textView.getContext(), R.font.opensans_regular));
        }
        textView.setTypeface(Typefaces.Companion.getRegular());
    }

    public static final void bold(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        if (Typefaces.Companion.getBold() == null) {
            Typefaces.Companion.setBold(ResourcesCompat.getFont(textView.getContext(), R.font.opensans_bold));
        }
        textView.setTypeface(Typefaces.Companion.getBold());
    }

    public static final void italic(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        if (Typefaces.Companion.getItalic() == null) {
            Typefaces.Companion.setItalic(ResourcesCompat.getFont(textView.getContext(), R.font.opensans_italic));
        }
        textView.setTypeface(Typefaces.Companion.getItalic());
    }

    public static final void semibold(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        if (Typefaces.Companion.getSemibold() == null) {
            Typefaces.Companion.setSemibold(ResourcesCompat.getFont(textView.getContext(), R.font.opensans_semibold));
        }
        textView.setTypeface(Typefaces.Companion.getSemibold());
    }
}
