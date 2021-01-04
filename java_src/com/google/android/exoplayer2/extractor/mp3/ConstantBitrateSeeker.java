package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.util.Util;

/* access modifiers changed from: package-private */
public final class ConstantBitrateSeeker implements Mp3Extractor.Seeker {
    private static final int BITS_PER_BYTE = 8;
    private final int bitrate;
    private final long durationUs;
    private final long firstFramePosition;

    public ConstantBitrateSeeker(long j, int i, long j2) {
        long j3;
        this.firstFramePosition = j;
        this.bitrate = i;
        if (j2 == -1) {
            j3 = C.TIME_UNSET;
        } else {
            j3 = getTimeUs(j2);
        }
        this.durationUs = j3;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.durationUs != C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getPosition(long j) {
        if (this.durationUs == C.TIME_UNSET) {
            return 0;
        }
        return this.firstFramePosition + ((Util.constrainValue(j, 0, this.durationUs) * ((long) this.bitrate)) / 8000000);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j) {
        return ((Math.max(0L, j - this.firstFramePosition) * C.MICROS_PER_SECOND) * 8) / ((long) this.bitrate);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }
}
