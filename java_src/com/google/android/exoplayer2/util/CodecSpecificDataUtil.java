package com.google.android.exoplayer2.util;

import android.util.Pair;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;

public final class CodecSpecificDataUtil {
    private static final int AUDIO_OBJECT_TYPE_AAC_LC = 2;
    private static final int AUDIO_OBJECT_TYPE_ER_BSAC = 22;
    private static final int AUDIO_OBJECT_TYPE_ESCAPE = 31;
    private static final int AUDIO_OBJECT_TYPE_PS = 29;
    private static final int AUDIO_OBJECT_TYPE_SBR = 5;
    private static final int AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID = -1;
    private static final int[] AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};
    private static final int AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY = 15;
    private static final int[] AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE = {96000, 88200, SettingsJsonConstants.SETTINGS_LOG_BUFFER_SIZE_DEFAULT, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};

    private CodecSpecificDataUtil() {
    }

    public static Pair<Integer, Integer> parseAacAudioSpecificConfig(byte[] bArr) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int aacAudioObjectType = getAacAudioObjectType(parsableBitArray);
        int aacSamplingFrequency = getAacSamplingFrequency(parsableBitArray);
        int readBits = parsableBitArray.readBits(4);
        if (aacAudioObjectType == 5 || aacAudioObjectType == 29) {
            aacSamplingFrequency = getAacSamplingFrequency(parsableBitArray);
            if (getAacAudioObjectType(parsableBitArray) == 22) {
                readBits = parsableBitArray.readBits(4);
            }
        }
        int i = AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[readBits];
        Assertions.checkArgument(i != -1);
        return Pair.create(Integer.valueOf(aacSamplingFrequency), Integer.valueOf(i));
    }

    public static byte[] buildAacLcAudioSpecificConfig(int i, int i2) {
        int i3 = -1;
        for (int i4 = 0; i4 < AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE.length; i4++) {
            if (i == AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[i4]) {
                i3 = i4;
            }
        }
        int i5 = -1;
        for (int i6 = 0; i6 < AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE.length; i6++) {
            if (i2 == AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE[i6]) {
                i5 = i6;
            }
        }
        if (!(i == -1 || i5 == -1)) {
            return buildAacAudioSpecificConfig(2, i3, i5);
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i + ", " + i2);
    }

    public static byte[] buildAacAudioSpecificConfig(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[(NAL_START_CODE.length + i2)];
        System.arraycopy(NAL_START_CODE, 0, bArr2, 0, NAL_START_CODE.length);
        System.arraycopy(bArr, i, bArr2, NAL_START_CODE.length, i2);
        return bArr2;
    }

    public static byte[][] splitNalUnits(byte[] bArr) {
        if (!isNalStartCode(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            arrayList.add(Integer.valueOf(i));
            i = findNalStartCode(bArr, i + NAL_START_CODE.length);
        } while (i != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i2 = 0;
        while (i2 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            byte[] bArr3 = new byte[((i2 < arrayList.size() + -1 ? ((Integer) arrayList.get(i2 + 1)).intValue() : bArr.length) - intValue)];
            System.arraycopy(bArr, intValue, bArr3, 0, bArr3.length);
            bArr2[i2] = bArr3;
            i2++;
        }
        return bArr2;
    }

    private static int findNalStartCode(byte[] bArr, int i) {
        int length = bArr.length - NAL_START_CODE.length;
        while (i <= length) {
            if (isNalStartCode(bArr, i)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private static boolean isNalStartCode(byte[] bArr, int i) {
        if (bArr.length - i <= NAL_START_CODE.length) {
            return false;
        }
        for (int i2 = 0; i2 < NAL_START_CODE.length; i2++) {
            if (bArr[i + i2] != NAL_START_CODE[i2]) {
                return false;
            }
        }
        return true;
    }

    private static int getAacAudioObjectType(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(5);
        return readBits == 31 ? parsableBitArray.readBits(6) + 32 : readBits;
    }

    private static int getAacSamplingFrequency(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(4);
        if (readBits == 15) {
            return parsableBitArray.readBits(24);
        }
        Assertions.checkArgument(readBits < 13);
        return AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE[readBits];
    }
}
