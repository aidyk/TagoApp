package com.liber8tech.tago.android.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0019J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0019J\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u001cJ\u000e\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u0019J\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020(J\u000e\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u0019J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\tR\u001a\u0010\u000b\u001a\u00020\fX.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X.¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0001X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006-"}, d2 = {"Lcom/liber8tech/tago/android/view/TextInputView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "editText", "Landroid/support/design/widget/TextInputEditText;", "getEditText", "()Landroid/support/design/widget/TextInputEditText;", "setEditText", "(Landroid/support/design/widget/TextInputEditText;)V", "input", "Landroid/support/design/widget/TextInputLayout;", TtmlNode.TAG_LAYOUT, "getLayout", "()Landroid/widget/LinearLayout;", "setLayout", "(Landroid/widget/LinearLayout;)V", "getNullableText", "", "getText", "init", "", "removeTextError", "setHintText", "hint", "setIcon", SettingsJsonConstants.APP_ICON_KEY, "Landroid/graphics/drawable/Drawable;", "setInputTypePassword", "setText", MimeTypes.BASE_TYPE_TEXT, "setTextEnabled", "isFocusable", "", "setTextError", "error", "setTextInputType", "inputType", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TextInputView.kt */
public final class TextInputView extends LinearLayout {
    private HashMap _$_findViewCache;
    @NotNull
    public TextInputEditText editText;
    private TextInputLayout input;
    @NotNull
    public LinearLayout layout;

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
    public final LinearLayout getLayout() {
        LinearLayout linearLayout = this.layout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.TAG_LAYOUT);
        }
        return linearLayout;
    }

    public final void setLayout(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.layout = linearLayout;
    }

    @NotNull
    public final TextInputEditText getEditText() {
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        return textInputEditText;
    }

    public final void setEditText(@NotNull TextInputEditText textInputEditText) {
        Intrinsics.checkParameterIsNotNull(textInputEditText, "<set-?>");
        this.editText = textInputEditText;
    }

    public TextInputView(@Nullable Context context) {
        super(context);
        init();
    }

    public TextInputView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TextInputView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @NotNull
    public final String getText() {
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        return String.valueOf(textInputEditText.getText());
    }

    @Nullable
    public final String getNullableText() {
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        if (StringsKt.isBlank(String.valueOf(textInputEditText.getText()))) {
            return null;
        }
        TextInputEditText textInputEditText2 = this.editText;
        if (textInputEditText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        return String.valueOf(textInputEditText2.getText());
    }

    public final void setHintText(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "hint");
        TextInputLayout textInputLayout = this.input;
        if (textInputLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
        }
        textInputLayout.setHint(str);
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, MimeTypes.BASE_TYPE_TEXT);
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        textInputEditText.setText(str);
    }

    public final void setTextEnabled(boolean z) {
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        textInputEditText.setEnabled(z);
        TextInputEditText textInputEditText2 = this.editText;
        if (textInputEditText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setHintTextColor(textInputEditText2, AndroidExtensionsKt.getColorCompat(context, R.color.white));
    }

    public final void setTextInputType(int i) {
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        textInputEditText.setInputType(i);
    }

    public final void setInputTypePassword() {
        setTextInputType(TsExtractor.TS_STREAM_TYPE_AC3);
    }

    public final void setTextError(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "error");
        TextInputLayout textInputLayout = this.input;
        if (textInputLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
        }
        textInputLayout.setError(str);
    }

    public final void removeTextError() {
        TextInputLayout textInputLayout = this.input;
        if (textInputLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("input");
        }
        textInputLayout.setError(null);
    }

    public final void setIcon(@NotNull Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, SettingsJsonConstants.APP_ICON_KEY);
        TextInputEditText textInputEditText = this.editText;
        if (textInputEditText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editText");
        }
        textInputEditText.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
    }

    private final void init() {
        TextInputView textInputView = this;
        Object systemService = AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(textInputView), 0).getSystemService("layout_inflater");
        if (systemService != null) {
            View inflate = ((LayoutInflater) systemService).inflate(R.layout.text_input_layout, (ViewGroup) this, false);
            if (inflate != null) {
                LinearLayout linearLayout = (LinearLayout) inflate;
                LinearLayout linearLayout2 = linearLayout;
                View findViewById = linearLayout2.findViewById(R.id.input);
                Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                this.input = (TextInputLayout) findViewById;
                View findViewById2 = linearLayout2.findViewById(R.id.editText);
                Intrinsics.checkExpressionValueIsNotNull(findViewById2, "findViewById(id)");
                TextInputEditText textInputEditText = (TextInputEditText) findViewById2;
                TypefacesExtensionKt.regular(textInputEditText);
                this.editText = textInputEditText;
                AnkoInternals.INSTANCE.addView(textInputView, inflate);
                this.layout = linearLayout;
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type T");
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
    }
}
