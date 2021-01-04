package android.support.constraint.solver;

import android.support.constraint.solver.SolverVariable;
import java.io.PrintStream;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;

public class ArrayLinkedVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    private static final int NONE = -1;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    int currentSize = 0;
    private int[] mArrayIndices = new int[this.ROW_SIZE];
    private int[] mArrayNextIndices = new int[this.ROW_SIZE];
    private float[] mArrayValues = new float[this.ROW_SIZE];
    private final Cache mCache;
    private boolean mDidFillOnce = false;
    private int mHead = -1;
    private int mLast = -1;
    private final ArrayRow mRow;

    ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
        } else if (this.mHead == -1) {
            this.mHead = 0;
            this.mArrayValues[this.mHead] = f;
            this.mArrayIndices[this.mHead] = solverVariable.id;
            this.mArrayNextIndices[this.mHead] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
                if (this.mLast >= this.mArrayIndices.length) {
                    this.mDidFillOnce = true;
                    this.mLast = this.mArrayIndices.length - 1;
                }
            }
        } else {
            int i = this.mHead;
            int i2 = 0;
            int i3 = -1;
            while (i != -1 && i2 < this.currentSize) {
                if (this.mArrayIndices[i] == solverVariable.id) {
                    this.mArrayValues[i] = f;
                    return;
                }
                if (this.mArrayIndices[i] < solverVariable.id) {
                    i3 = i;
                }
                i = this.mArrayNextIndices[i];
                i2++;
            }
            int i4 = this.mLast + 1;
            if (this.mDidFillOnce) {
                if (this.mArrayIndices[this.mLast] == -1) {
                    i4 = this.mLast;
                } else {
                    i4 = this.mArrayIndices.length;
                }
            }
            if (i4 >= this.mArrayIndices.length && this.currentSize < this.mArrayIndices.length) {
                int i5 = 0;
                while (true) {
                    if (i5 >= this.mArrayIndices.length) {
                        break;
                    } else if (this.mArrayIndices[i5] == -1) {
                        i4 = i5;
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            if (i4 >= this.mArrayIndices.length) {
                i4 = this.mArrayIndices.length;
                this.ROW_SIZE *= 2;
                this.mDidFillOnce = false;
                this.mLast = i4 - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[i4] = solverVariable.id;
            this.mArrayValues[i4] = f;
            if (i3 != -1) {
                this.mArrayNextIndices[i4] = this.mArrayNextIndices[i3];
                this.mArrayNextIndices[i3] = i4;
            } else {
                this.mArrayNextIndices[i4] = this.mHead;
                this.mHead = i4;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            if (this.currentSize >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
            }
            if (this.mLast >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
                this.mLast = this.mArrayIndices.length - 1;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void add(SolverVariable solverVariable, float f, boolean z) {
        if (f != 0.0f) {
            if (this.mHead == -1) {
                this.mHead = 0;
                this.mArrayValues[this.mHead] = f;
                this.mArrayIndices[this.mHead] = solverVariable.id;
                this.mArrayNextIndices[this.mHead] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.mRow);
                this.currentSize++;
                if (!this.mDidFillOnce) {
                    this.mLast++;
                    if (this.mLast >= this.mArrayIndices.length) {
                        this.mDidFillOnce = true;
                        this.mLast = this.mArrayIndices.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i = this.mHead;
            int i2 = 0;
            int i3 = -1;
            while (i != -1 && i2 < this.currentSize) {
                if (this.mArrayIndices[i] == solverVariable.id) {
                    float[] fArr = this.mArrayValues;
                    fArr[i] = fArr[i] + f;
                    if (this.mArrayValues[i] == 0.0f) {
                        if (i == this.mHead) {
                            this.mHead = this.mArrayNextIndices[i];
                        } else {
                            this.mArrayNextIndices[i3] = this.mArrayNextIndices[i];
                        }
                        if (z) {
                            solverVariable.removeFromRow(this.mRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = i;
                        }
                        solverVariable.usageInRowCount--;
                        this.currentSize--;
                        return;
                    }
                    return;
                }
                if (this.mArrayIndices[i] < solverVariable.id) {
                    i3 = i;
                }
                i = this.mArrayNextIndices[i];
                i2++;
            }
            int i4 = this.mLast + 1;
            if (this.mDidFillOnce) {
                if (this.mArrayIndices[this.mLast] == -1) {
                    i4 = this.mLast;
                } else {
                    i4 = this.mArrayIndices.length;
                }
            }
            if (i4 >= this.mArrayIndices.length && this.currentSize < this.mArrayIndices.length) {
                int i5 = 0;
                while (true) {
                    if (i5 >= this.mArrayIndices.length) {
                        break;
                    } else if (this.mArrayIndices[i5] == -1) {
                        i4 = i5;
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            if (i4 >= this.mArrayIndices.length) {
                i4 = this.mArrayIndices.length;
                this.ROW_SIZE *= 2;
                this.mDidFillOnce = false;
                this.mLast = i4 - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[i4] = solverVariable.id;
            this.mArrayValues[i4] = f;
            if (i3 != -1) {
                this.mArrayNextIndices[i4] = this.mArrayNextIndices[i3];
                this.mArrayNextIndices[i3] = i4;
            } else {
                this.mArrayNextIndices[i4] = this.mHead;
                this.mHead = i4;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            if (this.mLast >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
                this.mLast = this.mArrayIndices.length - 1;
            }
        }
    }

    public final float remove(SolverVariable solverVariable, boolean z) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        if (this.mHead == -1) {
            return 0.0f;
        }
        int i = this.mHead;
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                if (i == this.mHead) {
                    this.mHead = this.mArrayNextIndices[i];
                } else {
                    this.mArrayNextIndices[i3] = this.mArrayNextIndices[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[i] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i;
                }
                return this.mArrayValues[i];
            }
            i2++;
            i3 = i;
            i = this.mArrayNextIndices[i];
        }
        return 0.0f;
    }

    public final void clear() {
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            i = this.mArrayNextIndices[i];
            i2++;
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    /* access modifiers changed from: package-private */
    public final boolean containsKey(SolverVariable solverVariable) {
        if (this.mHead == -1) {
            return false;
        }
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                return true;
            }
            i = this.mArrayNextIndices[i];
            i2++;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean hasAtLeastOnePositiveVariable() {
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayValues[i] > 0.0f) {
                return true;
            }
            i = this.mArrayNextIndices[i];
            i2++;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void invert() {
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] * -1.0f;
            i = this.mArrayNextIndices[i];
            i2++;
        }
    }

    /* access modifiers changed from: package-private */
    public void divideByAmount(float f) {
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] / f;
            i = this.mArrayNextIndices[i];
            i2++;
        }
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0094 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.support.constraint.solver.SolverVariable chooseSubject(android.support.constraint.solver.LinearSystem r15) {
        /*
        // Method dump skipped, instructions count: 160
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.ArrayLinkedVariables.chooseSubject(android.support.constraint.solver.LinearSystem):android.support.constraint.solver.SolverVariable");
    }

    /* access modifiers changed from: package-private */
    public final void updateFromRow(ArrayRow arrayRow, ArrayRow arrayRow2, boolean z) {
        int i = this.mHead;
        while (true) {
            int i2 = 0;
            while (i != -1 && i2 < this.currentSize) {
                if (this.mArrayIndices[i] == arrayRow2.variable.id) {
                    float f = this.mArrayValues[i];
                    remove(arrayRow2.variable, z);
                    ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                    int i3 = arrayLinkedVariables.mHead;
                    int i4 = 0;
                    while (i3 != -1 && i4 < arrayLinkedVariables.currentSize) {
                        add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[i3]], arrayLinkedVariables.mArrayValues[i3] * f, z);
                        i3 = arrayLinkedVariables.mArrayNextIndices[i3];
                        i4++;
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    if (z) {
                        arrayRow2.variable.removeFromRow(arrayRow);
                    }
                    i = this.mHead;
                } else {
                    i = this.mArrayNextIndices[i];
                    i2++;
                }
            }
            return;
        }
    }

    /* access modifiers changed from: package-private */
    public void updateFromSystem(ArrayRow arrayRow, ArrayRow[] arrayRowArr) {
        int i = this.mHead;
        while (true) {
            int i2 = 0;
            while (i != -1 && i2 < this.currentSize) {
                SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (solverVariable.definitionId != -1) {
                    float f = this.mArrayValues[i];
                    remove(solverVariable, true);
                    ArrayRow arrayRow2 = arrayRowArr[solverVariable.definitionId];
                    if (!arrayRow2.isSimpleDefinition) {
                        ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                        int i3 = arrayLinkedVariables.mHead;
                        int i4 = 0;
                        while (i3 != -1 && i4 < arrayLinkedVariables.currentSize) {
                            add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[i3]], arrayLinkedVariables.mArrayValues[i3] * f, true);
                            i3 = arrayLinkedVariables.mArrayNextIndices[i3];
                            i4++;
                        }
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    arrayRow2.variable.removeFromRow(arrayRow);
                    i = this.mHead;
                } else {
                    i = this.mArrayNextIndices[i];
                    i2++;
                }
            }
            return;
        }
    }

    /* access modifiers changed from: package-private */
    public SolverVariable getPivotCandidate() {
        if (this.candidate != null) {
            return this.candidate;
        }
        int i = this.mHead;
        int i2 = 0;
        SolverVariable solverVariable = null;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayValues[i] < 0.0f) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (solverVariable == null || solverVariable.strength < solverVariable2.strength) {
                    solverVariable = solverVariable2;
                }
            }
            i = this.mArrayNextIndices[i];
            i2++;
        }
        return solverVariable;
    }

    /* access modifiers changed from: package-private */
    public SolverVariable getPivotCandidate(boolean[] zArr, SolverVariable solverVariable) {
        int i = this.mHead;
        int i2 = 0;
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayValues[i] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if ((zArr == null || !zArr[solverVariable3.id]) && solverVariable3 != solverVariable && (solverVariable3.mType == SolverVariable.Type.SLACK || solverVariable3.mType == SolverVariable.Type.ERROR)) {
                    float f2 = this.mArrayValues[i];
                    if (f2 < f) {
                        solverVariable2 = solverVariable3;
                        f = f2;
                    }
                }
            }
            i = this.mArrayNextIndices[i];
            i2++;
        }
        return solverVariable2;
    }

    /* access modifiers changed from: package-private */
    public final SolverVariable getVariable(int i) {
        int i2 = this.mHead;
        int i3 = 0;
        while (i2 != -1 && i3 < this.currentSize) {
            if (i3 == i) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[i2]];
            }
            i2 = this.mArrayNextIndices[i2];
            i3++;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final float getVariableValue(int i) {
        int i2 = this.mHead;
        int i3 = 0;
        while (i2 != -1 && i3 < this.currentSize) {
            if (i3 == i) {
                return this.mArrayValues[i2];
            }
            i2 = this.mArrayNextIndices[i2];
            i3++;
        }
        return 0.0f;
    }

    public final float get(SolverVariable solverVariable) {
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                return this.mArrayValues[i];
            }
            i = this.mArrayNextIndices[i];
            i2++;
        }
        return 0.0f;
    }

    /* access modifiers changed from: package-private */
    public int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public void display() {
        int i = this.currentSize;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                PrintStream printStream = System.out;
                printStream.print(variable + " = " + getVariableValue(i2) + StringUtils.SPACE);
            }
        }
        System.out.println(" }");
    }

    public String toString() {
        String str = "";
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            str = ((str + " -> ") + this.mArrayValues[i] + " : ") + this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            i = this.mArrayNextIndices[i];
            i2++;
        }
        return str;
    }
}
