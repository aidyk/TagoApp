package com.google.android.exoplayer2.source.dash.manifest;

import java.util.Locale;

public final class UrlTemplate {
    private static final String BANDWIDTH = "Bandwidth";
    private static final int BANDWIDTH_ID = 3;
    private static final String DEFAULT_FORMAT_TAG = "%01d";
    private static final String ESCAPED_DOLLAR = "$$";
    private static final String NUMBER = "Number";
    private static final int NUMBER_ID = 2;
    private static final String REPRESENTATION = "RepresentationID";
    private static final int REPRESENTATION_ID = 1;
    private static final String TIME = "Time";
    private static final int TIME_ID = 4;
    private final int identifierCount;
    private final String[] identifierFormatTags;
    private final int[] identifiers;
    private final String[] urlPieces;

    public static UrlTemplate compile(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new UrlTemplate(strArr, iArr, strArr2, parseTemplate(str, strArr, iArr, strArr2));
    }

    private UrlTemplate(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.urlPieces = strArr;
        this.identifiers = iArr;
        this.identifierFormatTags = strArr2;
        this.identifierCount = i;
    }

    public String buildUri(String str, int i, int i2, long j) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < this.identifierCount; i3++) {
            sb.append(this.urlPieces[i3]);
            if (this.identifiers[i3] == 1) {
                sb.append(str);
            } else if (this.identifiers[i3] == 2) {
                sb.append(String.format(Locale.US, this.identifierFormatTags[i3], Integer.valueOf(i)));
            } else if (this.identifiers[i3] == 3) {
                sb.append(String.format(Locale.US, this.identifierFormatTags[i3], Integer.valueOf(i2)));
            } else if (this.identifiers[i3] == 4) {
                sb.append(String.format(Locale.US, this.identifierFormatTags[i3], Long.valueOf(j)));
            }
        }
        sb.append(this.urlPieces[this.identifierCount]);
        return sb.toString();
    }

    private static int parseTemplate(String str, String[] strArr, int[] iArr, String[] strArr2) {
        strArr[0] = "";
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int indexOf = str.indexOf("$", i);
            char c = 65535;
            if (indexOf == -1) {
                strArr[i2] = strArr[i2] + str.substring(i);
                i = str.length();
            } else {
                if (indexOf != i) {
                    strArr[i2] = strArr[i2] + str.substring(i, indexOf);
                } else if (str.startsWith(ESCAPED_DOLLAR, i)) {
                    strArr[i2] = strArr[i2] + "$";
                    i += 2;
                } else {
                    int i3 = i + 1;
                    int indexOf2 = str.indexOf("$", i3);
                    String substring = str.substring(i3, indexOf2);
                    if (substring.equals(REPRESENTATION)) {
                        iArr[i2] = 1;
                    } else {
                        int indexOf3 = substring.indexOf("%0");
                        String str2 = DEFAULT_FORMAT_TAG;
                        if (indexOf3 != -1) {
                            str2 = substring.substring(indexOf3);
                            if (!str2.endsWith("d")) {
                                str2 = str2 + "d";
                            }
                            substring = substring.substring(0, indexOf3);
                        }
                        int hashCode = substring.hashCode();
                        if (hashCode != -1950496919) {
                            if (hashCode != 2606829) {
                                if (hashCode == 38199441 && substring.equals(BANDWIDTH)) {
                                    c = 1;
                                }
                            } else if (substring.equals(TIME)) {
                                c = 2;
                            }
                        } else if (substring.equals(NUMBER)) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                iArr[i2] = 2;
                                break;
                            case 1:
                                iArr[i2] = 3;
                                break;
                            case 2:
                                iArr[i2] = 4;
                                break;
                            default:
                                throw new IllegalArgumentException("Invalid template: " + str);
                        }
                        strArr2[i2] = str2;
                    }
                    i2++;
                    strArr[i2] = "";
                    indexOf = indexOf2 + 1;
                }
                i = indexOf;
            }
        }
        return i2;
    }
}
