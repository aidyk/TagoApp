package org.apache.commons.lang3.math;

import java.lang.reflect.Array;
import java.math.BigDecimal;
import org.apache.commons.lang3.StringUtils;

public class NumberUtils {
    public static final Byte BYTE_MINUS_ONE = (byte) -1;
    public static final Byte BYTE_ONE = (byte) 1;
    public static final Byte BYTE_ZERO = (byte) 0;
    public static final Double DOUBLE_MINUS_ONE = Double.valueOf(-1.0d);
    public static final Double DOUBLE_ONE = Double.valueOf(1.0d);
    public static final Double DOUBLE_ZERO = Double.valueOf(0.0d);
    public static final Float FLOAT_MINUS_ONE = Float.valueOf(-1.0f);
    public static final Float FLOAT_ONE = Float.valueOf(1.0f);
    public static final Float FLOAT_ZERO = Float.valueOf(0.0f);
    public static final Integer INTEGER_MINUS_ONE = -1;
    public static final Integer INTEGER_ONE = 1;
    public static final Integer INTEGER_ZERO = 0;
    public static final Long LONG_MINUS_ONE = -1L;
    public static final Long LONG_ONE = 1L;
    public static final Long LONG_ZERO = 0L;
    public static final Short SHORT_MINUS_ONE = -1;
    public static final Short SHORT_ONE = 1;
    public static final Short SHORT_ZERO = 0;

    public static byte max(byte b, byte b2, byte b3) {
        if (b2 > b) {
            b = b2;
        }
        return b3 > b ? b3 : b;
    }

    public static int max(int i, int i2, int i3) {
        if (i2 > i) {
            i = i2;
        }
        return i3 > i ? i3 : i;
    }

    public static long max(long j, long j2, long j3) {
        if (j2 > j) {
            j = j2;
        }
        return j3 > j ? j3 : j;
    }

    public static short max(short s, short s2, short s3) {
        if (s2 > s) {
            s = s2;
        }
        return s3 > s ? s3 : s;
    }

    public static byte min(byte b, byte b2, byte b3) {
        if (b2 < b) {
            b = b2;
        }
        return b3 < b ? b3 : b;
    }

    public static int min(int i, int i2, int i3) {
        if (i2 < i) {
            i = i2;
        }
        return i3 < i ? i3 : i;
    }

    public static long min(long j, long j2, long j3) {
        if (j2 < j) {
            j = j2;
        }
        return j3 < j ? j3 : j;
    }

    public static short min(short s, short s2, short s3) {
        if (s2 < s) {
            s = s2;
        }
        return s3 < s ? s3 : s;
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public static int toInt(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static long toLong(String str) {
        return toLong(str, 0);
    }

    public static long toLong(String str, long j) {
        if (str == null) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static float toFloat(String str) {
        return toFloat(str, 0.0f);
    }

    public static float toFloat(String str, float f) {
        if (str == null) {
            return f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    public static double toDouble(String str) {
        return toDouble(str, 0.0d);
    }

    public static double toDouble(String str, double d) {
        if (str == null) {
            return d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    public static byte toByte(String str) {
        return toByte(str, (byte) 0);
    }

    public static byte toByte(String str, byte b) {
        if (str == null) {
            return b;
        }
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b;
        }
    }

    public static short toShort(String str) {
        return toShort(str, 0);
    }

    public static short toShort(String str, short s) {
        if (str == null) {
            return s;
        }
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s;
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(11:(1:60)|61|(1:66)(1:65)|67|(5:69|(3:71|(2:73|(2:75|(1:77)))|(2:93|94)(3:87|88|89))|95|96|(1:102))|103|104|(1:110)|111|112|113) */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x01ce, code lost:
        throw new java.lang.NumberFormatException(r15 + " is not a valid number.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x01ee, code lost:
        return createLong(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x01f3, code lost:
        return createBigInteger(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x0149, code lost:
        if (r1 == 'l') goto L_0x014b;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:103:0x019d */
    /* JADX WARNING: Missing exception handler attribute for start block: B:111:0x01b3 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:126:0x01ea */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Number createNumber(java.lang.String r15) throws java.lang.NumberFormatException {
        /*
        // Method dump skipped, instructions count: 573
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.createNumber(java.lang.String):java.lang.Number");
    }

    private static boolean isAllZeros(String str) {
        if (str == null) {
            return true;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != '0') {
                return false;
            }
        }
        if (str.length() > 0) {
            return true;
        }
        return false;
    }

    public static Float createFloat(String str) {
        if (str == null) {
            return null;
        }
        return Float.valueOf(str);
    }

    public static Double createDouble(String str) {
        if (str == null) {
            return null;
        }
        return Double.valueOf(str);
    }

    public static Integer createInteger(String str) {
        if (str == null) {
            return null;
        }
        return Integer.decode(str);
    }

    public static Long createLong(String str) {
        if (str == null) {
            return null;
        }
        return Long.decode(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.math.BigInteger createBigInteger(java.lang.String r5) {
        /*
            if (r5 != 0) goto L_0x0004
            r5 = 0
            return r5
        L_0x0004:
            r0 = 10
            java.lang.String r1 = "-"
            boolean r1 = r5.startsWith(r1)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L_0x0012
            r2 = 1
            goto L_0x0013
        L_0x0012:
            r3 = 0
        L_0x0013:
            java.lang.String r1 = "0x"
            boolean r1 = r5.startsWith(r1, r2)
            r4 = 16
            if (r1 != 0) goto L_0x0045
            java.lang.String r1 = "0x"
            boolean r1 = r5.startsWith(r1, r2)
            if (r1 == 0) goto L_0x0026
            goto L_0x0045
        L_0x0026:
            java.lang.String r1 = "#"
            boolean r1 = r5.startsWith(r1, r2)
            if (r1 == 0) goto L_0x0031
            int r2 = r2 + 1
            goto L_0x0047
        L_0x0031:
            java.lang.String r1 = "0"
            boolean r1 = r5.startsWith(r1, r2)
            if (r1 == 0) goto L_0x0049
            int r1 = r5.length()
            int r4 = r2 + 1
            if (r1 <= r4) goto L_0x0049
            r0 = 8
            r2 = r4
            goto L_0x0049
        L_0x0045:
            int r2 = r2 + 2
        L_0x0047:
            r0 = 16
        L_0x0049:
            java.math.BigInteger r1 = new java.math.BigInteger
            java.lang.String r5 = r5.substring(r2)
            r1.<init>(r5, r0)
            if (r3 == 0) goto L_0x0058
            java.math.BigInteger r1 = r1.negate()
        L_0x0058:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.createBigInteger(java.lang.String):java.math.BigInteger");
    }

    public static BigDecimal createBigDecimal(String str) {
        if (str == null) {
            return null;
        }
        if (StringUtils.isBlank(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        } else if (!str.trim().startsWith("--")) {
            return new BigDecimal(str);
        } else {
            throw new NumberFormatException(str + " is not a valid number.");
        }
    }

    public static long min(long[] jArr) {
        validateArray(jArr);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] < j) {
                j = jArr[i];
            }
        }
        return j;
    }

    public static int min(int[] iArr) {
        validateArray(iArr);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] < i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    public static short min(short[] sArr) {
        validateArray(sArr);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] < s) {
                s = sArr[i];
            }
        }
        return s;
    }

    public static byte min(byte[] bArr) {
        validateArray(bArr);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] < b) {
                b = bArr[i];
            }
        }
        return b;
    }

    public static double min(double[] dArr) {
        validateArray(dArr);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (Double.isNaN(dArr[i])) {
                return Double.NaN;
            }
            if (dArr[i] < d) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static float min(float[] fArr) {
        validateArray(fArr);
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (Float.isNaN(fArr[i])) {
                return Float.NaN;
            }
            if (fArr[i] < f) {
                f = fArr[i];
            }
        }
        return f;
    }

    public static long max(long[] jArr) {
        validateArray(jArr);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] > j) {
                j = jArr[i];
            }
        }
        return j;
    }

    public static int max(int[] iArr) {
        validateArray(iArr);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    public static short max(short[] sArr) {
        validateArray(sArr);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] > s) {
                s = sArr[i];
            }
        }
        return s;
    }

    public static byte max(byte[] bArr) {
        validateArray(bArr);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] > b) {
                b = bArr[i];
            }
        }
        return b;
    }

    public static double max(double[] dArr) {
        validateArray(dArr);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (Double.isNaN(dArr[i])) {
                return Double.NaN;
            }
            if (dArr[i] > d) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static float max(float[] fArr) {
        validateArray(fArr);
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (Float.isNaN(fArr[i])) {
                return Float.NaN;
            }
            if (fArr[i] > f) {
                f = fArr[i];
            }
        }
        return f;
    }

    private static void validateArray(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("The Array must not be null");
        } else if (Array.getLength(obj) == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
    }

    public static double min(double d, double d2, double d3) {
        return Math.min(Math.min(d, d2), d3);
    }

    public static float min(float f, float f2, float f3) {
        return Math.min(Math.min(f, f2), f3);
    }

    public static double max(double d, double d2, double d3) {
        return Math.max(Math.max(d, d2), d3);
    }

    public static float max(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    public static boolean isDigits(String str) {
        if (StringUtils.isEmpty(str)) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:147:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0093, code lost:
        if (r3 >= r0.length) goto L_0x00e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0097, code lost:
        if (r0[r3] < '0') goto L_0x009e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x009b, code lost:
        if (r0[r3] > '9') goto L_0x009e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x009d, code lost:
        return r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00a0, code lost:
        if (r0[r3] == 'e') goto L_0x00e1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00a4, code lost:
        if (r0[r3] != 'E') goto L_0x00a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00a9, code lost:
        if (r0[r3] != '.') goto L_0x00b2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x00ab, code lost:
        if (r12 != false) goto L_0x00b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x00ad, code lost:
        if (r13 == false) goto L_0x00b0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x00b0, code lost:
        return r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x00b1, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x00b2, code lost:
        if (r6 != false) goto L_0x00cb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x00b8, code lost:
        if (r0[r3] == 'd') goto L_0x00ca;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x00be, code lost:
        if (r0[r3] == 'D') goto L_0x00ca;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x00c2, code lost:
        if (r0[r3] == 'f') goto L_0x00ca;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x00c8, code lost:
        if (r0[r3] != 'F') goto L_0x00cb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x00ca, code lost:
        return r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x00cf, code lost:
        if (r0[r3] == 'l') goto L_0x00d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x00d5, code lost:
        if (r0[r3] != 'L') goto L_0x00d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x00d8, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x00d9, code lost:
        if (r11 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x00db, code lost:
        if (r13 != false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x00dd, code lost:
        if (r12 != false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x00df, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x00e1, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x00e2, code lost:
        if (r6 != false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x00e4, code lost:
        if (r11 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x00e6, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isNumber(java.lang.String r16) {
        /*
        // Method dump skipped, instructions count: 307
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.isNumber(java.lang.String):boolean");
    }
}
