package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;

public final class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final ChunkIndex chunkIndex;

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public int getFirstSegmentNum() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }

    public DashWrappingSegmentIndex(ChunkIndex chunkIndex2) {
        this.chunkIndex = chunkIndex2;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public int getSegmentCount(long j) {
        return this.chunkIndex.length;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getTimeUs(int i) {
        return this.chunkIndex.timesUs[i];
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getDurationUs(int i, long j) {
        return this.chunkIndex.durationsUs[i];
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(int i) {
        return new RangedUri(null, this.chunkIndex.offsets[i], (long) this.chunkIndex.sizes[i]);
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public int getSegmentNum(long j, long j2) {
        return this.chunkIndex.getChunkIndex(j);
    }
}
