package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;

/* access modifiers changed from: package-private */
public class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        ChainHead[] chainHeadArr;
        int i3;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i2 = i4;
            i3 = 0;
        } else {
            i3 = 2;
            i2 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (!constraintWidgetContainer.optimizeFor(4)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i3, chainHead);
            } else if (!Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i3, chainHead)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i3, chainHead);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (r2.mHorizontalChainStyle == 2) goto L_0x0037;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0039, code lost:
        r5 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0053, code lost:
        if (r2.mVerticalChainStyle == 2) goto L_0x0037;
     */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x03b4  */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x03b7  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x03dc  */
    /* JADX WARNING: Removed duplicated region for block: B:258:0x04b9  */
    /* JADX WARNING: Removed duplicated region for block: B:264:0x04f2  */
    /* JADX WARNING: Removed duplicated region for block: B:274:0x051c  */
    /* JADX WARNING: Removed duplicated region for block: B:275:0x0521  */
    /* JADX WARNING: Removed duplicated region for block: B:278:0x0527  */
    /* JADX WARNING: Removed duplicated region for block: B:279:0x052c  */
    /* JADX WARNING: Removed duplicated region for block: B:281:0x0530  */
    /* JADX WARNING: Removed duplicated region for block: B:287:0x0542  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0164  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x019e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer r48, android.support.constraint.solver.LinearSystem r49, int r50, int r51, android.support.constraint.solver.widgets.ChainHead r52) {
        /*
        // Method dump skipped, instructions count: 1392
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Chain.applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer, android.support.constraint.solver.LinearSystem, int, int, android.support.constraint.solver.widgets.ChainHead):void");
    }
}
