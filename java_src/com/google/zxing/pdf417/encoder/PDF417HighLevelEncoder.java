package com.google.zxing.pdf417.encoder;

import com.facebook.appevents.AppEventsConstants;
import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import kotlin.UByte;
import org.apache.commons.lang3.CharEncoding;

/* access modifiers changed from: package-private */
public final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final Charset DEFAULT_ENCODING = Charset.forName(CharEncoding.ISO_8859_1);
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED = new byte[128];
    private static final int NUMERIC_COMPACTION = 2;
    private static final byte[] PUNCTUATION = new byte[128];
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    private static boolean isAlphaLower(char c) {
        if (c != ' ') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    private static boolean isAlphaUpper(char c) {
        if (c != ' ') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isText(char c) {
        if (c == '\t' || c == '\n' || c == '\r') {
            return true;
        }
        return c >= ' ' && c <= '~';
    }

    static {
        Arrays.fill(MIXED, (byte) -1);
        for (int i = 0; i < TEXT_MIXED_RAW.length; i++) {
            byte b = TEXT_MIXED_RAW[i];
            if (b > 0) {
                MIXED[b] = (byte) i;
            }
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        for (int i2 = 0; i2 < TEXT_PUNCTUATION_RAW.length; i2++) {
            byte b2 = TEXT_PUNCTUATION_RAW[i2];
            if (b2 > 0) {
                PUNCTUATION[b2] = (byte) i2;
            }
        }
    }

    private PDF417HighLevelEncoder() {
    }

    static String encodeHighLevel(String str, Compaction compaction, Charset charset) throws WriterException {
        CharacterSetECI characterSetECIByName;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = DEFAULT_ENCODING;
        } else if (!DEFAULT_ENCODING.equals(charset) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(charset.name())) != null) {
            encodingECI(characterSetECIByName.getValue(), sb);
        }
        int length = str.length();
        if (compaction != Compaction.TEXT) {
            if (compaction != Compaction.BYTE) {
                if (compaction != Compaction.NUMERIC) {
                    int i = 0;
                    int i2 = 0;
                    loop0:
                    while (true) {
                        int i3 = 0;
                        while (i < length) {
                            int determineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i);
                            if (determineConsecutiveDigitCount >= 13) {
                                sb.append((char) 902);
                                i2 = 2;
                                encodeNumeric(str, i, determineConsecutiveDigitCount, sb);
                                i += determineConsecutiveDigitCount;
                            } else {
                                int determineConsecutiveTextCount = determineConsecutiveTextCount(str, i);
                                if (determineConsecutiveTextCount >= 5 || determineConsecutiveDigitCount == length) {
                                    if (i2 != 0) {
                                        sb.append((char) 900);
                                        i2 = 0;
                                        i3 = 0;
                                    }
                                    i3 = encodeText(str, i, determineConsecutiveTextCount, sb, i3);
                                    i += determineConsecutiveTextCount;
                                } else {
                                    int determineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, i, charset);
                                    if (determineConsecutiveBinaryCount == 0) {
                                        determineConsecutiveBinaryCount = 1;
                                    }
                                    int i4 = determineConsecutiveBinaryCount + i;
                                    byte[] bytes = str.substring(i, i4).getBytes(charset);
                                    if (bytes.length == 1 && i2 == 0) {
                                        encodeBinary(bytes, 0, 1, 0, sb);
                                    } else {
                                        encodeBinary(bytes, 0, bytes.length, i2, sb);
                                        i2 = 1;
                                        i3 = 0;
                                    }
                                    i = i4;
                                }
                            }
                        }
                        break loop0;
                    }
                } else {
                    sb.append((char) 902);
                    encodeNumeric(str, 0, length, sb);
                }
            } else {
                byte[] bytes2 = str.getBytes(charset);
                encodeBinary(bytes2, 0, bytes2.length, 1, sb);
            }
        } else {
            encodeText(str, 0, length, sb, 0);
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:66:0x00ee A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0010 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int encodeText(java.lang.CharSequence r16, int r17, int r18, java.lang.StringBuilder r19, int r20) {
        /*
        // Method dump skipped, instructions count: 302
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.encodeText(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static void encodeBinary(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        if (i2 == 1 && i3 == 0) {
            sb.append((char) 913);
        } else if (i2 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i2 >= 6) {
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + ((long) (bArr[i4 + i5] & UByte.MAX_VALUE));
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) ((int) (j % 900));
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & UByte.MAX_VALUE));
            i4++;
        }
    }

    private static void encodeNumeric(String str, int i, int i2, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900);
        BigInteger valueOf2 = BigInteger.valueOf(0);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int min = Math.min(44, i2 - i3);
            StringBuilder sb3 = new StringBuilder(AppEventsConstants.EVENT_PARAM_VALUE_YES);
            int i4 = i + i3;
            sb3.append(str.substring(i4, i4 + min));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(valueOf).intValue());
                bigInteger = bigInteger.divide(valueOf);
            } while (!bigInteger.equals(valueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += min;
        }
    }

    private static boolean isMixed(char c) {
        return MIXED[c] != -1;
    }

    private static boolean isPunctuation(char c) {
        return PUNCTUATION[c] != -1;
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            char charAt = charSequence.charAt(i);
            while (isDigit(charAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    charAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    private static int determineConsecutiveTextCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && isDigit(charAt) && i2 < length) {
                i3++;
                i2++;
                if (i2 < length) {
                    charAt = charSequence.charAt(i2);
                }
            }
            if (i3 < 13) {
                if (i3 <= 0) {
                    if (!isText(charSequence.charAt(i2))) {
                        break;
                    }
                    i2++;
                }
            } else {
                return (i2 - i) - i3;
            }
        }
        return i2 - i;
    }

    private static int determineConsecutiveBinaryCount(String str, int i, Charset charset) throws WriterException {
        int i2;
        CharsetEncoder newEncoder = charset.newEncoder();
        int length = str.length();
        int i3 = i;
        while (i3 < length) {
            char charAt = str.charAt(i3);
            int i4 = 0;
            while (i4 < 13 && isDigit(charAt) && (i2 = i3 + (i4 = i4 + 1)) < length) {
                charAt = str.charAt(i2);
            }
            if (i4 >= 13) {
                return i3 - i;
            }
            char charAt2 = str.charAt(i3);
            if (newEncoder.canEncode(charAt2)) {
                i3++;
            } else {
                throw new WriterException("Non-encodable character detected: " + charAt2 + " (Unicode: " + ((int) charAt2) + ')');
            }
        }
        return i3 - i;
    }

    private static void encodingECI(int i, StringBuilder sb) throws WriterException {
        if (i >= 0 && i < LATCH_TO_TEXT) {
            sb.append((char) 927);
            sb.append((char) i);
        } else if (i < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i / LATCH_TO_TEXT) - 1));
            sb.append((char) (i % LATCH_TO_TEXT));
        } else if (i < 811800) {
            sb.append((char) 925);
            sb.append((char) (810900 - i));
        } else {
            throw new WriterException("ECI number not in valid range from 0..811799, but was " + i);
        }
    }
}
