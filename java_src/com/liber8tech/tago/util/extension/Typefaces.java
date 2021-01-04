package com.liber8tech.tago.util.extension;

import android.graphics.Typeface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/liber8tech/tago/util/extension/Typefaces;", "", "()V", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TypefacesExtension.kt */
public final class Typefaces {
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static Typeface bold;
    @Nullable
    private static Typeface italic;
    @Nullable
    private static Typeface regular;
    @Nullable
    private static Typeface semibold;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/liber8tech/tago/util/extension/Typefaces$Companion;", "", "()V", TtmlNode.BOLD, "Landroid/graphics/Typeface;", "getBold", "()Landroid/graphics/Typeface;", "setBold", "(Landroid/graphics/Typeface;)V", TtmlNode.ITALIC, "getItalic", "setItalic", "regular", "getRegular", "setRegular", "semibold", "getSemibold", "setSemibold", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: TypefacesExtension.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Typeface getRegular() {
            return Typefaces.regular;
        }

        public final void setRegular(@Nullable Typeface typeface) {
            Typefaces.regular = typeface;
        }

        @Nullable
        public final Typeface getBold() {
            return Typefaces.bold;
        }

        public final void setBold(@Nullable Typeface typeface) {
            Typefaces.bold = typeface;
        }

        @Nullable
        public final Typeface getItalic() {
            return Typefaces.italic;
        }

        public final void setItalic(@Nullable Typeface typeface) {
            Typefaces.italic = typeface;
        }

        @Nullable
        public final Typeface getSemibold() {
            return Typefaces.semibold;
        }

        public final void setSemibold(@Nullable Typeface typeface) {
            Typefaces.semibold = typeface;
        }
    }
}
