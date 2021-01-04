package com.google.zxing.common.reedsolomon;

public final class ReedSolomonDecoder {
    private final GenericGF field;

    public ReedSolomonDecoder(GenericGF genericGF) {
        this.field = genericGF;
    }

    public void decode(int[] iArr, int i) throws ReedSolomonException {
        GenericGFPoly genericGFPoly = new GenericGFPoly(this.field, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            int evaluateAt = genericGFPoly.evaluateAt(this.field.exp(this.field.getGeneratorBase() + i2));
            iArr2[(i - 1) - i2] = evaluateAt;
            if (evaluateAt != 0) {
                z = false;
            }
        }
        if (!z) {
            GenericGFPoly[] runEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new GenericGFPoly(this.field, iArr2), i);
            GenericGFPoly genericGFPoly2 = runEuclideanAlgorithm[0];
            GenericGFPoly genericGFPoly3 = runEuclideanAlgorithm[1];
            int[] findErrorLocations = findErrorLocations(genericGFPoly2);
            int[] findErrorMagnitudes = findErrorMagnitudes(genericGFPoly3, findErrorLocations);
            for (int i3 = 0; i3 < findErrorLocations.length; i3++) {
                int length = (iArr.length - 1) - this.field.log(findErrorLocations[i3]);
                if (length >= 0) {
                    iArr[length] = GenericGF.addOrSubtract(iArr[length], findErrorMagnitudes[i3]);
                } else {
                    throw new ReedSolomonException("Bad error location");
                }
            }
        }
    }

    private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly genericGFPoly, GenericGFPoly genericGFPoly2, int i) throws ReedSolomonException {
        if (genericGFPoly.getDegree() < genericGFPoly2.getDegree()) {
            genericGFPoly2 = genericGFPoly;
            genericGFPoly = genericGFPoly2;
        }
        GenericGFPoly zero = this.field.getZero();
        GenericGFPoly one = this.field.getOne();
        GenericGFPoly genericGFPoly3 = genericGFPoly;
        GenericGFPoly genericGFPoly4 = genericGFPoly2;
        while (genericGFPoly4.getDegree() >= i / 2) {
            if (!genericGFPoly4.isZero()) {
                GenericGFPoly zero2 = this.field.getZero();
                int inverse = this.field.inverse(genericGFPoly4.getCoefficient(genericGFPoly4.getDegree()));
                while (genericGFPoly3.getDegree() >= genericGFPoly4.getDegree() && !genericGFPoly3.isZero()) {
                    int degree = genericGFPoly3.getDegree() - genericGFPoly4.getDegree();
                    int multiply = this.field.multiply(genericGFPoly3.getCoefficient(genericGFPoly3.getDegree()), inverse);
                    zero2 = zero2.addOrSubtract(this.field.buildMonomial(degree, multiply));
                    genericGFPoly3 = genericGFPoly3.addOrSubtract(genericGFPoly4.multiplyByMonomial(degree, multiply));
                }
                GenericGFPoly addOrSubtract = zero2.multiply(one).addOrSubtract(zero);
                if (genericGFPoly3.getDegree() < genericGFPoly4.getDegree()) {
                    genericGFPoly3 = genericGFPoly4;
                    genericGFPoly4 = genericGFPoly3;
                    one = addOrSubtract;
                    zero = one;
                } else {
                    throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
                }
            } else {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
        }
        int coefficient = one.getCoefficient(0);
        if (coefficient != 0) {
            int inverse2 = this.field.inverse(coefficient);
            return new GenericGFPoly[]{one.multiply(inverse2), genericGFPoly4.multiply(inverse2)};
        }
        throw new ReedSolomonException("sigmaTilde(0) was zero");
    }

    private int[] findErrorLocations(GenericGFPoly genericGFPoly) throws ReedSolomonException {
        int degree = genericGFPoly.getDegree();
        int i = 0;
        if (degree == 1) {
            return new int[]{genericGFPoly.getCoefficient(1)};
        }
        int[] iArr = new int[degree];
        for (int i2 = 1; i2 < this.field.getSize() && i < degree; i2++) {
            if (genericGFPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i++;
            }
        }
        if (i == degree) {
            return iArr;
        }
        throw new ReedSolomonException("Error locator degree does not match number of roots");
    }

    private int[] findErrorMagnitudes(GenericGFPoly genericGFPoly, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int inverse = this.field.inverse(iArr[i]);
            int i2 = 1;
            for (int i3 = 0; i3 < length; i3++) {
                if (i != i3) {
                    int multiply = this.field.multiply(iArr[i3], inverse);
                    i2 = this.field.multiply(i2, (multiply & 1) == 0 ? multiply | 1 : multiply & -2);
                }
            }
            iArr2[i] = this.field.multiply(genericGFPoly.evaluateAt(inverse), this.field.inverse(i2));
            if (this.field.getGeneratorBase() != 0) {
                iArr2[i] = this.field.multiply(iArr2[i], inverse);
            }
        }
        return iArr2;
    }
}
