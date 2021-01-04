package org.apache.commons.lang3.mutable;

public class MutableShort extends Number implements Comparable<MutableShort>, Mutable<Number> {
    private static final long serialVersionUID = -2135791679;
    private short value;

    public MutableShort() {
    }

    public MutableShort(short s) {
        this.value = s;
    }

    public MutableShort(Number number) {
        this.value = number.shortValue();
    }

    public MutableShort(String str) throws NumberFormatException {
        this.value = Short.parseShort(str);
    }

    /* Return type fixed from 'java.lang.Short' to match base method */
    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Short.valueOf(this.value);
    }

    public void setValue(short s) {
        this.value = s;
    }

    public void setValue(Number number) {
        this.value = number.shortValue();
    }

    public void increment() {
        this.value = (short) (this.value + 1);
    }

    public void decrement() {
        this.value = (short) (this.value - 1);
    }

    public void add(short s) {
        this.value = (short) (this.value + s);
    }

    public void add(Number number) {
        this.value = (short) (this.value + number.shortValue());
    }

    public void subtract(short s) {
        this.value = (short) (this.value - s);
    }

    public void subtract(Number number) {
        this.value = (short) (this.value - number.shortValue());
    }

    public short shortValue() {
        return this.value;
    }

    public int intValue() {
        return this.value;
    }

    public long longValue() {
        return (long) this.value;
    }

    public float floatValue() {
        return (float) this.value;
    }

    public double doubleValue() {
        return (double) this.value;
    }

    public Short toShort() {
        return Short.valueOf(shortValue());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MutableShort) || this.value != ((MutableShort) obj).shortValue()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.value;
    }

    public int compareTo(MutableShort mutableShort) {
        short s = mutableShort.value;
        if (this.value < s) {
            return -1;
        }
        return this.value == s ? 0 : 1;
    }

    public String toString() {
        return String.valueOf((int) this.value);
    }
}
