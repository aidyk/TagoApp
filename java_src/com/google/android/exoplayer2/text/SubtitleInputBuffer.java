package com.google.android.exoplayer2.text;

import android.support.annotation.NonNull;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;

public final class SubtitleInputBuffer extends DecoderInputBuffer implements Comparable<SubtitleInputBuffer> {
    public long subsampleOffsetUs;

    public SubtitleInputBuffer() {
        super(1);
    }

    public int compareTo(@NonNull SubtitleInputBuffer subtitleInputBuffer) {
        long j = this.timeUs - subtitleInputBuffer.timeUs;
        if (j == 0) {
            return 0;
        }
        return j > 0 ? 1 : -1;
    }
}
