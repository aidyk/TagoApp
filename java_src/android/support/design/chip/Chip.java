package android.support.design.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.AnimatorRes;
import android.support.annotation.BoolRes;
import android.support.annotation.CallSuper;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.design.animation.MotionSpec;
import android.support.design.chip.ChipDrawable;
import android.support.design.resources.TextAppearance;
import android.support.design.ripple.RippleUtils;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.text.BidiFormatter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.support.v7.widget.AppCompatCheckBox;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.CompoundButton;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate {
    private static final int CLOSE_ICON_VIRTUAL_ID = 0;
    private static final Rect EMPTY_BOUNDS = new Rect();
    private static final String NAMESPACE_ANDROID = "http://schemas.android.com/apk/res/android";
    private static final int[] SELECTED_STATE = {16842913};
    private static final String TAG = "Chip";
    @Nullable
    private ChipDrawable chipDrawable;
    private boolean closeIconFocused;
    private boolean closeIconHovered;
    private boolean closeIconPressed;
    private boolean deferredCheckedValue;
    private int focusedVirtualView;
    private final ResourcesCompat.FontCallback fontCallback;
    @Nullable
    private CompoundButton.OnCheckedChangeListener onCheckedChangeListenerInternal;
    @Nullable
    private View.OnClickListener onCloseIconClickListener;
    private final Rect rect;
    private final RectF rectF;
    @Nullable
    private RippleDrawable ripple;
    private final ChipTouchHelper touchHelper;

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.focusedVirtualView = Integer.MIN_VALUE;
        this.rect = new Rect();
        this.rectF = new RectF();
        this.fontCallback = new ResourcesCompat.FontCallback() {
            /* class android.support.design.chip.Chip.AnonymousClass1 */

            @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
            public void onFontRetrievalFailed(int i) {
            }

            @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
            public void onFontRetrieved(@NonNull Typeface typeface) {
                Chip.this.setText(Chip.this.getText());
                Chip.this.requestLayout();
                Chip.this.invalidate();
            }
        };
        validateAttributes(attributeSet);
        ChipDrawable createFromAttributes = ChipDrawable.createFromAttributes(context, attributeSet, i, R.style.Widget_MaterialComponents_Chip_Action);
        setChipDrawable(createFromAttributes);
        this.touchHelper = new ChipTouchHelper(this);
        ViewCompat.setAccessibilityDelegate(this, this.touchHelper);
        initOutlineProvider();
        setChecked(this.deferredCheckedValue);
        createFromAttributes.setShouldDrawText(false);
        setText(createFromAttributes.getText());
        setEllipsize(createFromAttributes.getEllipsize());
        setIncludeFontPadding(false);
        if (getTextAppearance() != null) {
            updateTextPaintDrawState(getTextAppearance());
        }
        setSingleLine();
        setGravity(8388627);
        updatePaddingInternal();
    }

    private void updatePaddingInternal() {
        if (!TextUtils.isEmpty(getText()) && this.chipDrawable != null) {
            float chipStartPadding = this.chipDrawable.getChipStartPadding() + this.chipDrawable.getChipEndPadding() + this.chipDrawable.getTextStartPadding() + this.chipDrawable.getTextEndPadding();
            if ((this.chipDrawable.isChipIconVisible() && this.chipDrawable.getChipIcon() != null) || (this.chipDrawable.getCheckedIcon() != null && this.chipDrawable.isCheckedIconVisible() && isChecked())) {
                chipStartPadding += this.chipDrawable.getIconStartPadding() + this.chipDrawable.getIconEndPadding() + this.chipDrawable.getChipIconSize();
            }
            if (this.chipDrawable.isCloseIconVisible() && this.chipDrawable.getCloseIcon() != null) {
                chipStartPadding += this.chipDrawable.getCloseIconStartPadding() + this.chipDrawable.getCloseIconEndPadding() + this.chipDrawable.getCloseIconSize();
            }
            if (((float) ViewCompat.getPaddingEnd(this)) != chipStartPadding) {
                ViewCompat.setPaddingRelative(this, ViewCompat.getPaddingStart(this), getPaddingTop(), (int) chipStartPadding, getPaddingBottom());
            }
        }
    }

    private void validateAttributes(@Nullable AttributeSet attributeSet) {
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "background") != null) {
                throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
            } else if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (!attributeSet.getAttributeBooleanValue(NAMESPACE_ANDROID, "singleLine", true) || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "lines", 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "minLines", 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            } else if (attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "gravity", 8388627) != 8388627) {
                Log.w(TAG, "Chip text must be vertically center and start aligned");
            }
        }
    }

    private void initOutlineProvider() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider() {
                /* class android.support.design.chip.Chip.AnonymousClass2 */

                @TargetApi(21)
                public void getOutline(View view, Outline outline) {
                    if (Chip.this.chipDrawable != null) {
                        Chip.this.chipDrawable.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
    }

    public Drawable getChipDrawable() {
        return this.chipDrawable;
    }

    public void setChipDrawable(@NonNull ChipDrawable chipDrawable2) {
        if (this.chipDrawable != chipDrawable2) {
            unapplyChipDrawable(this.chipDrawable);
            this.chipDrawable = chipDrawable2;
            applyChipDrawable(this.chipDrawable);
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                this.ripple = new RippleDrawable(RippleUtils.convertToRippleDrawableColor(this.chipDrawable.getRippleColor()), this.chipDrawable, null);
                this.chipDrawable.setUseCompatRipple(false);
                ViewCompat.setBackground(this, this.ripple);
                return;
            }
            this.chipDrawable.setUseCompatRipple(true);
            ViewCompat.setBackground(this, this.chipDrawable);
        }
    }

    private void unapplyChipDrawable(@Nullable ChipDrawable chipDrawable2) {
        if (chipDrawable2 != null) {
            chipDrawable2.setDelegate(null);
        }
    }

    private void applyChipDrawable(@NonNull ChipDrawable chipDrawable2) {
        chipDrawable2.setDelegate(this);
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, SELECTED_STATE);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (TextUtils.isEmpty(getText()) || this.chipDrawable == null || this.chipDrawable.shouldDrawText()) {
            super.onDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.translate(calculateTextOffsetFromStart(this.chipDrawable), 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w(TAG, "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    private float calculateTextOffsetFromStart(@NonNull ChipDrawable chipDrawable2) {
        float chipStartPadding = getChipStartPadding() + chipDrawable2.calculateChipIconWidth() + getTextStartPadding();
        return ViewCompat.getLayoutDirection(this) == 0 ? chipStartPadding : -chipStartPadding;
    }

    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setBackgroundColor(int i) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    public void setBackgroundResource(int i) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    public void setBackground(Drawable drawable) {
        if (drawable == this.chipDrawable || drawable == this.ripple) {
            super.setBackground(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.chipDrawable || drawable == this.ripple) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
    }

    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public TextUtils.TruncateAt getEllipsize() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getEllipsize();
        }
        return null;
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.chipDrawable != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                if (this.chipDrawable != null) {
                    this.chipDrawable.setEllipsize(truncateAt);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxWidth(@Px int i) {
        super.setMaxWidth(i);
        if (this.chipDrawable != null) {
            this.chipDrawable.setMaxWidth(i);
        }
    }

    @Override // android.support.design.chip.ChipDrawable.Delegate
    public void onChipDrawableSizeChange() {
        updatePaddingInternal();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setChecked(boolean z) {
        if (this.chipDrawable == null) {
            this.deferredCheckedValue = z;
        } else if (this.chipDrawable.isCheckable()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && this.onCheckedChangeListenerInternal != null) {
                this.onCheckedChangeListenerInternal.onCheckedChanged(this, z);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListenerInternal = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.onCloseIconClickListener = onClickListener;
    }

    @CallSuper
    public boolean performCloseIconClick() {
        boolean z;
        playSoundEffect(0);
        if (this.onCloseIconClickListener != null) {
            this.onCloseIconClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.touchHelper.sendEventForVirtualView(0, 1);
        return z;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean contains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        switch (actionMasked) {
            case 0:
                if (contains) {
                    setCloseIconPressed(true);
                    z = true;
                    break;
                }
                z = false;
                break;
            case 1:
                if (this.closeIconPressed) {
                    performCloseIconClick();
                    z = true;
                    setCloseIconPressed(false);
                    break;
                }
                z = false;
                setCloseIconPressed(false);
            case 2:
                if (this.closeIconPressed) {
                    if (!contains) {
                        setCloseIconPressed(false);
                    }
                    z = true;
                    break;
                }
                z = false;
                break;
            case 3:
                z = false;
                setCloseIconPressed(false);
                break;
            default:
                z = false;
                break;
        }
        if (z || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @SuppressLint({"PrivateApi"})
    private boolean handleAccessibilityExit(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.touchHelper)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.touchHelper, Integer.MIN_VALUE);
                    return true;
                }
            } catch (NoSuchMethodException e) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e2);
            } catch (InvocationTargetException e3) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e3);
            } catch (NoSuchFieldException e4) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e4);
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return handleAccessibilityExit(motionEvent) || this.touchHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.touchHelper.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* access modifiers changed from: protected */
    public void onFocusChanged(boolean z, int i, Rect rect2) {
        if (z) {
            setFocusedVirtualView(-1);
        } else {
            setFocusedVirtualView(Integer.MIN_VALUE);
        }
        invalidate();
        super.onFocusChanged(z, i, rect2);
        this.touchHelper.onFocusChanged(z, i, rect2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0067  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onKeyDown(int r7, android.view.KeyEvent r8) {
        /*
        // Method dump skipped, instructions count: 136
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.chip.Chip.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    private boolean moveFocus(boolean z) {
        ensureFocus();
        if (z) {
            if (this.focusedVirtualView == -1) {
                setFocusedVirtualView(0);
                return true;
            }
        } else if (this.focusedVirtualView == 0) {
            setFocusedVirtualView(-1);
            return true;
        }
        return false;
    }

    private void ensureFocus() {
        if (this.focusedVirtualView == Integer.MIN_VALUE) {
            setFocusedVirtualView(-1);
        }
    }

    public void getFocusedRect(Rect rect2) {
        if (this.focusedVirtualView == 0) {
            rect2.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect2);
        }
    }

    private void setFocusedVirtualView(int i) {
        if (this.focusedVirtualView != i) {
            if (this.focusedVirtualView == 0) {
                setCloseIconFocused(false);
            }
            this.focusedVirtualView = i;
            if (i == 0) {
                setCloseIconFocused(true);
            }
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.closeIconPressed != z) {
            this.closeIconPressed = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.closeIconHovered != z) {
            this.closeIconHovered = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconFocused(boolean z) {
        if (this.closeIconFocused != z) {
            this.closeIconFocused = z;
            refreshDrawableState();
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if ((this.chipDrawable == null || !this.chipDrawable.isCloseIconStateful()) ? false : this.chipDrawable.setCloseIconState(createCloseIconDrawableState())) {
            invalidate();
        }
    }

    private int[] createCloseIconDrawableState() {
        int i = 0;
        int i2 = isEnabled() ? 1 : 0;
        if (this.closeIconFocused) {
            i2++;
        }
        if (this.closeIconHovered) {
            i2++;
        }
        if (this.closeIconPressed) {
            i2++;
        }
        if (isChecked()) {
            i2++;
        }
        int[] iArr = new int[i2];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i = 1;
        }
        if (this.closeIconFocused) {
            iArr[i] = 16842908;
            i++;
        }
        if (this.closeIconHovered) {
            iArr[i] = 16843623;
            i++;
        }
        if (this.closeIconPressed) {
            iArr[i] = 16842919;
            i++;
        }
        if (isChecked()) {
            iArr[i] = 16842913;
        }
        return iArr;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean hasCloseIcon() {
        return (this.chipDrawable == null || this.chipDrawable.getCloseIcon() == null) ? false : true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private RectF getCloseIconTouchBounds() {
        this.rectF.setEmpty();
        if (hasCloseIcon()) {
            this.chipDrawable.getCloseIconTouchBounds(this.rectF);
        }
        return this.rectF;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.rect.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.rect;
    }

    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), 1002);
    }

    /* access modifiers changed from: private */
    public class ChipTouchHelper extends ExploreByTouchHelper {
        ChipTouchHelper(Chip chip) {
            super(chip);
        }

        /* access modifiers changed from: protected */
        @Override // android.support.v4.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            return (!Chip.this.hasCloseIcon() || !Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? -1 : 0;
        }

        /* access modifiers changed from: protected */
        @Override // android.support.v4.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            if (Chip.this.hasCloseIcon()) {
                list.add(0);
            }
        }

        /* access modifiers changed from: protected */
        @Override // android.support.v4.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (Chip.this.hasCloseIcon()) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i2 = R.string.mtrl_chip_close_icon_content_description;
                    Object[] objArr = new Object[1];
                    if (TextUtils.isEmpty(text)) {
                        text = "";
                    }
                    objArr[0] = text;
                    accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, objArr).trim());
                }
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
                return;
            }
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.EMPTY_BOUNDS);
        }

        /* access modifiers changed from: protected */
        @Override // android.support.v4.widget.ExploreByTouchHelper
        public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.chipDrawable != null && Chip.this.chipDrawable.isCheckable());
            accessibilityNodeInfoCompat.setClassName(Chip.class.getName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        /* access modifiers changed from: protected */
        @Override // android.support.v4.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16 && i == 0) {
                return Chip.this.performCloseIconClick();
            }
            return false;
        }
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipBackgroundColor();
        }
        return null;
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipBackgroundColorResource(i);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipBackgroundColor(colorStateList);
        }
    }

    public float getChipMinHeight() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipMinHeight();
        }
        return 0.0f;
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipMinHeightResource(i);
        }
    }

    public void setChipMinHeight(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipMinHeight(f);
        }
    }

    public float getChipCornerRadius() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipCornerRadius();
        }
        return 0.0f;
    }

    public void setChipCornerRadiusResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipCornerRadiusResource(i);
        }
    }

    public void setChipCornerRadius(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipCornerRadius(f);
        }
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipStrokeColor();
        }
        return null;
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeColorResource(i);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeColor(colorStateList);
        }
    }

    public float getChipStrokeWidth() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipStrokeWidth();
        }
        return 0.0f;
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeWidthResource(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeWidth(f);
        }
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getRippleColor();
        }
        return null;
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setRippleColorResource(i);
        }
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setRippleColor(colorStateList);
        }
    }

    public CharSequence getText() {
        return this.chipDrawable != null ? this.chipDrawable.getText() : "";
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.chipDrawable != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            CharSequence unicodeWrap = BidiFormatter.getInstance().unicodeWrap(charSequence);
            if (this.chipDrawable.shouldDrawText()) {
                unicodeWrap = null;
            }
            super.setText(unicodeWrap, bufferType);
            if (this.chipDrawable != null) {
                this.chipDrawable.setText(charSequence);
            }
        }
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Nullable
    private TextAppearance getTextAppearance() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getTextAppearance();
        }
        return null;
    }

    private void updateTextPaintDrawState(TextAppearance textAppearance) {
        TextPaint paint = getPaint();
        paint.drawableState = this.chipDrawable.getState();
        textAppearance.updateDrawState(getContext(), paint, this.fontCallback);
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearanceResource(i);
        }
        setTextAppearance(getContext(), i);
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearance(textAppearance);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(getContext(), getPaint(), this.fontCallback);
            updateTextPaintDrawState(textAppearance);
        }
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearanceResource(i);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(context, getPaint(), this.fontCallback);
            updateTextPaintDrawState(getTextAppearance());
        }
    }

    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearanceResource(i);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(getContext(), getPaint(), this.fontCallback);
            updateTextPaintDrawState(getTextAppearance());
        }
    }

    public boolean isChipIconVisible() {
        return this.chipDrawable != null && this.chipDrawable.isChipIconVisible();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public void setChipIconVisible(@BoolRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconVisible(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconVisible(z);
        }
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Nullable
    public Drawable getChipIcon() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipIcon();
        }
        return null;
    }

    public void setChipIconResource(@DrawableRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconResource(i);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIcon(drawable);
        }
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipIconTint();
        }
        return null;
    }

    public void setChipIconTintResource(@ColorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconTintResource(i);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconTint(colorStateList);
        }
    }

    public float getChipIconSize() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipIconSize();
        }
        return 0.0f;
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconSizeResource(i);
        }
    }

    public void setChipIconSize(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconSize(f);
        }
    }

    public boolean isCloseIconVisible() {
        return this.chipDrawable != null && this.chipDrawable.isCloseIconVisible();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public void setCloseIconVisible(@BoolRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconVisible(i);
        }
    }

    public void setCloseIconVisible(boolean z) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconVisible(z);
        }
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Nullable
    public Drawable getCloseIcon() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIcon();
        }
        return null;
    }

    public void setCloseIconResource(@DrawableRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconResource(i);
        }
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIcon(drawable);
        }
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconTint();
        }
        return null;
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconTintResource(i);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconTint(colorStateList);
        }
    }

    public float getCloseIconSize() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconSize();
        }
        return 0.0f;
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconSizeResource(i);
        }
    }

    public void setCloseIconSize(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconSize(f);
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconContentDescription(charSequence);
        }
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconContentDescription();
        }
        return null;
    }

    public boolean isCheckable() {
        return this.chipDrawable != null && this.chipDrawable.isCheckable();
    }

    public void setCheckableResource(@BoolRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckableResource(i);
        }
    }

    public void setCheckable(boolean z) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckable(z);
        }
    }

    public boolean isCheckedIconVisible() {
        return this.chipDrawable != null && this.chipDrawable.isCheckedIconVisible();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIconVisible(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIconVisible(z);
        }
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Nullable
    public Drawable getCheckedIcon() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCheckedIcon();
        }
        return null;
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIconResource(i);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIcon(drawable);
        }
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getShowMotionSpec();
        }
        return null;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setShowMotionSpecResource(i);
        }
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setShowMotionSpec(motionSpec);
        }
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getHideMotionSpec();
        }
        return null;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setHideMotionSpecResource(i);
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setHideMotionSpec(motionSpec);
        }
    }

    public float getChipStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipStartPadding();
        }
        return 0.0f;
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStartPaddingResource(i);
        }
    }

    public void setChipStartPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStartPadding(f);
        }
    }

    public float getIconStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getIconStartPadding();
        }
        return 0.0f;
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconStartPaddingResource(i);
        }
    }

    public void setIconStartPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconStartPadding(f);
        }
    }

    public float getIconEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getIconEndPadding();
        }
        return 0.0f;
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconEndPaddingResource(i);
        }
    }

    public void setIconEndPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconEndPadding(f);
        }
    }

    public float getTextStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getTextStartPadding();
        }
        return 0.0f;
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextStartPaddingResource(i);
        }
    }

    public void setTextStartPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextStartPadding(f);
        }
    }

    public float getTextEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getTextEndPadding();
        }
        return 0.0f;
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextEndPaddingResource(i);
        }
    }

    public void setTextEndPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextEndPadding(f);
        }
    }

    public float getCloseIconStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconStartPadding();
        }
        return 0.0f;
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconStartPaddingResource(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconStartPadding(f);
        }
    }

    public float getCloseIconEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconEndPadding();
        }
        return 0.0f;
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconEndPaddingResource(i);
        }
    }

    public void setCloseIconEndPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconEndPadding(f);
        }
    }

    public float getChipEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipEndPadding();
        }
        return 0.0f;
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipEndPaddingResource(i);
        }
    }

    public void setChipEndPadding(float f) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipEndPadding(f);
        }
    }
}
