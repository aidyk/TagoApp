package com.google.android.exoplayer2.source.chunk;

import android.util.Log;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper;

final class BaseMediaChunkOutput implements ChunkExtractorWrapper.TrackOutputProvider {
    private static final String TAG = "BaseMediaChunkOutput";
    private final SampleQueue[] sampleQueues;
    private final int[] trackTypes;

    public BaseMediaChunkOutput(int[] iArr, SampleQueue[] sampleQueueArr) {
        this.trackTypes = iArr;
        this.sampleQueues = sampleQueueArr;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper.TrackOutputProvider
    public TrackOutput track(int i, int i2) {
        for (int i3 = 0; i3 < this.trackTypes.length; i3++) {
            if (i2 == this.trackTypes[i3]) {
                return this.sampleQueues[i3];
            }
        }
        Log.e(TAG, "Unmatched track of type: " + i2);
        return new DummyTrackOutput();
    }

    public int[] getWriteIndices() {
        int[] iArr = new int[this.sampleQueues.length];
        for (int i = 0; i < this.sampleQueues.length; i++) {
            if (this.sampleQueues[i] != null) {
                iArr[i] = this.sampleQueues[i].getWriteIndex();
            }
        }
        return iArr;
    }

    public void setSampleOffsetUs(long j) {
        SampleQueue[] sampleQueueArr = this.sampleQueues;
        for (SampleQueue sampleQueue : sampleQueueArr) {
            if (sampleQueue != null) {
                sampleQueue.setSampleOffsetUs(j);
            }
        }
    }
}
