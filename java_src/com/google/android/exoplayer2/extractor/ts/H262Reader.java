package com.google.android.exoplayer2.extractor.ts;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Arrays;
import java.util.Collections;
import kotlin.UByte;

public final class H262Reader implements ElementaryStreamReader {
    private static final double[] FRAME_RATE_VALUES = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private static final int START_EXTENSION = 181;
    private static final int START_GROUP = 184;
    private static final int START_PICTURE = 0;
    private static final int START_SEQUENCE_HEADER = 179;
    private final CsdBuffer csdBuffer = new CsdBuffer(128);
    private String formatId;
    private long frameDurationUs;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private long pesTimeUs;
    private final boolean[] prefixFlags = new boolean[4];
    private boolean sampleHasPicture;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private boolean startedFirstSample;
    private long totalBytesWritten;

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.csdBuffer.reset();
        this.totalBytesWritten = 0;
        this.startedFirstSample = false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, boolean z) {
        this.pesTimeUs = j;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        boolean z;
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] bArr = parsableByteArray.data;
        this.totalBytesWritten += (long) parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int findNalUnit = NalUnitUtil.findNalUnit(bArr, position, limit, this.prefixFlags);
            if (findNalUnit == limit) {
                break;
            }
            int i = findNalUnit + 3;
            int i2 = parsableByteArray.data[i] & UByte.MAX_VALUE;
            if (!this.hasOutputFormat) {
                int i3 = findNalUnit - position;
                if (i3 > 0) {
                    this.csdBuffer.onData(bArr, position, findNalUnit);
                }
                if (this.csdBuffer.onStartCode(i2, i3 < 0 ? -i3 : 0)) {
                    Pair<Format, Long> parseCsdBuffer = parseCsdBuffer(this.csdBuffer, this.formatId);
                    this.output.format((Format) parseCsdBuffer.first);
                    this.frameDurationUs = ((Long) parseCsdBuffer.second).longValue();
                    this.hasOutputFormat = true;
                }
            }
            if (i2 == 0 || i2 == START_SEQUENCE_HEADER) {
                int i4 = limit - findNalUnit;
                if (this.startedFirstSample && this.sampleHasPicture && this.hasOutputFormat) {
                    this.output.sampleMetadata(this.sampleTimeUs, this.sampleIsKeyframe ? 1 : 0, ((int) (this.totalBytesWritten - this.samplePosition)) - i4, i4, null);
                }
                if (!this.startedFirstSample || this.sampleHasPicture) {
                    this.samplePosition = this.totalBytesWritten - ((long) i4);
                    this.sampleTimeUs = this.pesTimeUs != C.TIME_UNSET ? this.pesTimeUs : this.startedFirstSample ? this.sampleTimeUs + this.frameDurationUs : 0;
                    z = false;
                    this.sampleIsKeyframe = false;
                    this.pesTimeUs = C.TIME_UNSET;
                    this.startedFirstSample = true;
                } else {
                    z = false;
                }
                if (i2 == 0) {
                    z = true;
                }
                this.sampleHasPicture = z;
            } else if (i2 == START_GROUP) {
                this.sampleIsKeyframe = true;
            }
            position = i;
        }
        if (!this.hasOutputFormat) {
            this.csdBuffer.onData(bArr, position, limit);
        }
    }

    private static Pair<Format, Long> parseCsdBuffer(CsdBuffer csdBuffer2, String str) {
        float f;
        float f2;
        byte[] copyOf = Arrays.copyOf(csdBuffer2.data, csdBuffer2.length);
        int i = copyOf[4] & UByte.MAX_VALUE;
        int i2 = copyOf[5] & UByte.MAX_VALUE;
        int i3 = (i << 4) | (i2 >> 4);
        int i4 = ((i2 & 15) << 8) | (copyOf[6] & UByte.MAX_VALUE);
        switch ((copyOf[7] & 240) >> 4) {
            case 2:
                f2 = ((float) (i4 * 4)) / ((float) (i3 * 3));
                f = f2;
                break;
            case 3:
                f2 = ((float) (i4 * 16)) / ((float) (i3 * 9));
                f = f2;
                break;
            case 4:
                f2 = ((float) (i4 * 121)) / ((float) (i3 * 100));
                f = f2;
                break;
            default:
                f = 1.0f;
                break;
        }
        Format createVideoSampleFormat = Format.createVideoSampleFormat(str, MimeTypes.VIDEO_MPEG2, null, -1, -1, i3, i4, -1.0f, Collections.singletonList(copyOf), -1, f, null);
        long j = 0;
        int i5 = (copyOf[7] & 15) - 1;
        if (i5 >= 0 && i5 < FRAME_RATE_VALUES.length) {
            double d = FRAME_RATE_VALUES[i5];
            int i6 = csdBuffer2.sequenceExtensionPosition + 9;
            int i7 = (copyOf[i6] & 96) >> 5;
            int i8 = copyOf[i6] & 31;
            if (i7 != i8) {
                double d2 = (double) i7;
                Double.isNaN(d2);
                double d3 = (double) (i8 + 1);
                Double.isNaN(d3);
                d *= (d2 + 1.0d) / d3;
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(createVideoSampleFormat, Long.valueOf(j));
    }

    /* access modifiers changed from: private */
    public static final class CsdBuffer {
        private static final byte[] START_CODE = {0, 0, 1};
        public byte[] data;
        private boolean isFilling;
        public int length;
        public int sequenceExtensionPosition;

        public CsdBuffer(int i) {
            this.data = new byte[i];
        }

        public void reset() {
            this.isFilling = false;
            this.length = 0;
            this.sequenceExtensionPosition = 0;
        }

        public boolean onStartCode(int i, int i2) {
            if (this.isFilling) {
                this.length -= i2;
                if (this.sequenceExtensionPosition == 0 && i == H262Reader.START_EXTENSION) {
                    this.sequenceExtensionPosition = this.length;
                } else {
                    this.isFilling = false;
                    return true;
                }
            } else if (i == H262Reader.START_SEQUENCE_HEADER) {
                this.isFilling = true;
            }
            onData(START_CODE, 0, START_CODE.length);
            return false;
        }

        public void onData(byte[] bArr, int i, int i2) {
            if (this.isFilling) {
                int i3 = i2 - i;
                if (this.data.length < this.length + i3) {
                    this.data = Arrays.copyOf(this.data, (this.length + i3) * 2);
                }
                System.arraycopy(bArr, i, this.data, this.length, i3);
                this.length += i3;
            }
        }
    }
}
