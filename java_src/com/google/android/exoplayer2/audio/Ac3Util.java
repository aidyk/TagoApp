package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.nio.ByteBuffer;
import org.jetbrains.anko.DimensionsKt;

public final class Ac3Util {
    private static final int AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT = 1536;
    private static final int AUDIO_SAMPLES_PER_AUDIO_BLOCK = 256;
    private static final int[] BITRATE_BY_HALF_FRMSIZECOD = {32, 40, 48, 56, 64, 80, 96, 112, 128, DimensionsKt.MDPI, 192, 224, 256, DimensionsKt.XHDPI, 384, 448, 512, 576, DimensionsKt.XXXHDPI};
    private static final int[] BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD = {1, 2, 3, 6};
    private static final int[] CHANNEL_COUNT_BY_ACMOD = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] SAMPLE_RATE_BY_FSCOD = {48000, 44100, 32000};
    private static final int[] SAMPLE_RATE_BY_FSCOD2 = {24000, 22050, 16000};
    private static final int[] SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1 = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int getAc3SyncframeAudioSampleCount() {
        return AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
    }

    public static final class Ac3SyncFrameInfo {
        public final int channelCount;
        public final int frameSize;
        public final String mimeType;
        public final int sampleCount;
        public final int sampleRate;

        private Ac3SyncFrameInfo(String str, int i, int i2, int i3, int i4) {
            this.mimeType = str;
            this.channelCount = i;
            this.sampleRate = i2;
            this.frameSize = i3;
            this.sampleCount = i4;
        }
    }

    public static Format parseAc3AnnexFFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        int i = SAMPLE_RATE_BY_FSCOD[(parsableByteArray.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = CHANNEL_COUNT_BY_ACMOD[(readUnsignedByte & 56) >> 3];
        if ((readUnsignedByte & 4) != 0) {
            i2++;
        }
        return Format.createAudioSampleFormat(str, MimeTypes.AUDIO_AC3, null, -1, -1, i2, i, null, drmInitData, 0, str2);
    }

    public static Format parseEAc3AnnexFFormat(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        parsableByteArray.skipBytes(2);
        int i = SAMPLE_RATE_BY_FSCOD[(parsableByteArray.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = CHANNEL_COUNT_BY_ACMOD[(readUnsignedByte & 14) >> 1];
        if ((readUnsignedByte & 1) != 0) {
            i2++;
        }
        return Format.createAudioSampleFormat(str, MimeTypes.AUDIO_E_AC3, null, -1, -1, i2, i, null, drmInitData, 0, str2);
    }

    public static Ac3SyncFrameInfo parseAc3SyncframeInfo(ParsableBitArray parsableBitArray) {
        int i;
        int i2;
        int i3;
        String str;
        int i4;
        int i5;
        int position = parsableBitArray.getPosition();
        parsableBitArray.skipBits(40);
        boolean z = parsableBitArray.readBits(5) == 16;
        parsableBitArray.setPosition(position);
        int i6 = 6;
        if (z) {
            parsableBitArray.skipBits(21);
            int readBits = (parsableBitArray.readBits(11) + 1) * 2;
            int readBits2 = parsableBitArray.readBits(2);
            if (readBits2 == 3) {
                i5 = SAMPLE_RATE_BY_FSCOD2[parsableBitArray.readBits(2)];
            } else {
                i6 = BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[parsableBitArray.readBits(2)];
                i5 = SAMPLE_RATE_BY_FSCOD[readBits2];
            }
            i4 = parsableBitArray.readBits(3);
            i = i6 * 256;
            i3 = i5;
            i2 = readBits;
            str = MimeTypes.AUDIO_E_AC3;
        } else {
            parsableBitArray.skipBits(32);
            int readBits3 = parsableBitArray.readBits(2);
            int ac3SyncframeSize = getAc3SyncframeSize(readBits3, parsableBitArray.readBits(6));
            parsableBitArray.skipBits(8);
            i4 = parsableBitArray.readBits(3);
            if (!((i4 & 1) == 0 || i4 == 1)) {
                parsableBitArray.skipBits(2);
            }
            if ((i4 & 4) != 0) {
                parsableBitArray.skipBits(2);
            }
            if (i4 == 2) {
                parsableBitArray.skipBits(2);
            }
            int i7 = SAMPLE_RATE_BY_FSCOD[readBits3];
            i2 = ac3SyncframeSize;
            str = MimeTypes.AUDIO_AC3;
            i3 = i7;
            i = AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT;
        }
        return new Ac3SyncFrameInfo(str, CHANNEL_COUNT_BY_ACMOD[i4] + (parsableBitArray.readBit() ? 1 : 0), i3, i2, i);
    }

    public static int parseAc3SyncframeSize(byte[] bArr) {
        if (bArr.length < 5) {
            return -1;
        }
        return getAc3SyncframeSize((bArr[4] & 192) >> 6, bArr[4] & 63);
    }

    public static int parseEAc3SyncframeAudioSampleCount(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }

    private static int getAc3SyncframeSize(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= SAMPLE_RATE_BY_FSCOD.length || i2 < 0 || i3 >= SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1.length) {
            return -1;
        }
        int i4 = SAMPLE_RATE_BY_FSCOD[i];
        if (i4 == 44100) {
            return (SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1[i3] + (i2 % 2)) * 2;
        }
        int i5 = BITRATE_BY_HALF_FRMSIZECOD[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    private Ac3Util() {
    }
}
