package okio;

public final class Utf8 {
    private Utf8() {
    }

    public static long size(String str) {
        return size(str, 0, str.length());
    }

    public static long size(String str, int i, int i2) {
        char c;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 <= str.length()) {
            long j = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt < 128) {
                    j++;
                    i++;
                } else if (charAt < 2048) {
                    j += 2;
                    i++;
                } else if (charAt < 55296 || charAt > 57343) {
                    j += 3;
                    i++;
                } else {
                    int i3 = i + 1;
                    if (i3 < i2) {
                        c = str.charAt(i3);
                    } else {
                        c = 0;
                    }
                    if (charAt > 56319 || c < 56320 || c > 57343) {
                        j++;
                        i = i3;
                    } else {
                        j += 4;
                        i += 2;
                    }
                }
            }
            return j;
        } else {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
    }
}
