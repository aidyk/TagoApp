package android.support.design.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {
    @Nullable
    private AnimatorSet currentAnimation;

    /* access modifiers changed from: protected */
    @NonNull
    public abstract AnimatorSet onCreateExpandedStateChangeAnimation(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    @Override // android.support.design.transformation.ExpandableBehavior
    @CallSuper
    public boolean onExpandedStateChange(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.currentAnimation != null;
        if (z3) {
            this.currentAnimation.cancel();
        }
        this.currentAnimation = onCreateExpandedStateChangeAnimation(view, view2, z, z3);
        this.currentAnimation.addListener(new AnimatorListenerAdapter() {
            /* class android.support.design.transformation.ExpandableTransformationBehavior.AnonymousClass1 */

            public void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.currentAnimation = null;
            }
        });
        this.currentAnimation.start();
        if (!z2) {
            this.currentAnimation.end();
        }
        return true;
    }
}
