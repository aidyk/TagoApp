package org.jetbrains.anko;

import android.support.annotation.IdRes;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001a\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0017\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\r\u0010\b\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\u000b\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\f\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\r\u001a\u00020\u0001*\u00020\u0002H\b\u001a\u0017\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0012\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0017\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0017\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\u0013\u001a\u00020\u0001*\u00020\u0002H\b\u001a\r\u0010\u0014\u001a\u00020\u0001*\u00020\u0002H\b\u001a\u0015\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0015\u0010\u001e\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u001e\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b\u001a\u0012\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0017\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\b¨\u0006 "}, d2 = {"above", "", "Landroid/widget/RelativeLayout$LayoutParams;", Promotion.ACTION_VIEW, "Landroid/view/View;", "id", "", "alignEnd", "alignParentBottom", "alignParentEnd", "alignParentLeft", "alignParentRight", "alignParentStart", "alignParentTop", "alignStart", "baselineOf", "below", "bottomOf", "centerHorizontally", "centerInParent", "centerVertically", "endOf", "leftOf", "rightOf", "sameBottom", "sameEnd", "sameLeft", "sameRight", "sameStart", "sameTop", "startOf", "topOf", "commons-base_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: RelativeLayoutLayoutParamsHelpers.kt */
public final class RelativeLayoutLayoutParamsHelpersKt {
    public static final void topOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(2, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void above(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(2, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void bottomOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(3, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void below(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(3, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void leftOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(0, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    @RequiresApi(17)
    public static final void startOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(16, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void rightOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(1, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    @RequiresApi(17)
    public static final void endOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(17, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void sameLeft(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(5, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    @RequiresApi(17)
    public static final void sameStart(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(18, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void sameTop(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(6, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void sameRight(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(7, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    @RequiresApi(17)
    public static final void sameEnd(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(19, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void sameBottom(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(8, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void topOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(2, i);
    }

    public static final void above(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(2, i);
    }

    public static final void below(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(3, i);
    }

    public static final void bottomOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(3, i);
    }

    public static final void leftOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(0, i);
    }

    @RequiresApi(17)
    public static final void startOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(16, i);
    }

    public static final void rightOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(1, i);
    }

    @RequiresApi(17)
    public static final void endOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(17, i);
    }

    public static final void sameLeft(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(5, i);
    }

    @RequiresApi(17)
    public static final void sameStart(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(18, i);
    }

    public static final void sameTop(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(6, i);
    }

    public static final void sameRight(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(7, i);
    }

    @RequiresApi(17)
    public static final void sameEnd(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(19, i);
    }

    public static final void sameBottom(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(8, i);
    }

    @RequiresApi(17)
    public static final void alignStart(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(18, i);
    }

    @RequiresApi(17)
    public static final void alignEnd(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(19, i);
    }

    public static final void alignParentTop(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(10);
    }

    public static final void alignParentRight(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(11);
    }

    public static final void alignParentBottom(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(12);
    }

    public static final void alignParentLeft(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(9);
    }

    public static final void centerHorizontally(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(14);
    }

    public static final void centerVertically(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(15);
    }

    public static final void centerInParent(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(13);
    }

    @RequiresApi(17)
    public static final void alignParentStart(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(20);
    }

    @RequiresApi(17)
    public static final void alignParentEnd(@NotNull RelativeLayout.LayoutParams layoutParams) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(21);
    }

    public static final void baselineOf(@NotNull RelativeLayout.LayoutParams layoutParams, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        int id = view.getId();
        if (id != -1) {
            layoutParams.addRule(4, id);
            return;
        }
        throw new AnkoException("Id is not set for " + view);
    }

    public static final void baselineOf(@NotNull RelativeLayout.LayoutParams layoutParams, @IdRes int i) {
        Intrinsics.checkParameterIsNotNull(layoutParams, "receiver$0");
        layoutParams.addRule(4, i);
    }
}
