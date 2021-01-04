package com.google.android.gms.tagmanager;

/* access modifiers changed from: package-private */
public final class zzgi extends Number implements Comparable<zzgi> {
    private double zzbhg;
    private long zzbhh;
    private boolean zzbhi = false;

    private zzgi(double d) {
        this.zzbhg = d;
    }

    private zzgi(long j) {
        this.zzbhh = j;
    }

    public static zzgi zza(Double d) {
        return new zzgi(d.doubleValue());
    }

    public static zzgi zzau(long j) {
        return new zzgi(j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0013, code lost:
        return new com.google.android.gms.tagmanager.zzgi(java.lang.Double.parseDouble(r3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0023, code lost:
        throw new java.lang.NumberFormatException(java.lang.String.valueOf(r3).concat(" is not a valid TypedNumber"));
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.tagmanager.zzgi zzeg(java.lang.String r3) throws java.lang.NumberFormatException {
        /*
            com.google.android.gms.tagmanager.zzgi r0 = new com.google.android.gms.tagmanager.zzgi     // Catch:{ NumberFormatException -> 0x000a }
            long r1 = java.lang.Long.parseLong(r3)     // Catch:{ NumberFormatException -> 0x000a }
            r0.<init>(r1)     // Catch:{ NumberFormatException -> 0x000a }
            return r0
        L_0x000a:
            com.google.android.gms.tagmanager.zzgi r0 = new com.google.android.gms.tagmanager.zzgi     // Catch:{ NumberFormatException -> 0x0014 }
            double r1 = java.lang.Double.parseDouble(r3)     // Catch:{ NumberFormatException -> 0x0014 }
            r0.<init>(r1)     // Catch:{ NumberFormatException -> 0x0014 }
            return r0
        L_0x0014:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r1 = " is not a valid TypedNumber"
            java.lang.String r3 = r3.concat(r1)
            r0.<init>(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzgi.zzeg(java.lang.String):com.google.android.gms.tagmanager.zzgi");
    }

    public final String toString() {
        return this.zzbhi ? Long.toString(this.zzbhh) : Double.toString(this.zzbhg);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgi) && compareTo((zzgi) obj) == 0;
    }

    public final int hashCode() {
        return new Long(longValue()).hashCode();
    }

    /* renamed from: zza */
    public final int compareTo(zzgi zzgi) {
        if (!this.zzbhi || !zzgi.zzbhi) {
            return Double.compare(doubleValue(), zzgi.doubleValue());
        }
        return new Long(this.zzbhh).compareTo(Long.valueOf(zzgi.zzbhh));
    }

    public final boolean zzqi() {
        return !this.zzbhi;
    }

    public final boolean zzqj() {
        return this.zzbhi;
    }

    public final double doubleValue() {
        return this.zzbhi ? (double) this.zzbhh : this.zzbhg;
    }

    public final float floatValue() {
        return (float) doubleValue();
    }

    public final long longValue() {
        return this.zzbhi ? this.zzbhh : (long) this.zzbhg;
    }

    public final int intValue() {
        return (int) longValue();
    }

    public final short shortValue() {
        return (short) ((int) longValue());
    }

    public final byte byteValue() {
        return (byte) ((int) longValue());
    }
}
