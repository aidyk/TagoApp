package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.Px;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\u00042\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", SettingsJsonConstants.ICON_WIDTH_KEY, "", SettingsJsonConstants.ICON_HEIGHT_KEY, "config", "Landroid/graphics/Bitmap$Config;", "updateBounds", "", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Drawable.kt */
public final class DrawableKt {
    @NotNull
    public static /* bridge */ /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i, int i2, Bitmap.Config config, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = drawable.getIntrinsicWidth();
        }
        if ((i3 & 2) != 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        if ((i3 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, i, i2, config);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x001a, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r0.getConfig(), r8) != false) goto L_0x001c;
     */
    @org.jetbrains.annotations.NotNull
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final android.graphics.Bitmap toBitmap(@org.jetbrains.annotations.NotNull android.graphics.drawable.Drawable r5, @android.support.annotation.Px int r6, @android.support.annotation.Px int r7, @org.jetbrains.annotations.Nullable android.graphics.Bitmap.Config r8) {
        /*
        // Method dump skipped, instructions count: 109
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.DrawableKt.toBitmap(android.graphics.drawable.Drawable, int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public static /* bridge */ /* synthetic */ void updateBounds$default(Drawable drawable, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = drawable.getBounds().left;
        }
        if ((i5 & 2) != 0) {
            i2 = drawable.getBounds().top;
        }
        if ((i5 & 4) != 0) {
            i3 = drawable.getBounds().right;
        }
        if ((i5 & 8) != 0) {
            i4 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i, i2, i3, i4);
    }

    public static final void updateBounds(@NotNull Drawable drawable, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        drawable.setBounds(i, i2, i3, i4);
    }
}
