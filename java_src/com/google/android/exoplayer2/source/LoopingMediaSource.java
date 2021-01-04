package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

public final class LoopingMediaSource implements MediaSource {
    private int childPeriodCount;
    private final MediaSource childSource;
    private final int loopCount;

    public LoopingMediaSource(MediaSource mediaSource) {
        this(mediaSource, Integer.MAX_VALUE);
    }

    public LoopingMediaSource(MediaSource mediaSource, int i) {
        Assertions.checkArgument(i > 0);
        this.childSource = mediaSource;
        this.loopCount = i;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void prepareSource(ExoPlayer exoPlayer, boolean z, final MediaSource.Listener listener) {
        this.childSource.prepareSource(exoPlayer, false, new MediaSource.Listener() {
            /* class com.google.android.exoplayer2.source.LoopingMediaSource.AnonymousClass1 */

            @Override // com.google.android.exoplayer2.source.MediaSource.Listener
            public void onSourceInfoRefreshed(Timeline timeline, Object obj) {
                LoopingMediaSource.this.childPeriodCount = timeline.getPeriodCount();
                listener.onSourceInfoRefreshed(LoopingMediaSource.this.loopCount != Integer.MAX_VALUE ? new LoopingTimeline(timeline, LoopingMediaSource.this.loopCount) : new InfinitelyLoopingTimeline(timeline), obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.childSource.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        if (this.loopCount != Integer.MAX_VALUE) {
            return this.childSource.createPeriod(new MediaSource.MediaPeriodId(mediaPeriodId.periodIndex % this.childPeriodCount), allocator);
        }
        return this.childSource.createPeriod(mediaPeriodId, allocator);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        this.childSource.releasePeriod(mediaPeriod);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releaseSource() {
        this.childSource.releaseSource();
    }

    private static final class LoopingTimeline extends AbstractConcatenatedTimeline {
        private final int childPeriodCount;
        private final Timeline childTimeline;
        private final int childWindowCount;
        private final int loopCount;

        public LoopingTimeline(Timeline timeline, int i) {
            super(i);
            this.childTimeline = timeline;
            this.childPeriodCount = timeline.getPeriodCount();
            this.childWindowCount = timeline.getWindowCount();
            this.loopCount = i;
            Assertions.checkState(i <= Integer.MAX_VALUE / this.childPeriodCount, "LoopingMediaSource contains too many periods");
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.childWindowCount * this.loopCount;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.childPeriodCount * this.loopCount;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return i / this.childPeriodCount;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return i / this.childWindowCount;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            return ((Integer) obj).intValue();
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public Timeline getTimelineByChildIndex(int i) {
            return this.childTimeline;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return i * this.childPeriodCount;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return i * this.childWindowCount;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public Object getChildUidByChildIndex(int i) {
            return Integer.valueOf(i);
        }
    }

    private static final class InfinitelyLoopingTimeline extends Timeline {
        private final Timeline childTimeline;

        public InfinitelyLoopingTimeline(Timeline timeline) {
            this.childTimeline = timeline;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.childTimeline.getWindowCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2) {
            int nextWindowIndex = this.childTimeline.getNextWindowIndex(i, i2);
            if (nextWindowIndex == -1) {
                return 0;
            }
            return nextWindowIndex;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2) {
            int previousWindowIndex = this.childTimeline.getPreviousWindowIndex(i, i2);
            return previousWindowIndex == -1 ? getWindowCount() - 1 : previousWindowIndex;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, boolean z, long j) {
            return this.childTimeline.getWindow(i, window, z, j);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.childTimeline.getPeriodCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            return this.childTimeline.getPeriod(i, period, z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return this.childTimeline.getIndexOfPeriod(obj);
        }
    }
}
