package com.google.zxing.datamatrix.decoder;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import kotlin.text.Typography;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

/* access modifiers changed from: package-private */
public final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] C40_SHIFT2_SET_CHARS = {'!', Typography.quote, '#', '$', '%', Typography.amp, '\'', '(', ')', '*', '+', ',', '-', '.', IOUtils.DIR_SEPARATOR_UNIX, ':', ';', Typography.less, '=', Typography.greater, '?', '@', '[', IOUtils.DIR_SEPARATOR_WINDOWS, ']', '^', '_'};
    private static final char[] TEXT_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] TEXT_SHIFT2_SET_CHARS = C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT3_SET_CHARS = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    /* access modifiers changed from: private */
    public enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0068  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.google.zxing.common.DecoderResult decode(byte[] r6) throws com.google.zxing.FormatException {
        /*
        // Method dump skipped, instructions count: 124
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.decode(byte[]):com.google.zxing.common.DecoderResult");
    }

    private static Mode decodeAsciiSegment(BitSource bitSource, StringBuilder sb, StringBuilder sb2) throws FormatException {
        boolean z = false;
        do {
            int readBits = bitSource.readBits(8);
            if (readBits == 0) {
                throw FormatException.getFormatInstance();
            } else if (readBits <= 128) {
                if (z) {
                    readBits += 128;
                }
                sb.append((char) (readBits - 1));
                return Mode.ASCII_ENCODE;
            } else if (readBits == 129) {
                return Mode.PAD_ENCODE;
            } else {
                if (readBits <= 229) {
                    int i = readBits - 130;
                    if (i < 10) {
                        sb.append('0');
                    }
                    sb.append(i);
                } else if (readBits == 230) {
                    return Mode.C40_ENCODE;
                } else {
                    if (readBits == 231) {
                        return Mode.BASE256_ENCODE;
                    }
                    if (readBits == 232) {
                        sb.append((char) 29);
                    } else if (!(readBits == 233 || readBits == 234)) {
                        if (readBits == 235) {
                            z = true;
                        } else if (readBits == 236) {
                            sb.append("[)>\u001e05\u001d");
                            sb2.insert(0, "\u001e\u0004");
                        } else if (readBits == 237) {
                            sb.append("[)>\u001e06\u001d");
                            sb2.insert(0, "\u001e\u0004");
                        } else if (readBits == 238) {
                            return Mode.ANSIX12_ENCODE;
                        } else {
                            if (readBits == 239) {
                                return Mode.TEXT_ENCODE;
                            }
                            if (readBits == 240) {
                                return Mode.EDIFACT_ENCODE;
                            }
                            if (!(readBits == 241 || readBits < 242 || (readBits == 254 && bitSource.available() == 0))) {
                                throw FormatException.getFormatInstance();
                            }
                        }
                    }
                }
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeC40Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int readBits;
        boolean z;
        int[] iArr = new int[3];
        boolean z2 = false;
        int i = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            boolean z3 = z2;
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                switch (i) {
                    case 0:
                        if (i3 < 3) {
                            i = i3 + 1;
                            break;
                        } else if (i3 < C40_BASIC_SET_CHARS.length) {
                            char c = C40_BASIC_SET_CHARS[i3];
                            if (z3) {
                                sb.append((char) (c + 128));
                                z3 = false;
                                break;
                            } else {
                                sb.append(c);
                                break;
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    case 1:
                        if (z3) {
                            sb.append((char) (i3 + 128));
                            z3 = false;
                            i = 0;
                            break;
                        } else {
                            sb.append((char) i3);
                            i = 0;
                        }
                    case 2:
                        if (i3 < C40_SHIFT2_SET_CHARS.length) {
                            char c2 = C40_SHIFT2_SET_CHARS[i3];
                            if (z3) {
                                sb.append((char) (c2 + 128));
                                z = false;
                                z3 = z;
                                i = 0;
                                break;
                            } else {
                                sb.append(c2);
                            }
                        } else if (i3 == 27) {
                            sb.append((char) 29);
                        } else if (i3 == 30) {
                            z = true;
                            z3 = z;
                            i = 0;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        z = z3;
                        z3 = z;
                        i = 0;
                    case 3:
                        if (z3) {
                            sb.append((char) (i3 + 224));
                            z3 = false;
                            i = 0;
                            break;
                        } else {
                            sb.append((char) (i3 + 96));
                            i = 0;
                        }
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
            if (bitSource.available() > 0) {
                z2 = z3;
            } else {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int readBits;
        boolean z;
        int[] iArr = new int[3];
        boolean z2 = false;
        int i = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            boolean z3 = z2;
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                switch (i) {
                    case 0:
                        if (i3 < 3) {
                            i = i3 + 1;
                            break;
                        } else if (i3 < TEXT_BASIC_SET_CHARS.length) {
                            char c = TEXT_BASIC_SET_CHARS[i3];
                            if (z3) {
                                sb.append((char) (c + 128));
                                z3 = false;
                                break;
                            } else {
                                sb.append(c);
                                break;
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    case 1:
                        if (z3) {
                            sb.append((char) (i3 + 128));
                            z3 = false;
                            i = 0;
                            break;
                        } else {
                            sb.append((char) i3);
                            i = 0;
                        }
                    case 2:
                        if (i3 < TEXT_SHIFT2_SET_CHARS.length) {
                            char c2 = TEXT_SHIFT2_SET_CHARS[i3];
                            if (z3) {
                                sb.append((char) (c2 + 128));
                                z = false;
                                z3 = z;
                                i = 0;
                                break;
                            } else {
                                sb.append(c2);
                            }
                        } else if (i3 == 27) {
                            sb.append((char) 29);
                        } else if (i3 == 30) {
                            z = true;
                            z3 = z;
                            i = 0;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        z = z3;
                        z3 = z;
                        i = 0;
                    case 3:
                        if (i3 < TEXT_SHIFT3_SET_CHARS.length) {
                            char c3 = TEXT_SHIFT3_SET_CHARS[i3];
                            if (z3) {
                                sb.append((char) (c3 + 128));
                                z3 = false;
                                i = 0;
                                break;
                            } else {
                                sb.append(c3);
                                i = 0;
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
            if (bitSource.available() > 0) {
                z2 = z3;
            } else {
                return;
            }
        }
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int readBits;
        int[] iArr = new int[3];
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i = 0; i < 3; i++) {
                int i2 = iArr[i];
                if (i2 == 0) {
                    sb.append(CharUtils.CR);
                } else if (i2 == 1) {
                    sb.append('*');
                } else if (i2 == 2) {
                    sb.append(Typography.greater);
                } else if (i2 == 3) {
                    sb.append(' ');
                } else if (i2 < 14) {
                    sb.append((char) (i2 + 44));
                } else if (i2 < 40) {
                    sb.append((char) (i2 + 51));
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    private static void decodeEdifactSegment(BitSource bitSource, StringBuilder sb) {
        while (bitSource.available() > 16) {
            for (int i = 0; i < 4; i++) {
                int readBits = bitSource.readBits(6);
                if (readBits == 31) {
                    int bitOffset = 8 - bitSource.getBitOffset();
                    if (bitOffset != 8) {
                        bitSource.readBits(bitOffset);
                        return;
                    }
                    return;
                }
                if ((readBits & 32) == 0) {
                    readBits |= 64;
                }
                sb.append((char) readBits);
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeBase256Segment(BitSource bitSource, StringBuilder sb, Collection<byte[]> collection) throws FormatException {
        int byteOffset = bitSource.getByteOffset() + 1;
        int i = byteOffset + 1;
        int unrandomize255State = unrandomize255State(bitSource.readBits(8), byteOffset);
        if (unrandomize255State == 0) {
            unrandomize255State = bitSource.available() / 8;
        } else if (unrandomize255State >= 250) {
            unrandomize255State = ((unrandomize255State - 249) * ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + unrandomize255State(bitSource.readBits(8), i);
            i++;
        }
        if (unrandomize255State >= 0) {
            byte[] bArr = new byte[unrandomize255State];
            int i2 = 0;
            while (i2 < unrandomize255State) {
                if (bitSource.available() >= 8) {
                    bArr[i2] = (byte) unrandomize255State(bitSource.readBits(8), i);
                    i2++;
                    i++;
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            collection.add(bArr);
            try {
                sb.append(new String(bArr, "ISO8859_1"));
            } catch (UnsupportedEncodingException e) {
                throw new IllegalStateException("Platform does not support required encoding: " + e);
            }
        } else {
            throw FormatException.getFormatInstance();
        }
    }

    private static int unrandomize255State(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }
}
