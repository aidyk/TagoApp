package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* access modifiers changed from: package-private */
public final class SampleMetadataQueue {
    private static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private int absoluteStartIndex;
    private int capacity = 1000;
    private TrackOutput.CryptoData[] cryptoDatas = new TrackOutput.CryptoData[this.capacity];
    private int[] flags = new int[this.capacity];
    private Format[] formats = new Format[this.capacity];
    private long largestDiscardedTimestampUs = Long.MIN_VALUE;
    private long largestQueuedTimestampUs = Long.MIN_VALUE;
    private int length;
    private long[] offsets = new long[this.capacity];
    private int readPosition;
    private int relativeStartIndex;
    private int[] sizes = new int[this.capacity];
    private int[] sourceIds = new int[this.capacity];
    private long[] timesUs = new long[this.capacity];
    private Format upstreamFormat;
    private boolean upstreamFormatRequired = true;
    private boolean upstreamKeyframeRequired = true;
    private int upstreamSourceId;

    public static final class SampleExtrasHolder {
        public TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;
    }

    public void reset(boolean z) {
        this.length = 0;
        this.absoluteStartIndex = 0;
        this.relativeStartIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        if (z) {
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    public int getWriteIndex() {
        return this.absoluteStartIndex + this.length;
    }

    public long discardUpstreamSamples(int i) {
        int writeIndex = getWriteIndex() - i;
        Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        this.length -= writeIndex;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.length));
        if (this.length == 0) {
            return 0;
        }
        int relativeIndex = getRelativeIndex(this.length - 1);
        return this.offsets[relativeIndex] + ((long) this.sizes[relativeIndex]);
    }

    public void sourceId(int i) {
        this.upstreamSourceId = i;
    }

    public int getReadIndex() {
        return this.absoluteStartIndex + this.readPosition;
    }

    public int peekSourceId() {
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public synchronized boolean hasNextSample() {
        return this.readPosition != this.length;
    }

    public synchronized Format getUpstreamFormat() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    public synchronized long getLargestQueuedTimestampUs() {
        return this.largestQueuedTimestampUs;
    }

    public synchronized void rewind() {
        this.readPosition = 0;
    }

    public synchronized int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, Format format, SampleExtrasHolder sampleExtrasHolder) {
        if (hasNextSample()) {
            int relativeIndex = getRelativeIndex(this.readPosition);
            if (z || this.formats[relativeIndex] != format) {
                formatHolder.format = this.formats[relativeIndex];
                return -5;
            } else if (decoderInputBuffer.isFlagsOnly()) {
                return -3;
            } else {
                decoderInputBuffer.timeUs = this.timesUs[relativeIndex];
                decoderInputBuffer.setFlags(this.flags[relativeIndex]);
                sampleExtrasHolder.size = this.sizes[relativeIndex];
                sampleExtrasHolder.offset = this.offsets[relativeIndex];
                sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
                this.readPosition++;
                return -4;
            }
        } else if (z2) {
            decoderInputBuffer.setFlags(4);
            return -4;
        } else if (this.upstreamFormat == null || (!z && this.upstreamFormat == format)) {
            return -3;
        } else {
            formatHolder.format = this.upstreamFormat;
            return -5;
        }
    }

    public synchronized boolean advanceTo(long j, boolean z, boolean z2) {
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (hasNextSample() && j >= this.timesUs[relativeIndex]) {
            if (j <= this.largestQueuedTimestampUs || z2) {
                int findSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j, z);
                if (findSampleBefore == -1) {
                    return false;
                }
                this.readPosition += findSampleBefore;
                return true;
            }
        }
        return false;
    }

    public synchronized void advanceToEnd() {
        if (hasNextSample()) {
            this.readPosition = this.length;
        }
    }

    public synchronized long discardTo(long j, boolean z, boolean z2) {
        if (this.length != 0) {
            if (j >= this.timesUs[this.relativeStartIndex]) {
                int findSampleBefore = findSampleBefore(this.relativeStartIndex, (!z2 || this.readPosition == this.length) ? this.length : this.readPosition + 1, j, z);
                if (findSampleBefore == -1) {
                    return -1;
                }
                return discardSamples(findSampleBefore);
            }
        }
        return -1;
    }

    public synchronized long discardToRead() {
        if (this.readPosition == 0) {
            return -1;
        }
        return discardSamples(this.readPosition);
    }

    public synchronized long discardToEnd() {
        if (this.length == 0) {
            return -1;
        }
        return discardSamples(this.length);
    }

    public synchronized boolean format(Format format) {
        if (format == null) {
            this.upstreamFormatRequired = true;
            return false;
        }
        this.upstreamFormatRequired = false;
        if (Util.areEqual(format, this.upstreamFormat)) {
            return false;
        }
        this.upstreamFormat = format;
        return true;
    }

    public synchronized void commitSample(long j, int i, long j2, int i2, TrackOutput.CryptoData cryptoData) {
        if (this.upstreamKeyframeRequired) {
            if ((i & 1) != 0) {
                this.upstreamKeyframeRequired = false;
            } else {
                return;
            }
        }
        Assertions.checkState(!this.upstreamFormatRequired);
        commitSampleTimestamp(j);
        int relativeIndex = getRelativeIndex(this.length);
        this.timesUs[relativeIndex] = j;
        this.offsets[relativeIndex] = j2;
        this.sizes[relativeIndex] = i2;
        this.flags[relativeIndex] = i;
        this.cryptoDatas[relativeIndex] = cryptoData;
        this.formats[relativeIndex] = this.upstreamFormat;
        this.sourceIds[relativeIndex] = this.upstreamSourceId;
        this.length++;
        if (this.length == this.capacity) {
            int i3 = this.capacity + 1000;
            int[] iArr = new int[i3];
            long[] jArr = new long[i3];
            long[] jArr2 = new long[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i3];
            Format[] formatArr = new Format[i3];
            int i4 = this.capacity - this.relativeStartIndex;
            System.arraycopy(this.offsets, this.relativeStartIndex, jArr, 0, i4);
            System.arraycopy(this.timesUs, this.relativeStartIndex, jArr2, 0, i4);
            System.arraycopy(this.flags, this.relativeStartIndex, iArr2, 0, i4);
            System.arraycopy(this.sizes, this.relativeStartIndex, iArr3, 0, i4);
            System.arraycopy(this.cryptoDatas, this.relativeStartIndex, cryptoDataArr, 0, i4);
            System.arraycopy(this.formats, this.relativeStartIndex, formatArr, 0, i4);
            System.arraycopy(this.sourceIds, this.relativeStartIndex, iArr, 0, i4);
            int i5 = this.relativeStartIndex;
            System.arraycopy(this.offsets, 0, jArr, i4, i5);
            System.arraycopy(this.timesUs, 0, jArr2, i4, i5);
            System.arraycopy(this.flags, 0, iArr2, i4, i5);
            System.arraycopy(this.sizes, 0, iArr3, i4, i5);
            System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i4, i5);
            System.arraycopy(this.formats, 0, formatArr, i4, i5);
            System.arraycopy(this.sourceIds, 0, iArr, i4, i5);
            this.offsets = jArr;
            this.timesUs = jArr2;
            this.flags = iArr2;
            this.sizes = iArr3;
            this.cryptoDatas = cryptoDataArr;
            this.formats = formatArr;
            this.sourceIds = iArr;
            this.relativeStartIndex = 0;
            this.length = this.capacity;
            this.capacity = i3;
        }
    }

    public synchronized void commitSampleTimestamp(long j) {
        this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j);
    }

    public synchronized boolean attemptSplice(long j) {
        boolean z = false;
        if (this.length == 0) {
            if (j > this.largestDiscardedTimestampUs) {
                z = true;
            }
            return z;
        } else if (Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition)) >= j) {
            return false;
        } else {
            int i = this.length;
            int relativeIndex = getRelativeIndex(this.length - 1);
            while (i > this.readPosition && this.timesUs[relativeIndex] >= j) {
                i--;
                relativeIndex--;
                if (relativeIndex == -1) {
                    relativeIndex = this.capacity - 1;
                }
            }
            discardUpstreamSamples(this.absoluteStartIndex + i);
            return true;
        }
    }

    private int findSampleBefore(int i, int i2, long j, boolean z) {
        int i3 = i;
        int i4 = -1;
        for (int i5 = 0; i5 < i2 && this.timesUs[i3] <= j; i5++) {
            if (!z || (this.flags[i3] & 1) != 0) {
                i4 = i5;
            }
            i3++;
            if (i3 == this.capacity) {
                i3 = 0;
            }
        }
        return i4;
    }

    private long discardSamples(int i) {
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i));
        this.length -= i;
        this.absoluteStartIndex += i;
        this.relativeStartIndex += i;
        if (this.relativeStartIndex >= this.capacity) {
            this.relativeStartIndex -= this.capacity;
        }
        this.readPosition -= i;
        if (this.readPosition < 0) {
            this.readPosition = 0;
        }
        if (this.length != 0) {
            return this.offsets[this.relativeStartIndex];
        }
        int i2 = (this.relativeStartIndex == 0 ? this.capacity : this.relativeStartIndex) - 1;
        return this.offsets[i2] + ((long) this.sizes[i2]);
    }

    private long getLargestTimestamp(int i) {
        long j = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int relativeIndex = getRelativeIndex(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            j = Math.max(j, this.timesUs[relativeIndex]);
            if ((this.flags[relativeIndex] & 1) != 0) {
                break;
            }
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return j;
    }

    private int getRelativeIndex(int i) {
        int i2 = this.relativeStartIndex + i;
        return i2 < this.capacity ? i2 : i2 - this.capacity;
    }
}
