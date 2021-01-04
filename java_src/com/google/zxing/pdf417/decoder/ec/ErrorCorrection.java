package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.ChecksumException;

public final class ErrorCorrection {
    private final ModulusGF field = ModulusGF.PDF417_GF;

    public int decode(int[] iArr, int i, int[] iArr2) throws ChecksumException {
        ModulusPoly modulusPoly = new ModulusPoly(this.field, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int evaluateAt = modulusPoly.evaluateAt(this.field.exp(i2));
            iArr3[i - i2] = evaluateAt;
            if (evaluateAt != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        ModulusPoly one = this.field.getOne();
        if (iArr2 != null) {
            ModulusPoly modulusPoly2 = one;
            for (int i3 : iArr2) {
                modulusPoly2 = modulusPoly2.multiply(new ModulusPoly(this.field, new int[]{this.field.subtract(0, this.field.exp((iArr.length - 1) - i3)), 1}));
            }
        }
        ModulusPoly[] runEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new ModulusPoly(this.field, iArr3), i);
        ModulusPoly modulusPoly3 = runEuclideanAlgorithm[0];
        ModulusPoly modulusPoly4 = runEuclideanAlgorithm[1];
        int[] findErrorLocations = findErrorLocations(modulusPoly3);
        int[] findErrorMagnitudes = findErrorMagnitudes(modulusPoly4, modulusPoly3, findErrorLocations);
        for (int i4 = 0; i4 < findErrorLocations.length; i4++) {
            int length = (iArr.length - 1) - this.field.log(findErrorLocations[i4]);
            if (length >= 0) {
                iArr[length] = this.field.subtract(iArr[length], findErrorMagnitudes[i4]);
            } else {
                throw ChecksumException.getChecksumInstance();
            }
        }
        return findErrorLocations.length;
    }

    private ModulusPoly[] runEuclideanAlgorithm(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int i) throws ChecksumException {
        if (modulusPoly.getDegree() < modulusPoly2.getDegree()) {
            modulusPoly2 = modulusPoly;
            modulusPoly = modulusPoly2;
        }
        ModulusPoly zero = this.field.getZero();
        ModulusPoly one = this.field.getOne();
        ModulusPoly modulusPoly3 = modulusPoly;
        ModulusPoly modulusPoly4 = modulusPoly2;
        while (modulusPoly4.getDegree() >= i / 2) {
            if (!modulusPoly4.isZero()) {
                ModulusPoly zero2 = this.field.getZero();
                int inverse = this.field.inverse(modulusPoly4.getCoefficient(modulusPoly4.getDegree()));
                while (modulusPoly3.getDegree() >= modulusPoly4.getDegree() && !modulusPoly3.isZero()) {
                    int degree = modulusPoly3.getDegree() - modulusPoly4.getDegree();
                    int multiply = this.field.multiply(modulusPoly3.getCoefficient(modulusPoly3.getDegree()), inverse);
                    zero2 = zero2.add(this.field.buildMonomial(degree, multiply));
                    modulusPoly3 = modulusPoly3.subtract(modulusPoly4.multiplyByMonomial(degree, multiply));
                }
                modulusPoly3 = modulusPoly4;
                modulusPoly4 = modulusPoly3;
                one = zero2.multiply(one).subtract(zero).negative();
                zero = one;
            } else {
                throw ChecksumException.getChecksumInstance();
            }
        }
        int coefficient = one.getCoefficient(0);
        if (coefficient != 0) {
            int inverse2 = this.field.inverse(coefficient);
            return new ModulusPoly[]{one.multiply(inverse2), modulusPoly4.multiply(inverse2)};
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] findErrorLocations(ModulusPoly modulusPoly) throws ChecksumException {
        int degree = modulusPoly.getDegree();
        int[] iArr = new int[degree];
        int i = 0;
        for (int i2 = 1; i2 < this.field.getSize() && i < degree; i2++) {
            if (modulusPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i++;
            }
        }
        if (i == degree) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] findErrorMagnitudes(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int[] iArr) {
        int degree = modulusPoly2.getDegree();
        int[] iArr2 = new int[degree];
        for (int i = 1; i <= degree; i++) {
            iArr2[degree - i] = this.field.multiply(i, modulusPoly2.getCoefficient(i));
        }
        ModulusPoly modulusPoly3 = new ModulusPoly(this.field, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int inverse = this.field.inverse(iArr[i2]);
            iArr3[i2] = this.field.multiply(this.field.subtract(0, modulusPoly.evaluateAt(inverse)), this.field.inverse(modulusPoly3.evaluateAt(inverse)));
        }
        return iArr3;
    }
}
