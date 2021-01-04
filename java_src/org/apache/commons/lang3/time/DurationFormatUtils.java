package org.apache.commons.lang3.time;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import net.glxn.qrgen.core.scheme.Wifi;
import org.apache.commons.lang3.StringUtils;

public class DurationFormatUtils {
    static final Object H = Wifi.HIDDEN;
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";
    static final Object M = "M";
    static final Object S = "S";
    static final Object d = "d";
    static final Object m = "m";
    static final Object s = "s";
    static final Object y = "y";

    public static String formatDurationHMS(long j) {
        return formatDuration(j, "H:mm:ss.SSS");
    }

    public static String formatDurationISO(long j) {
        return formatDuration(j, ISO_EXTENDED_FORMAT_PATTERN, false);
    }

    public static String formatDuration(long j, String str) {
        return formatDuration(j, str, true);
    }

    public static String formatDuration(long j, String str, boolean z) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        Token[] lexx = lexx(str);
        if (Token.containsTokenWithValue(lexx, d)) {
            j2 = j / DateUtils.MILLIS_PER_DAY;
            j3 = j - (DateUtils.MILLIS_PER_DAY * j2);
        } else {
            j3 = j;
            j2 = 0;
        }
        if (Token.containsTokenWithValue(lexx, H)) {
            j4 = j3 / DateUtils.MILLIS_PER_HOUR;
            j3 -= DateUtils.MILLIS_PER_HOUR * j4;
        } else {
            j4 = 0;
        }
        if (Token.containsTokenWithValue(lexx, m)) {
            j5 = j3 / 60000;
            j3 -= 60000 * j5;
        } else {
            j5 = 0;
        }
        if (Token.containsTokenWithValue(lexx, s)) {
            long j8 = j3 / 1000;
            j6 = j3 - (1000 * j8);
            j7 = j8;
        } else {
            j6 = j3;
            j7 = 0;
        }
        return format(lexx, 0, 0, j2, j4, j5, j7, j6, z);
    }

    public static String formatDurationWords(long j, boolean z, boolean z2) {
        String formatDuration = formatDuration(j, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z) {
            formatDuration = StringUtils.SPACE + formatDuration;
            String replaceOnce = StringUtils.replaceOnce(formatDuration, " 0 days", "");
            if (replaceOnce.length() != formatDuration.length()) {
                String replaceOnce2 = StringUtils.replaceOnce(replaceOnce, " 0 hours", "");
                if (replaceOnce2.length() != replaceOnce.length()) {
                    formatDuration = StringUtils.replaceOnce(replaceOnce2, " 0 minutes", "");
                    if (formatDuration.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
                    }
                } else {
                    formatDuration = replaceOnce;
                }
            }
            if (formatDuration.length() != 0) {
                formatDuration = formatDuration.substring(1);
            }
        }
        if (z2) {
            String replaceOnce3 = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
            if (replaceOnce3.length() != formatDuration.length()) {
                formatDuration = StringUtils.replaceOnce(replaceOnce3, " 0 minutes", "");
                if (formatDuration.length() != replaceOnce3.length()) {
                    String replaceOnce4 = StringUtils.replaceOnce(formatDuration, " 0 hours", "");
                    if (replaceOnce4.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(replaceOnce4, " 0 days", "");
                    }
                } else {
                    formatDuration = replaceOnce3;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.SPACE + formatDuration, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriodISO(long j, long j2) {
        return formatPeriod(j, j2, ISO_EXTENDED_FORMAT_PATTERN, false, TimeZone.getDefault());
    }

    public static String formatPeriod(long j, long j2, String str) {
        return formatPeriod(j, j2, str, true, TimeZone.getDefault());
    }

    public static String formatPeriod(long j, long j2, String str, boolean z, TimeZone timeZone) {
        Token[] lexx = lexx(str);
        Calendar instance = Calendar.getInstance(timeZone);
        instance.setTime(new Date(j));
        Calendar instance2 = Calendar.getInstance(timeZone);
        instance2.setTime(new Date(j2));
        int i = instance2.get(14) - instance.get(14);
        int i2 = instance2.get(13) - instance.get(13);
        int i3 = instance2.get(12) - instance.get(12);
        int i4 = instance2.get(11) - instance.get(11);
        int i5 = instance2.get(5) - instance.get(5);
        int i6 = instance2.get(2) - instance.get(2);
        int i7 = instance2.get(1) - instance.get(1);
        while (i < 0) {
            i += 1000;
            i2--;
        }
        while (i2 < 0) {
            i2 += 60;
            i3--;
        }
        while (i3 < 0) {
            i3 += 60;
            i4--;
        }
        while (i4 < 0) {
            i4 += 24;
            i5--;
        }
        int i8 = 0;
        if (Token.containsTokenWithValue(lexx, M)) {
            while (i5 < 0) {
                i5 += instance.getActualMaximum(5);
                i6--;
                instance.add(2, 1);
            }
            while (i6 < 0) {
                i6 += 12;
                i7--;
            }
            if (!Token.containsTokenWithValue(lexx, y) && i7 != 0) {
                while (i7 != 0) {
                    i6 += i7 * 12;
                    i7 = 0;
                }
            }
        } else {
            if (!Token.containsTokenWithValue(lexx, y)) {
                int i9 = instance2.get(1);
                if (i6 < 0) {
                    i9--;
                }
                while (instance.get(1) != i9) {
                    int actualMaximum = i5 + (instance.getActualMaximum(6) - instance.get(6));
                    if ((instance instanceof GregorianCalendar) && instance.get(2) == 1 && instance.get(5) == 29) {
                        actualMaximum++;
                    }
                    instance.add(1, 1);
                    i5 = actualMaximum + instance.get(6);
                }
                i7 = 0;
            }
            while (instance.get(2) != instance2.get(2)) {
                i5 += instance.getActualMaximum(5);
                instance.add(2, 1);
            }
            i6 = 0;
            while (i5 < 0) {
                i5 += instance.getActualMaximum(5);
                i6--;
                instance.add(2, 1);
            }
        }
        if (!Token.containsTokenWithValue(lexx, d)) {
            i4 += i5 * 24;
            i5 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, H)) {
            i3 += i4 * 60;
            i4 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, m)) {
            i2 += i3 * 60;
            i3 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, s)) {
            i += i2 * 1000;
        } else {
            i8 = i2;
        }
        return format(lexx, (long) i7, (long) i6, (long) i5, (long) i4, (long) i3, (long) i8, (long) i, z);
    }

    static String format(Token[] tokenArr, long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z) {
        int i;
        int i2;
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        boolean z2 = false;
        for (int length = tokenArr.length; i3 < length; length = i) {
            Token token = tokenArr[i3];
            Object value = token.getValue();
            int count = token.getCount();
            if (value instanceof StringBuilder) {
                sb.append(value.toString());
                i = length;
                i2 = i3;
            } else {
                if (value == y) {
                    sb.append(paddedValue(j, z, count));
                    i = length;
                    i2 = i3;
                } else {
                    if (value == M) {
                        i2 = i3;
                        sb.append(paddedValue(j2, z, count));
                    } else {
                        i2 = i3;
                        if (value == d) {
                            sb.append(paddedValue(j3, z, count));
                        } else {
                            if (value == H) {
                                i = length;
                                sb.append(paddedValue(j4, z, count));
                            } else {
                                i = length;
                                if (value == m) {
                                    sb.append(paddedValue(j5, z, count));
                                } else {
                                    if (value == s) {
                                        sb.append(paddedValue(j6, z, count));
                                        z2 = true;
                                    } else if (value == S) {
                                        if (z2) {
                                            int i4 = 3;
                                            if (z) {
                                                i4 = Math.max(3, count);
                                            }
                                            sb.append(paddedValue(j7, true, i4));
                                        } else {
                                            sb.append(paddedValue(j7, z, count));
                                        }
                                        z2 = false;
                                    }
                                    i3 = i2 + 1;
                                }
                            }
                            z2 = false;
                            i3 = i2 + 1;
                        }
                    }
                    i = length;
                }
                z2 = false;
            }
            i3 = i2 + 1;
        }
        return sb.toString();
    }

    private static String paddedValue(long j, boolean z, int i) {
        String l = Long.toString(j);
        return z ? StringUtils.leftPad(l, i, '0') : l;
    }

    static Token[] lexx(String str) {
        Object obj;
        ArrayList arrayList = new ArrayList(str.length());
        StringBuilder sb = null;
        Token token = null;
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!z || charAt == '\'') {
                if (charAt != '\'') {
                    if (charAt == 'H') {
                        obj = H;
                    } else if (charAt == 'M') {
                        obj = M;
                    } else if (charAt == 'S') {
                        obj = S;
                    } else if (charAt == 'd') {
                        obj = d;
                    } else if (charAt == 'm') {
                        obj = m;
                    } else if (charAt == 's') {
                        obj = s;
                    } else if (charAt != 'y') {
                        if (sb == null) {
                            sb = new StringBuilder();
                            arrayList.add(new Token(sb));
                        }
                        sb.append(charAt);
                        obj = null;
                    } else {
                        obj = y;
                    }
                } else if (z) {
                    sb = null;
                    obj = null;
                    z = false;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    arrayList.add(new Token(sb2));
                    obj = null;
                    sb = sb2;
                    z = true;
                }
                if (obj != null) {
                    if (token == null || token.getValue() != obj) {
                        token = new Token(obj);
                        arrayList.add(token);
                    } else {
                        token.increment();
                    }
                    sb = null;
                }
            } else {
                sb.append(charAt);
            }
        }
        if (!z) {
            return (Token[]) arrayList.toArray(new Token[arrayList.size()]);
        }
        throw new IllegalArgumentException("Unmatched quote in format: " + str);
    }

    /* access modifiers changed from: package-private */
    public static class Token {
        private int count;
        private final Object value;

        static boolean containsTokenWithValue(Token[] tokenArr, Object obj) {
            for (Token token : tokenArr) {
                if (token.getValue() == obj) {
                    return true;
                }
            }
            return false;
        }

        Token(Object obj) {
            this.value = obj;
            this.count = 1;
        }

        Token(Object obj, int i) {
            this.value = obj;
            this.count = i;
        }

        /* access modifiers changed from: package-private */
        public void increment() {
            this.count++;
        }

        /* access modifiers changed from: package-private */
        public int getCount() {
            return this.count;
        }

        /* access modifiers changed from: package-private */
        public Object getValue() {
            return this.value;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            if (this.value.getClass() != token.value.getClass() || this.count != token.count) {
                return false;
            }
            if (this.value instanceof StringBuilder) {
                return this.value.toString().equals(token.value.toString());
            }
            if (this.value instanceof Number) {
                return this.value.equals(token.value);
            }
            if (this.value == token.value) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return StringUtils.repeat(this.value.toString(), this.count);
        }
    }
}
