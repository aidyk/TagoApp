package org.jetbrains.anko;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Gallery;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0011\"(\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007\"(\u0010\b\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007\"(\u0010\f\u001a\u00020\u000b*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u000b8G@FX\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011\",\u0010\u0013\u001a\u0004\u0018\u00010\u0012*\u00020\u00142\b\u0010\u0000\u001a\u0004\u0018\u00010\u00128G@FX\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018\"(\u0010\u0019\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e\"(\u0010\u0019\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010 \"\u0004\b\u001d\u0010!\"(\u0010\u0019\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\"\"\u0004\b\u001d\u0010#\"(\u0010\u0019\u001a\u00020\u0001*\u00020$2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010%\"\u0004\b\u001d\u0010&\"(\u0010\u0019\u001a\u00020\u0001*\u00020'2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010(\"\u0004\b\u001d\u0010)\"(\u0010*\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.\"(\u0010/\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b0\u0010,\"\u0004\b1\u0010.\"(\u00102\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b3\u0010,\"\u0004\b4\u0010.\"(\u00105\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b6\u0010\"\"\u0004\b7\u0010#\"(\u00105\u001a\u00020\u0001*\u00020$2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b6\u0010%\"\u0004\b7\u0010&\",\u00109\u001a\u0004\u0018\u000108*\u00020:2\b\u0010\u0000\u001a\u0004\u0018\u0001088G@FX\u000e¢\u0006\f\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>\"(\u0010?\u001a\u00020\u0001*\u00020:2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C\",\u0010E\u001a\u0004\u0018\u00010D*\u00020:2\b\u0010\u0000\u001a\u0004\u0018\u00010D8G@FX\u000e¢\u0006\f\u001a\u0004\bF\u0010G\"\u0004\bH\u0010I\"(\u0010J\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bK\u0010,\"\u0004\bL\u0010.\"(\u0010M\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bN\u0010,\"\u0004\bO\u0010.\"(\u0010P\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bQ\u0010,\"\u0004\bR\u0010.\"(\u0010S\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bT\u0010,\"\u0004\bU\u0010.\"(\u0010V\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bW\u0010,\"\u0004\bX\u0010.\"(\u0010Y\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bZ\u0010,\"\u0004\b[\u0010.\"(\u0010\\\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b]\u0010,\"\u0004\b^\u0010.\"(\u0010_\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\b`\u0010\u0005\"\u0004\ba\u0010\u0007\"(\u0010b\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bc\u0010\u0005\"\u0004\bd\u0010\u0007\"(\u0010e\u001a\u00020\u0001*\u00020f2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010j\"(\u0010k\u001a\u00020\u000b*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u000b8G@FX\u000e¢\u0006\f\u001a\u0004\bl\u0010\u000f\"\u0004\bm\u0010\u0011\"(\u0010n\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bo\u0010,\"\u0004\bp\u0010.\"(\u0010q\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\br\u0010,\"\u0004\bs\u0010.\"(\u0010t\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bu\u0010\"\"\u0004\bv\u0010#\"(\u0010t\u001a\u00020\u0001*\u00020$2\u0006\u0010\u0000\u001a\u00020\u00018G@FX\u000e¢\u0006\f\u001a\u0004\bu\u0010%\"\u0004\bv\u0010&¨\u0006w"}, d2 = {"v", "", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "Landroid/view/View;", "getBackgroundColor", "(Landroid/view/View;)I", "setBackgroundColor", "(Landroid/view/View;I)V", "backgroundResource", "getBackgroundResource", "setBackgroundResource", "", "cursorVisible", "Landroid/widget/TextView;", "getCursorVisible", "(Landroid/widget/TextView;)Z", "setCursorVisible", "(Landroid/widget/TextView;Z)V", "Landroid/graphics/drawable/Drawable;", "dividerDrawable", "Landroid/widget/LinearLayout;", "getDividerDrawable", "(Landroid/widget/LinearLayout;)Landroid/graphics/drawable/Drawable;", "setDividerDrawable", "(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V", "gravity", "Landroid/widget/Gallery;", "getGravity", "(Landroid/widget/Gallery;)I", "setGravity", "(Landroid/widget/Gallery;I)V", "Landroid/widget/GridView;", "(Landroid/widget/GridView;)I", "(Landroid/widget/GridView;I)V", "(Landroid/widget/LinearLayout;)I", "(Landroid/widget/LinearLayout;I)V", "Landroid/widget/RelativeLayout;", "(Landroid/widget/RelativeLayout;)I", "(Landroid/widget/RelativeLayout;I)V", "Landroid/widget/Spinner;", "(Landroid/widget/Spinner;)I", "(Landroid/widget/Spinner;I)V", "highlightColor", "getHighlightColor", "(Landroid/widget/TextView;)I", "setHighlightColor", "(Landroid/widget/TextView;I)V", "hintResource", "getHintResource", "setHintResource", "hintTextColor", "getHintTextColor", "setHintTextColor", "horizontalGravity", "getHorizontalGravity", "setHorizontalGravity", "Landroid/graphics/Bitmap;", "imageBitmap", "Landroid/widget/ImageView;", "getImageBitmap", "(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;", "setImageBitmap", "(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V", "imageResource", "getImageResource", "(Landroid/widget/ImageView;)I", "setImageResource", "(Landroid/widget/ImageView;I)V", "Landroid/net/Uri;", "imageURI", "getImageURI", "(Landroid/widget/ImageView;)Landroid/net/Uri;", "setImageURI", "(Landroid/widget/ImageView;Landroid/net/Uri;)V", "lines", "getLines", "setLines", "linkTextColor", "getLinkTextColor", "setLinkTextColor", "marqueeRepeatLimit", "getMarqueeRepeatLimit", "setMarqueeRepeatLimit", "maxEms", "getMaxEms", "setMaxEms", "maxLines", "getMaxLines", "setMaxLines", "minEms", "getMinEms", "setMinEms", "minLines", "getMinLines", "setMinLines", "minimumHeight", "getMinimumHeight", "setMinimumHeight", "minimumWidth", "getMinimumWidth", "setMinimumWidth", "selectorResource", "Landroid/widget/AbsListView;", "getSelectorResource", "(Landroid/widget/AbsListView;)I", "setSelectorResource", "(Landroid/widget/AbsListView;I)V", "singleLine", "getSingleLine", "setSingleLine", "textColor", "getTextColor", "setTextColor", "textResource", "getTextResource", "setTextResource", "verticalGravity", "getVerticalGravity", "setVerticalGravity", "anko-sdk15_release"}, k = 2, mv = {1, 1, 13})
@JvmName(name = "Sdk15PropertiesKt")
/* compiled from: Properties.kt */
public final class Sdk15PropertiesKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getBackgroundColor(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setBackgroundColor(@NotNull View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        view.setBackgroundColor(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getBackgroundResource(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setBackgroundResource(@NotNull View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        view.setBackgroundResource(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMinimumHeight(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMinimumHeight(@NotNull View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        view.setMinimumHeight(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMinimumWidth(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMinimumWidth(@NotNull View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        view.setMinimumWidth(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getTextColor(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setTextColor(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setTextColor(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getHighlightColor(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setHighlightColor(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setHighlightColor(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getHintTextColor(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setHintTextColor(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setHintTextColor(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getLinkTextColor(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setLinkTextColor(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setLinkTextColor(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMinLines(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMinLines(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setMinLines(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMaxLines(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMaxLines(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setMaxLines(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getLines(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setLines(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setLines(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMinEms(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMinEms(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setMinEms(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMaxEms(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMaxEms(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setMaxEms(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final boolean getSingleLine(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setSingleLine(@NotNull TextView textView, boolean z) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setSingleLine(z);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getMarqueeRepeatLimit(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setMarqueeRepeatLimit(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setMarqueeRepeatLimit(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final boolean getCursorVisible(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setCursorVisible(@NotNull TextView textView, boolean z) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setCursorVisible(z);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getImageResource(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setImageResource(@NotNull ImageView imageView, int i) {
        Intrinsics.checkParameterIsNotNull(imageView, "receiver$0");
        imageView.setImageResource(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    @Nullable
    public static final Uri getImageURI(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setImageURI(@NotNull ImageView imageView, @Nullable Uri uri) {
        Intrinsics.checkParameterIsNotNull(imageView, "receiver$0");
        imageView.setImageURI(uri);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    @Nullable
    public static final Bitmap getImageBitmap(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setImageBitmap(@NotNull ImageView imageView, @Nullable Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(imageView, "receiver$0");
        imageView.setImageBitmap(bitmap);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getGravity(@NotNull RelativeLayout relativeLayout) {
        Intrinsics.checkParameterIsNotNull(relativeLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setGravity(@NotNull RelativeLayout relativeLayout, int i) {
        Intrinsics.checkParameterIsNotNull(relativeLayout, "receiver$0");
        relativeLayout.setGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getHorizontalGravity(@NotNull RelativeLayout relativeLayout) {
        Intrinsics.checkParameterIsNotNull(relativeLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setHorizontalGravity(@NotNull RelativeLayout relativeLayout, int i) {
        Intrinsics.checkParameterIsNotNull(relativeLayout, "receiver$0");
        relativeLayout.setHorizontalGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getVerticalGravity(@NotNull RelativeLayout relativeLayout) {
        Intrinsics.checkParameterIsNotNull(relativeLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setVerticalGravity(@NotNull RelativeLayout relativeLayout, int i) {
        Intrinsics.checkParameterIsNotNull(relativeLayout, "receiver$0");
        relativeLayout.setVerticalGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    @Nullable
    public static final Drawable getDividerDrawable(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setDividerDrawable(@NotNull LinearLayout linearLayout, @Nullable Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        linearLayout.setDividerDrawable(drawable);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getGravity(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setGravity(@NotNull LinearLayout linearLayout, int i) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        linearLayout.setGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getHorizontalGravity(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setHorizontalGravity(@NotNull LinearLayout linearLayout, int i) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        linearLayout.setHorizontalGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getVerticalGravity(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setVerticalGravity(@NotNull LinearLayout linearLayout, int i) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "receiver$0");
        linearLayout.setVerticalGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getGravity(@NotNull Gallery gallery) {
        Intrinsics.checkParameterIsNotNull(gallery, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setGravity(@NotNull Gallery gallery, int i) {
        Intrinsics.checkParameterIsNotNull(gallery, "receiver$0");
        gallery.setGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getGravity(@NotNull Spinner spinner) {
        Intrinsics.checkParameterIsNotNull(spinner, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setGravity(@NotNull Spinner spinner, int i) {
        Intrinsics.checkParameterIsNotNull(spinner, "receiver$0");
        spinner.setGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getGravity(@NotNull GridView gridView) {
        Intrinsics.checkParameterIsNotNull(gridView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setGravity(@NotNull GridView gridView, int i) {
        Intrinsics.checkParameterIsNotNull(gridView, "receiver$0");
        gridView.setGravity(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getSelectorResource(@NotNull AbsListView absListView) {
        Intrinsics.checkParameterIsNotNull(absListView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setSelectorResource(@NotNull AbsListView absListView, int i) {
        Intrinsics.checkParameterIsNotNull(absListView, "receiver$0");
        absListView.setSelector(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getHintResource(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setHintResource(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setHint(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = AnkoInternals.NO_GETTER)
    public static final int getTextResource(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        AnkoInternals.INSTANCE.noGetter();
        throw null;
    }

    public static final void setTextResource(@NotNull TextView textView, int i) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setText(i);
    }
}
