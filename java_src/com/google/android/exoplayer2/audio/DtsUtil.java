package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableBitArray;
import java.nio.ByteBuffer;
import kotlin.UByte;
import org.jetbrains.anko.DimensionsKt;

public final class DtsUtil {
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, 192, 224, 256, 384, 448, 512, DimensionsKt.XXXHDPI, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static Format parseDtsFormat(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.skipBits(60);
        int i = CHANNELS_BY_AMODE[parsableBitArray.readBits(6)];
        int i2 = SAMPLE_RATE_BY_SFREQ[parsableBitArray.readBits(4)];
        int readBits = parsableBitArray.readBits(5);
        int i3 = readBits >= TWICE_BITRATE_KBPS_BY_RATE.length ? -1 : (TWICE_BITRATE_KBPS_BY_RATE[readBits] * 1000) / 2;
        parsableBitArray.skipBits(10);
        return Format.createAudioSampleFormat(str, MimeTypes.AUDIO_DTS, null, i3, -1, i + (parsableBitArray.readBits(2) > 0 ? 1 : 0), i2, null, drmInitData, 0, str2);
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        return ((((bArr[5] & 252) >> 2) | ((bArr[4] & 1) << 6)) + 1) * 32;
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        return ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
    }

    public static int getDtsFrameSize(byte[] bArr) {
        return (((bArr[7] & 240) >> 4) | ((bArr[5] & 2) << 12) | ((bArr[6] & UByte.MAX_VALUE) << 4)) + 1;
    }

    private DtsUtil() {
    }
}
