package org.apache.commons.lang3.mutable;

public class MutableLong extends Number implements Comparable<MutableLong>, Mutable<Number> {
    private static final long serialVersionUID = 62986528375L;
    private long value;

    public MutableLong() {
    }

    public MutableLong(long j) {
        this.value = j;
    }

    public MutableLong(Number number) {
        this.value = number.longValue();
    }

    public MutableLong(String str) throws NumberFormatException {
        this.value = Long.parseLong(str);
    }

    /* Return type fixed from 'java.lang.Long' to match base method */
    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Long.valueOf(this.value);
    }

    public void setValue(long j) {
        this.value = j;
    }

    public void setValue(Number number) {
        this.value = number.longValue();
    }

    public void increment() {
        this.value++;
    }

    public void decrement() {
        this.value--;
    }

    public void add(long j) {
        this.value += j;
    }

    public void add(Number number) {
        this.value += number.longValue();
    }

    public void subtract(long j) {
        this.value -= j;
    }

    public void subtract(Number number) {
        this.value -= number.longValue();
    }

    public int intValue() {
        return (int) this.value;
    }

    public long longValue() {
        return this.value;
    }

    public float floatValue() {
        return (float) this.value;
    }

    public double doubleValue() {
        return (double) this.value;
    }

    public Long toLong() {
        return Long.valueOf(longValue());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MutableLong) || this.value != ((MutableLong) obj).longValue()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (int) (this.value ^ (this.value >>> 32));
    }

    public int compareTo(MutableLong mutableLong) {
        long j = mutableLong.value;
        if (this.value < j) {
            return -1;
        }
        return this.value == j ? 0 : 1;
    }

    public String toString() {
        return String.valueOf(this.value);
    }
}
