package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.Util;
import java.util.List;

public abstract class SegmentBase {
    final RangedUri initialization;
    final long presentationTimeOffset;
    final long timescale;

    public SegmentBase(RangedUri rangedUri, long j, long j2) {
        this.initialization = rangedUri;
        this.timescale = j;
        this.presentationTimeOffset = j2;
    }

    public RangedUri getInitialization(Representation representation) {
        return this.initialization;
    }

    public long getPresentationTimeOffsetUs() {
        return Util.scaleLargeTimestamp(this.presentationTimeOffset, C.MICROS_PER_SECOND, this.timescale);
    }

    public static class SingleSegmentBase extends SegmentBase {
        final long indexLength;
        final long indexStart;

        public SingleSegmentBase(RangedUri rangedUri, long j, long j2, long j3, long j4) {
            super(rangedUri, j, j2);
            this.indexStart = j3;
            this.indexLength = j4;
        }

        public SingleSegmentBase() {
            this(null, 1, 0, 0, 0);
        }

        public RangedUri getIndex() {
            if (this.indexLength <= 0) {
                return null;
            }
            return new RangedUri(null, this.indexStart, this.indexLength);
        }
    }

    public static abstract class MultiSegmentBase extends SegmentBase {
        final long duration;
        final List<SegmentTimelineElement> segmentTimeline;
        final int startNumber;

        public abstract int getSegmentCount(long j);

        public abstract RangedUri getSegmentUrl(Representation representation, int i);

        public MultiSegmentBase(RangedUri rangedUri, long j, long j2, int i, long j3, List<SegmentTimelineElement> list) {
            super(rangedUri, j, j2);
            this.startNumber = i;
            this.duration = j3;
            this.segmentTimeline = list;
        }

        public int getSegmentNum(long j, long j2) {
            int firstSegmentNum = getFirstSegmentNum();
            int segmentCount = getSegmentCount(j2);
            if (segmentCount == 0) {
                return firstSegmentNum;
            }
            if (this.segmentTimeline == null) {
                int i = ((int) (j / ((this.duration * C.MICROS_PER_SECOND) / this.timescale))) + this.startNumber;
                if (i < firstSegmentNum) {
                    return firstSegmentNum;
                }
                return segmentCount == -1 ? i : Math.min(i, (firstSegmentNum + segmentCount) - 1);
            }
            int i2 = (segmentCount + firstSegmentNum) - 1;
            int i3 = firstSegmentNum;
            while (i3 <= i2) {
                int i4 = ((i2 - i3) / 2) + i3;
                long segmentTimeUs = getSegmentTimeUs(i4);
                if (segmentTimeUs < j) {
                    i3 = i4 + 1;
                } else if (segmentTimeUs <= j) {
                    return i4;
                } else {
                    i2 = i4 - 1;
                }
            }
            return i3 == firstSegmentNum ? i3 : i2;
        }

        public final long getSegmentDurationUs(int i, long j) {
            if (this.segmentTimeline != null) {
                return (this.segmentTimeline.get(i - this.startNumber).duration * C.MICROS_PER_SECOND) / this.timescale;
            }
            int segmentCount = getSegmentCount(j);
            return (segmentCount == -1 || i != (getFirstSegmentNum() + segmentCount) + -1) ? (this.duration * C.MICROS_PER_SECOND) / this.timescale : j - getSegmentTimeUs(i);
        }

        public final long getSegmentTimeUs(int i) {
            long j;
            if (this.segmentTimeline != null) {
                j = this.segmentTimeline.get(i - this.startNumber).startTime - this.presentationTimeOffset;
            } else {
                j = ((long) (i - this.startNumber)) * this.duration;
            }
            return Util.scaleLargeTimestamp(j, C.MICROS_PER_SECOND, this.timescale);
        }

        public int getFirstSegmentNum() {
            return this.startNumber;
        }

        public boolean isExplicit() {
            return this.segmentTimeline != null;
        }
    }

    public static class SegmentList extends MultiSegmentBase {
        final List<RangedUri> mediaSegments;

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public boolean isExplicit() {
            return true;
        }

        public SegmentList(RangedUri rangedUri, long j, long j2, int i, long j3, List<SegmentTimelineElement> list, List<RangedUri> list2) {
            super(rangedUri, j, j2, i, j3, list);
            this.mediaSegments = list2;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, int i) {
            return this.mediaSegments.get(i - this.startNumber);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public int getSegmentCount(long j) {
            return this.mediaSegments.size();
        }
    }

    public static class SegmentTemplate extends MultiSegmentBase {
        final UrlTemplate initializationTemplate;
        final UrlTemplate mediaTemplate;

        public SegmentTemplate(RangedUri rangedUri, long j, long j2, int i, long j3, List<SegmentTimelineElement> list, UrlTemplate urlTemplate, UrlTemplate urlTemplate2) {
            super(rangedUri, j, j2, i, j3, list);
            this.initializationTemplate = urlTemplate;
            this.mediaTemplate = urlTemplate2;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase
        public RangedUri getInitialization(Representation representation) {
            if (this.initializationTemplate != null) {
                return new RangedUri(this.initializationTemplate.buildUri(representation.format.id, 0, representation.format.bitrate, 0), 0, -1);
            }
            return super.getInitialization(representation);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, int i) {
            long j;
            if (this.segmentTimeline != null) {
                j = ((SegmentTimelineElement) this.segmentTimeline.get(i - this.startNumber)).startTime;
            } else {
                j = ((long) (i - this.startNumber)) * this.duration;
            }
            return new RangedUri(this.mediaTemplate.buildUri(representation.format.id, i, representation.format.bitrate, j), 0, -1);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public int getSegmentCount(long j) {
            if (this.segmentTimeline != null) {
                return this.segmentTimeline.size();
            }
            if (j != C.TIME_UNSET) {
                return (int) Util.ceilDivide(j, (this.duration * C.MICROS_PER_SECOND) / this.timescale);
            }
            return -1;
        }
    }

    public static class SegmentTimelineElement {
        final long duration;
        final long startTime;

        public SegmentTimelineElement(long j, long j2) {
            this.startTime = j;
            this.duration = j2;
        }
    }
}
