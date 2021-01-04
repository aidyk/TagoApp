package android.support.design.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Dimension;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.design.R;
import android.support.design.animation.AnimationUtils;
import android.support.design.behavior.HideBottomViewOnScrollBehavior;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.resources.MaterialResources;
import android.support.design.shape.MaterialShapeDrawable;
import android.support.design.shape.ShapePathModel;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    private static final long ANIMATION_DURATION = 300;
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    @Nullable
    private Animator attachAnimator;
    private int fabAlignmentMode;
    AnimatorListenerAdapter fabAnimationListener;
    private boolean fabAttached;
    private final int fabOffsetEndMode;
    private boolean hideOnScroll;
    private final MaterialShapeDrawable materialShapeDrawable;
    @Nullable
    private Animator menuAnimator;
    @Nullable
    private Animator modeAnimator;
    private final BottomAppBarTopEdgeTreatment topEdgeTreatment;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAlignmentMode {
    }

    @Override // android.support.v7.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // android.support.v7.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.fabAttached = true;
        this.fabAnimationListener = new AnimatorListenerAdapter() {
            /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass7 */

            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.maybeAnimateAttachChange(BottomAppBar.this.fabAttached);
                BottomAppBar.this.maybeAnimateMenuView(BottomAppBar.this.fabAlignmentMode, BottomAppBar.this.fabAttached);
            }
        };
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.BottomAppBar, i, R.style.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, R.styleable.BottomAppBar_backgroundTint);
        this.fabAlignmentMode = obtainStyledAttributes.getInt(R.styleable.BottomAppBar_fabAlignmentMode, 0);
        this.hideOnScroll = obtainStyledAttributes.getBoolean(R.styleable.BottomAppBar_hideOnScroll, false);
        obtainStyledAttributes.recycle();
        this.fabOffsetEndMode = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        this.topEdgeTreatment = new BottomAppBarTopEdgeTreatment((float) obtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleMargin, 0), (float) obtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0), (float) obtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleVerticalOffset, 0));
        ShapePathModel shapePathModel = new ShapePathModel();
        shapePathModel.setTopEdge(this.topEdgeTreatment);
        this.materialShapeDrawable = new MaterialShapeDrawable(shapePathModel);
        this.materialShapeDrawable.setShadowEnabled(true);
        this.materialShapeDrawable.setPaintStyle(Paint.Style.FILL);
        DrawableCompat.setTintList(this.materialShapeDrawable, colorStateList);
        ViewCompat.setBackground(this, this.materialShapeDrawable);
    }

    public int getFabAlignmentMode() {
        return this.fabAlignmentMode;
    }

    public void setFabAlignmentMode(int i) {
        maybeAnimateModeChange(i);
        maybeAnimateMenuView(i, this.fabAttached);
        this.fabAlignmentMode = i;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.materialShapeDrawable, colorStateList);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.materialShapeDrawable.getTintList();
    }

    public float getFabCradleMargin() {
        return this.topEdgeTreatment.getFabCradleMargin();
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f != getFabCradleMargin()) {
            this.topEdgeTreatment.setFabCradleMargin(f);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return this.topEdgeTreatment.getFabCradleRoundedCornerRadius();
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            this.topEdgeTreatment.setFabCradleRoundedCornerRadius(f);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return this.topEdgeTreatment.getCradleVerticalOffset();
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f != getCradleVerticalOffset()) {
            this.topEdgeTreatment.setCradleVerticalOffset(f);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    public boolean getHideOnScroll() {
        return this.hideOnScroll;
    }

    public void setHideOnScroll(boolean z) {
        this.hideOnScroll = z;
    }

    public void replaceMenu(@MenuRes int i) {
        getMenu().clear();
        inflateMenu(i);
    }

    /* access modifiers changed from: package-private */
    public void setFabDiameter(@Px int i) {
        float f = (float) i;
        if (f != this.topEdgeTreatment.getFabDiameter()) {
            this.topEdgeTreatment.setFabDiameter(f);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    private void maybeAnimateModeChange(int i) {
        if (this.fabAlignmentMode != i && ViewCompat.isLaidOut(this)) {
            if (this.modeAnimator != null) {
                this.modeAnimator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            createCradleTranslationAnimation(i, arrayList);
            createFabTranslationXAnimation(i, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.modeAnimator = animatorSet;
            this.modeAnimator.addListener(new AnimatorListenerAdapter() {
                /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass1 */

                public void onAnimationEnd(Animator animator) {
                    BottomAppBar.this.modeAnimator = null;
                }
            });
            this.modeAnimator.start();
        }
    }

    private void createCradleTranslationAnimation(int i, List<Animator> list) {
        if (this.fabAttached) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.topEdgeTreatment.getHorizontalOffset(), (float) getFabTranslationX(i));
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass2 */

                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BottomAppBar.this.topEdgeTreatment.setHorizontalOffset(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    BottomAppBar.this.materialShapeDrawable.invalidateSelf();
                }
            });
            ofFloat.setDuration(ANIMATION_DURATION);
            list.add(ofFloat);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    @Nullable
    private FloatingActionButton findDependentFab() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    private boolean isVisibleFab() {
        FloatingActionButton findDependentFab = findDependentFab();
        return findDependentFab != null && findDependentFab.isOrWillBeShown();
    }

    private void createFabTranslationXAnimation(int i, List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(findDependentFab(), "translationX", (float) getFabTranslationX(i));
        ofFloat.setDuration(ANIMATION_DURATION);
        list.add(ofFloat);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void maybeAnimateMenuView(int i, boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            if (this.menuAnimator != null) {
                this.menuAnimator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!isVisibleFab()) {
                i = 0;
                z = false;
            }
            createMenuViewTranslationAnimation(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.menuAnimator = animatorSet;
            this.menuAnimator.addListener(new AnimatorListenerAdapter() {
                /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass3 */

                public void onAnimationEnd(Animator animator) {
                    BottomAppBar.this.menuAnimator = null;
                }
            });
            this.menuAnimator.start();
        }
    }

    private void createMenuViewTranslationAnimation(final int i, final boolean z, List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            if ((this.fabAttached || (z && isVisibleFab())) && (this.fabAlignmentMode == 1 || i == 1)) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                ofFloat2.addListener(new AnimatorListenerAdapter() {
                    /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass4 */
                    public boolean cancelled;

                    public void onAnimationCancel(Animator animator) {
                        this.cancelled = true;
                    }

                    public void onAnimationEnd(Animator animator) {
                        if (!this.cancelled) {
                            BottomAppBar.this.translateActionMenuView(actionMenuView, i, z);
                        }
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150L);
                animatorSet.playSequentially(ofFloat2, ofFloat);
                list.add(animatorSet);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void maybeAnimateAttachChange(boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            if (this.attachAnimator != null) {
                this.attachAnimator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            createCradleShapeAnimation(z && isVisibleFab(), arrayList);
            createFabTranslationYAnimation(z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.attachAnimator = animatorSet;
            this.attachAnimator.addListener(new AnimatorListenerAdapter() {
                /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass5 */

                public void onAnimationEnd(Animator animator) {
                    BottomAppBar.this.attachAnimator = null;
                }
            });
            this.attachAnimator.start();
        }
    }

    private void createCradleShapeAnimation(boolean z, List<Animator> list) {
        if (z) {
            this.topEdgeTreatment.setHorizontalOffset(getFabTranslationX());
        }
        float[] fArr = new float[2];
        fArr[0] = this.materialShapeDrawable.getInterpolation();
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            /* class android.support.design.bottomappbar.BottomAppBar.AnonymousClass6 */

            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BottomAppBar.this.materialShapeDrawable.setInterpolation(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        ofFloat.setDuration(ANIMATION_DURATION);
        list.add(ofFloat);
    }

    private void createFabTranslationYAnimation(boolean z, List<Animator> list) {
        FloatingActionButton findDependentFab = findDependentFab();
        if (findDependentFab != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(findDependentFab, "translationY", getFabTranslationY(z));
            ofFloat.setDuration(ANIMATION_DURATION);
            list.add(ofFloat);
        }
    }

    private float getFabTranslationY(boolean z) {
        FloatingActionButton findDependentFab = findDependentFab();
        if (findDependentFab == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        findDependentFab.getContentRect(rect);
        float height = (float) rect.height();
        if (height == 0.0f) {
            height = (float) findDependentFab.getMeasuredHeight();
        }
        float height2 = (float) (findDependentFab.getHeight() - rect.height());
        float height3 = (-getCradleVerticalOffset()) + (height / 2.0f) + ((float) (findDependentFab.getHeight() - rect.bottom));
        float paddingBottom = height2 - ((float) findDependentFab.getPaddingBottom());
        float f = (float) (-getMeasuredHeight());
        if (z) {
            paddingBottom = height3;
        }
        return f + paddingBottom;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private float getFabTranslationY() {
        return getFabTranslationY(this.fabAttached);
    }

    private int getFabTranslationX(int i) {
        int i2 = 1;
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        if (i != 1) {
            return 0;
        }
        int measuredWidth = (getMeasuredWidth() / 2) - this.fabOffsetEndMode;
        if (z) {
            i2 = -1;
        }
        return measuredWidth * i2;
    }

    private float getFabTranslationX() {
        return (float) getFabTranslationX(this.fabAlignmentMode);
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void translateActionMenuView(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                i2 = Math.max(i2, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i != 1 || !z) ? 0.0f : (float) (i2 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft())));
    }

    private void cancelAnimations() {
        if (this.attachAnimator != null) {
            this.attachAnimator.cancel();
        }
        if (this.menuAnimator != null) {
            this.menuAnimator.cancel();
        }
        if (this.modeAnimator != null) {
            this.modeAnimator.cancel();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean isAnimationRunning() {
        return (this.attachAnimator != null && this.attachAnimator.isRunning()) || (this.menuAnimator != null && this.menuAnimator.isRunning()) || (this.modeAnimator != null && this.modeAnimator.isRunning());
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v7.widget.Toolbar
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        cancelAnimations();
        setCutoutState();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void setCutoutState() {
        this.topEdgeTreatment.setHorizontalOffset(getFabTranslationX());
        FloatingActionButton findDependentFab = findDependentFab();
        this.materialShapeDrawable.setInterpolation((!this.fabAttached || !isVisibleFab()) ? 0.0f : 1.0f);
        if (findDependentFab != null) {
            findDependentFab.setTranslationY(getFabTranslationY());
            findDependentFab.setTranslationX(getFabTranslationX());
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!isVisibleFab()) {
                translateActionMenuView(actionMenuView, 0, false);
            } else {
                translateActionMenuView(actionMenuView, this.fabAlignmentMode, this.fabAttached);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void addFabAnimationListeners(@NonNull FloatingActionButton floatingActionButton) {
        removeFabAnimationListeners(floatingActionButton);
        floatingActionButton.addOnHideAnimationListener(this.fabAnimationListener);
        floatingActionButton.addOnShowAnimationListener(this.fabAnimationListener);
    }

    private void removeFabAnimationListeners(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.removeOnHideAnimationListener(this.fabAnimationListener);
        floatingActionButton.removeOnShowAnimationListener(this.fabAnimationListener);
    }

    @Override // android.support.design.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        private final Rect fabContentRect = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        private boolean updateFabPositionAndVisibility(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).anchorGravity = 17;
            bottomAppBar.addFabAnimationListeners(floatingActionButton);
            return true;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            FloatingActionButton findDependentFab = bottomAppBar.findDependentFab();
            if (findDependentFab != null) {
                updateFabPositionAndVisibility(findDependentFab, bottomAppBar);
                findDependentFab.getMeasuredContentRect(this.fabContentRect);
                bottomAppBar.setFabDiameter(this.fabContentRect.height());
            }
            if (!bottomAppBar.isAnimationRunning()) {
                bottomAppBar.setCutoutState();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, (View) bottomAppBar, i);
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        /* access modifiers changed from: protected */
        public void slideUp(BottomAppBar bottomAppBar) {
            super.slideUp((View) bottomAppBar);
            FloatingActionButton findDependentFab = bottomAppBar.findDependentFab();
            if (findDependentFab != null) {
                findDependentFab.clearAnimation();
                findDependentFab.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setDuration(225);
            }
        }

        /* access modifiers changed from: protected */
        public void slideDown(BottomAppBar bottomAppBar) {
            super.slideDown((View) bottomAppBar);
            FloatingActionButton findDependentFab = bottomAppBar.findDependentFab();
            if (findDependentFab != null) {
                findDependentFab.getContentRect(this.fabContentRect);
                findDependentFab.clearAnimation();
                findDependentFab.animate().translationY(((float) (-findDependentFab.getPaddingBottom())) + ((float) (findDependentFab.getMeasuredHeight() - this.fabContentRect.height()))).setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setDuration(175);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v7.widget.Toolbar
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.fabAlignmentMode;
        savedState.fabAttached = this.fabAttached;
        return savedState;
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v7.widget.Toolbar
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.fabAlignmentMode = savedState.fabAlignmentMode;
        this.fabAttached = savedState.fabAttached;
    }

    /* access modifiers changed from: package-private */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            /* class android.support.design.bottomappbar.BottomAppBar.SavedState.AnonymousClass1 */

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int fabAlignmentMode;
        boolean fabAttached;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }

        @Override // android.support.v4.view.AbsSavedState
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }
    }
}
