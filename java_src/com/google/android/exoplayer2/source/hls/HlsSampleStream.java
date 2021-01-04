package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.SampleStream;
import java.io.IOException;

/* access modifiers changed from: package-private */
public final class HlsSampleStream implements SampleStream {
    public final int group;
    private final HlsSampleStreamWrapper sampleStreamWrapper;

    public HlsSampleStream(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i) {
        this.sampleStreamWrapper = hlsSampleStreamWrapper;
        this.group = i;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return this.sampleStreamWrapper.isReady(this.group);
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
        this.sampleStreamWrapper.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        return this.sampleStreamWrapper.readData(this.group, formatHolder, decoderInputBuffer, z);
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void skipData(long j) {
        this.sampleStreamWrapper.skipData(this.group, j);
    }
}
