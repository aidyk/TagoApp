package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* access modifiers changed from: package-private */
public final class VbriSeeker implements Mp3Extractor.Seeker {
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public static VbriSeeker create(MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray, long j, long j2) {
        int i;
        long j3;
        parsableByteArray.skipBytes(10);
        int readInt = parsableByteArray.readInt();
        VbriSeeker vbriSeeker = null;
        if (readInt <= 0) {
            return null;
        }
        int i2 = mpegAudioHeader.sampleRate;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp((long) readInt, C.MICROS_PER_SECOND * ((long) (i2 >= 32000 ? 1152 : 576)), (long) i2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j4 = j + ((long) mpegAudioHeader.frameSize);
        int i3 = readUnsignedShort + 1;
        long[] jArr = new long[i3];
        long[] jArr2 = new long[i3];
        jArr[0] = 0;
        jArr2[0] = j4;
        int i4 = 1;
        while (i4 < jArr.length) {
            switch (readUnsignedShort3) {
                case 1:
                    i = parsableByteArray.readUnsignedByte();
                    break;
                case 2:
                    i = parsableByteArray.readUnsignedShort();
                    break;
                case 3:
                    i = parsableByteArray.readUnsignedInt24();
                    break;
                case 4:
                    i = parsableByteArray.readUnsignedIntToInt();
                    break;
                default:
                    return vbriSeeker;
            }
            j4 += (long) (i * readUnsignedShort2);
            jArr[i4] = (((long) i4) * scaleLargeTimestamp) / ((long) readUnsignedShort);
            if (j2 == -1) {
                j3 = j4;
            } else {
                j3 = Math.min(j2, j4);
            }
            jArr2[i4] = j3;
            i4++;
            scaleLargeTimestamp = scaleLargeTimestamp;
            vbriSeeker = null;
        }
        return new VbriSeeker(jArr, jArr2, scaleLargeTimestamp);
    }

    private VbriSeeker(long[] jArr, long[] jArr2, long j) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getPosition(long j) {
        return this.positions[Util.binarySearchFloor(this.timesUs, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }
}
