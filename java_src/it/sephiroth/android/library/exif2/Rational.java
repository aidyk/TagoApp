package it.sephiroth.android.library.exif2;

public class Rational {
    private final long mDenominator;
    private final long mNumerator;

    public Rational(long j, long j2) {
        this.mNumerator = j;
        this.mDenominator = j2;
    }

    public Rational(Rational rational) {
        this.mNumerator = rational.mNumerator;
        this.mDenominator = rational.mDenominator;
    }

    public long getNumerator() {
        return this.mNumerator;
    }

    public long getDenominator() {
        return this.mDenominator;
    }

    public double toDouble() {
        double d = (double) this.mNumerator;
        double d2 = (double) this.mDenominator;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rational)) {
            return false;
        }
        Rational rational = (Rational) obj;
        if (this.mNumerator == rational.mNumerator && this.mDenominator == rational.mDenominator) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.mNumerator + "/" + this.mDenominator;
    }
}
