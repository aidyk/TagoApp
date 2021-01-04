package org.apache.commons.lang3;

import java.util.UUID;
import kotlin.UByte;

public class Conversion {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static int hexDigitToInt(char c) {
        int digit = Character.digit(c, 16);
        if (digit >= 0) {
            return digit;
        }
        throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
    }

    public static int hexDigitMsb0ToInt(char c) {
        switch (c) {
            case '0':
                return 0;
            case '1':
                return 8;
            case '2':
                return 4;
            case '3':
                return 12;
            case '4':
                return 2;
            case '5':
                return 10;
            case '6':
                return 6;
            case '7':
                return 14;
            case '8':
                return 1;
            case '9':
                return 9;
            default:
                switch (c) {
                    case 'A':
                        return 5;
                    case 'B':
                        return 13;
                    case 'C':
                        return 3;
                    case 'D':
                        return 11;
                    case 'E':
                        return 7;
                    case 'F':
                        return 15;
                    default:
                        switch (c) {
                            case 'a':
                                return 5;
                            case 'b':
                                return 13;
                            case 'c':
                                return 3;
                            case 'd':
                                return 11;
                            case 'e':
                                return 7;
                            case 'f':
                                return 15;
                            default:
                                throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
                        }
                }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x0026  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean[] hexDigitToBinary(char r3) {
        /*
        // Method dump skipped, instructions count: 286
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.Conversion.hexDigitToBinary(char):boolean[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x0026  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean[] hexDigitMsb0ToBinary(char r3) {
        /*
        // Method dump skipped, instructions count: 286
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.Conversion.hexDigitMsb0ToBinary(char):boolean[]");
    }

    public static char binaryToHexDigit(boolean[] zArr) {
        return binaryToHexDigit(zArr, 0);
    }

    public static char binaryToHexDigit(boolean[] zArr, int i) {
        if (zArr.length != 0) {
            int i2 = i + 3;
            if (zArr.length <= i2 || !zArr[i2]) {
                int i3 = i + 2;
                if (zArr.length <= i3 || !zArr[i3]) {
                    int i4 = i + 1;
                    return (zArr.length <= i4 || !zArr[i4]) ? zArr[i] ? '1' : '0' : zArr[i] ? '3' : '2';
                }
                int i5 = i + 1;
                return (zArr.length <= i5 || !zArr[i5]) ? zArr[i] ? '5' : '4' : zArr[i] ? '7' : '6';
            }
            int i6 = i + 2;
            if (zArr.length <= i6 || !zArr[i6]) {
                int i7 = i + 1;
                return (zArr.length <= i7 || !zArr[i7]) ? zArr[i] ? '9' : '8' : zArr[i] ? 'b' : 'a';
            }
            int i8 = i + 1;
            return (zArr.length <= i8 || !zArr[i8]) ? zArr[i] ? 'd' : 'c' : zArr[i] ? 'f' : 'e';
        }
        throw new IllegalArgumentException("Cannot convert an empty array.");
    }

    public static char binaryToHexDigitMsb0_4bits(boolean[] zArr) {
        return binaryToHexDigitMsb0_4bits(zArr, 0);
    }

    public static char binaryToHexDigitMsb0_4bits(boolean[] zArr, int i) {
        if (zArr.length > 8) {
            throw new IllegalArgumentException("src.length>8: src.length=" + zArr.length);
        } else if (zArr.length - i >= 4) {
            return zArr[i + 3] ? zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'f' : '7' : zArr[i] ? 'b' : '3' : zArr[i + 1] ? zArr[i] ? 'd' : '5' : zArr[i] ? '9' : '1' : zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'e' : '6' : zArr[i] ? 'a' : '2' : zArr[i + 1] ? zArr[i] ? 'c' : '4' : zArr[i] ? '8' : '0';
        } else {
            throw new IllegalArgumentException("src.length-srcPos<4: src.length=" + zArr.length + ", srcPos=" + i);
        }
    }

    public static char binaryBeMsb0ToHexDigit(boolean[] zArr) {
        return binaryBeMsb0ToHexDigit(zArr, 0);
    }

    public static char binaryBeMsb0ToHexDigit(boolean[] zArr, int i) {
        if (zArr.length != 0) {
            int length = ((zArr.length - 1) - i) + 1;
            int min = Math.min(4, length);
            boolean[] zArr2 = new boolean[4];
            System.arraycopy(zArr, length - min, zArr2, 4 - min, min);
            return zArr2[0] ? (zArr2.length <= 1 || !zArr2[1]) ? (zArr2.length <= 2 || !zArr2[2]) ? (zArr2.length <= 3 || !zArr2[3]) ? '8' : '9' : (zArr2.length <= 3 || !zArr2[3]) ? 'a' : 'b' : (zArr2.length <= 2 || !zArr2[2]) ? (zArr2.length <= 3 || !zArr2[3]) ? 'c' : 'd' : (zArr2.length <= 3 || !zArr2[3]) ? 'e' : 'f' : (zArr2.length <= 1 || !zArr2[1]) ? (zArr2.length <= 2 || !zArr2[2]) ? (zArr2.length <= 3 || !zArr2[3]) ? '0' : '1' : (zArr2.length <= 3 || !zArr2[3]) ? '2' : '3' : (zArr2.length <= 2 || !zArr2[2]) ? (zArr2.length <= 3 || !zArr2[3]) ? '4' : '5' : (zArr2.length <= 3 || !zArr2[3]) ? '6' : '7';
        }
        throw new IllegalArgumentException("Cannot convert an empty array.");
    }

    public static char intToHexDigit(int i) {
        char forDigit = Character.forDigit(i, 16);
        if (forDigit != 0) {
            return forDigit;
        }
        throw new IllegalArgumentException("nibble value not between 0 and 15: " + i);
    }

    public static char intToHexDigitMsb0(int i) {
        switch (i) {
            case 0:
                return '0';
            case 1:
                return '8';
            case 2:
                return '4';
            case 3:
                return 'c';
            case 4:
                return '2';
            case 5:
                return 'a';
            case 6:
                return '6';
            case 7:
                return 'e';
            case 8:
                return '1';
            case 9:
                return '9';
            case 10:
                return '5';
            case 11:
                return 'd';
            case 12:
                return '3';
            case 13:
                return 'b';
            case 14:
                return '7';
            case 15:
                return 'f';
            default:
                throw new IllegalArgumentException("nibble value not between 0 and 15: " + i);
        }
    }

    public static long intArrayToLong(int[] iArr, int i, long j, int i2, int i3) {
        if ((iArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 32) + i2 < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 32) + i2;
                j = (j & ((4294967295 << i5) ^ -1)) | ((((long) iArr[i4 + i]) & 4294967295L) << i5);
            }
            return j;
        }
        throw new IllegalArgumentException("(nInts-1)*32+dstPos is greather or equal to than 64");
    }

    public static long shortArrayToLong(short[] sArr, int i, long j, int i2, int i3) {
        if ((sArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 16) + i2 < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 16) + i2;
                j = (j & ((65535 << i5) ^ -1)) | ((((long) sArr[i4 + i]) & 65535) << i5);
            }
            return j;
        }
        throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greather or equal to than 64");
    }

    public static int shortArrayToInt(short[] sArr, int i, int i2, int i3, int i4) {
        if ((sArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if (((i4 - 1) * 16) + i3 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = (i5 * 16) + i3;
                i2 = (i2 & ((65535 << i6) ^ -1)) | ((sArr[i5 + i] & 65535) << i6);
            }
            return i2;
        }
        throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greather or equal to than 32");
    }

    public static long byteArrayToLong(byte[] bArr, int i, long j, int i2, int i3) {
        if ((bArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 8) + i2 < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 8) + i2;
                j = (j & ((255 << i5) ^ -1)) | ((((long) bArr[i4 + i]) & 255) << i5);
            }
            return j;
        }
        throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 64");
    }

    public static int byteArrayToInt(byte[] bArr, int i, int i2, int i3, int i4) {
        if ((bArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if (((i4 - 1) * 8) + i3 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = (i5 * 8) + i3;
                i2 = (i2 & ((255 << i6) ^ -1)) | ((bArr[i5 + i] & UByte.MAX_VALUE) << i6);
            }
            return i2;
        }
        throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 32");
    }

    public static short byteArrayToShort(byte[] bArr, int i, short s, int i2, int i3) {
        if ((bArr.length == 0 && i == 0) || i3 == 0) {
            return s;
        }
        if (((i3 - 1) * 8) + i2 < 16) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 8) + i2;
                s = (short) ((s & ((255 << i5) ^ -1)) | ((bArr[i4 + i] & UByte.MAX_VALUE) << i5));
            }
            return s;
        }
        throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 16");
    }

    public static long hexToLong(String str, int i, long j, int i2, int i3) {
        if (i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 4) + i2 < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 4) + i2;
                j = (j & ((15 << i5) ^ -1)) | ((((long) hexDigitToInt(str.charAt(i4 + i))) & 15) << i5);
            }
            return j;
        }
        throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 64");
    }

    public static int hexToInt(String str, int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            return i2;
        }
        if (((i4 - 1) * 4) + i3 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = (i5 * 4) + i3;
                i2 = (i2 & ((15 << i6) ^ -1)) | ((hexDigitToInt(str.charAt(i5 + i)) & 15) << i6);
            }
            return i2;
        }
        throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 32");
    }

    public static short hexToShort(String str, int i, short s, int i2, int i3) {
        if (i3 == 0) {
            return s;
        }
        if (((i3 - 1) * 4) + i2 < 16) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 4) + i2;
                s = (short) ((s & ((15 << i5) ^ -1)) | ((hexDigitToInt(str.charAt(i4 + i)) & 15) << i5));
            }
            return s;
        }
        throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 16");
    }

    public static byte hexToByte(String str, int i, byte b, int i2, int i3) {
        if (i3 == 0) {
            return b;
        }
        if (((i3 - 1) * 4) + i2 < 8) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 4) + i2;
                b = (byte) ((b & ((15 << i5) ^ -1)) | ((hexDigitToInt(str.charAt(i4 + i)) & 15) << i5));
            }
            return b;
        }
        throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 8");
    }

    public static long binaryToLong(boolean[] zArr, int i, long j, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if ((i3 - 1) + i2 < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 1) + i2;
                j = (j & ((1 << i5) ^ -1)) | ((zArr[i4 + i] ? 1 : 0) << i5);
            }
            return j;
        }
        throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 64");
    }

    public static int binaryToInt(boolean[] zArr, int i, int i2, int i3, int i4) {
        if ((zArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if ((i4 - 1) + i3 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = (i5 * 1) + i3;
                i2 = (i2 & ((1 << i6) ^ -1)) | ((zArr[i5 + i] ? 1 : 0) << i6);
            }
            return i2;
        }
        throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 32");
    }

    public static short binaryToShort(boolean[] zArr, int i, short s, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return s;
        }
        if ((i3 - 1) + i2 < 16) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 1) + i2;
                s = (short) ((s & ((1 << i5) ^ -1)) | ((zArr[i4 + i] ? 1 : 0) << i5));
            }
            return s;
        }
        throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 16");
    }

    public static byte binaryToByte(boolean[] zArr, int i, byte b, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return b;
        }
        if ((i3 - 1) + i2 < 8) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (i4 * 1) + i2;
                b = (byte) ((b & ((1 << i5) ^ -1)) | ((zArr[i4 + i] ? 1 : 0) << i5));
            }
            return b;
        }
        throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 8");
    }

    public static int[] longToIntArray(long j, int i, int[] iArr, int i2, int i3) {
        if (i3 == 0) {
            return iArr;
        }
        if (((i3 - 1) * 32) + i < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i2 + i4] = (int) (-1 & (j >> ((i4 * 32) + i)));
            }
            return iArr;
        }
        throw new IllegalArgumentException("(nInts-1)*32+srcPos is greather or equal to than 64");
    }

    public static short[] longToShortArray(long j, int i, short[] sArr, int i2, int i3) {
        if (i3 == 0) {
            return sArr;
        }
        if (((i3 - 1) * 16) + i < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                sArr[i2 + i4] = (short) ((int) (65535 & (j >> ((i4 * 16) + i))));
            }
            return sArr;
        }
        throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greather or equal to than 64");
    }

    public static short[] intToShortArray(int i, int i2, short[] sArr, int i3, int i4) {
        if (i4 == 0) {
            return sArr;
        }
        if (((i4 - 1) * 16) + i2 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                sArr[i3 + i5] = (short) ((i >> ((i5 * 16) + i2)) & 65535);
            }
            return sArr;
        }
        throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greather or equal to than 32");
    }

    public static byte[] longToByteArray(long j, int i, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return bArr;
        }
        if (((i3 - 1) * 8) + i < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                bArr[i2 + i4] = (byte) ((int) (255 & (j >> ((i4 * 8) + i))));
            }
            return bArr;
        }
        throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 64");
    }

    public static byte[] intToByteArray(int i, int i2, byte[] bArr, int i3, int i4) {
        if (i4 == 0) {
            return bArr;
        }
        if (((i4 - 1) * 8) + i2 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                bArr[i3 + i5] = (byte) ((i >> ((i5 * 8) + i2)) & 255);
            }
            return bArr;
        }
        throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 32");
    }

    public static byte[] shortToByteArray(short s, int i, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return bArr;
        }
        if (((i3 - 1) * 8) + i < 16) {
            for (int i4 = 0; i4 < i3; i4++) {
                bArr[i2 + i4] = (byte) ((s >> ((i4 * 8) + i)) & 255);
            }
            return bArr;
        }
        throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 16");
    }

    public static String longToHex(long j, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (((i3 - 1) * 4) + i < 64) {
            StringBuilder sb = new StringBuilder(str);
            int length = sb.length();
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (int) (15 & (j >> ((i4 * 4) + i)));
                int i6 = i2 + i4;
                if (i6 == length) {
                    length++;
                    sb.append(intToHexDigit(i5));
                } else {
                    sb.setCharAt(i6, intToHexDigit(i5));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 64");
    }

    public static String intToHex(int i, int i2, String str, int i3, int i4) {
        if (i4 == 0) {
            return str;
        }
        if (((i4 - 1) * 4) + i2 < 32) {
            StringBuilder sb = new StringBuilder(str);
            int length = sb.length();
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = (i >> ((i5 * 4) + i2)) & 15;
                int i7 = i3 + i5;
                if (i7 == length) {
                    length++;
                    sb.append(intToHexDigit(i6));
                } else {
                    sb.setCharAt(i7, intToHexDigit(i6));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 32");
    }

    public static String shortToHex(short s, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (((i3 - 1) * 4) + i < 16) {
            StringBuilder sb = new StringBuilder(str);
            int length = sb.length();
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (s >> ((i4 * 4) + i)) & 15;
                int i6 = i2 + i4;
                if (i6 == length) {
                    length++;
                    sb.append(intToHexDigit(i5));
                } else {
                    sb.setCharAt(i6, intToHexDigit(i5));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 16");
    }

    public static String byteToHex(byte b, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (((i3 - 1) * 4) + i < 8) {
            StringBuilder sb = new StringBuilder(str);
            int length = sb.length();
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = (b >> ((i4 * 4) + i)) & 15;
                int i6 = i2 + i4;
                if (i6 == length) {
                    length++;
                    sb.append(intToHexDigit(i5));
                } else {
                    sb.setCharAt(i6, intToHexDigit(i5));
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 8");
    }

    public static boolean[] longToBinary(long j, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i < 64) {
            for (int i4 = 0; i4 < i3; i4++) {
                zArr[i2 + i4] = (1 & (j >> ((i4 * 1) + i))) != 0;
            }
            return zArr;
        }
        throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 64");
    }

    public static boolean[] intToBinary(int i, int i2, boolean[] zArr, int i3, int i4) {
        if (i4 == 0) {
            return zArr;
        }
        if ((i4 - 1) + i2 < 32) {
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = i3 + i5;
                boolean z = true;
                if (((i >> ((i5 * 1) + i2)) & 1) == 0) {
                    z = false;
                }
                zArr[i6] = z;
            }
            return zArr;
        }
        throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 32");
    }

    public static boolean[] shortToBinary(short s, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i < 16) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = i2 + i4;
                boolean z = true;
                if (((s >> ((i4 * 1) + i)) & 1) == 0) {
                    z = false;
                }
                zArr[i5] = z;
            }
            return zArr;
        }
        throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 16");
    }

    public static boolean[] byteToBinary(byte b, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i < 8) {
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = i2 + i4;
                boolean z = true;
                if (((b >> ((i4 * 1) + i)) & 1) == 0) {
                    z = false;
                }
                zArr[i5] = z;
            }
            return zArr;
        }
        throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 8");
    }

    public static byte[] uuidToByteArray(UUID uuid, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return bArr;
        }
        if (i2 <= 16) {
            longToByteArray(uuid.getMostSignificantBits(), 0, bArr, i, i2 > 8 ? 8 : i2);
            if (i2 >= 8) {
                longToByteArray(uuid.getLeastSignificantBits(), 0, bArr, i + 8, i2 - 8);
            }
            return bArr;
        }
        throw new IllegalArgumentException("nBytes is greather than 16");
    }

    public static UUID byteArrayToUuid(byte[] bArr, int i) {
        if (bArr.length - i >= 16) {
            return new UUID(byteArrayToLong(bArr, i, 0, 0, 8), byteArrayToLong(bArr, i + 8, 0, 0, 8));
        }
        throw new IllegalArgumentException("Need at least 16 bytes for UUID");
    }
}
