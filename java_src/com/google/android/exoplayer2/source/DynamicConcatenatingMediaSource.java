package com.google.android.exoplayer2.source;

import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

public final class DynamicConcatenatingMediaSource implements MediaSource, ExoPlayer.ExoPlayerComponent {
    private static final int MSG_ADD = 0;
    private static final int MSG_ADD_MULTIPLE = 1;
    private static final int MSG_MOVE = 3;
    private static final int MSG_REMOVE = 2;
    private final List<DeferredMediaPeriod> deferredMediaPeriods = new ArrayList(1);
    private MediaSource.Listener listener;
    private final Map<MediaPeriod, MediaSource> mediaSourceByMediaPeriod = new IdentityHashMap();
    private final List<MediaSourceHolder> mediaSourceHolders = new ArrayList();
    private final List<MediaSource> mediaSourcesPublic = new ArrayList();
    private int periodCount;
    private ExoPlayer player;
    private boolean preventListenerNotification;
    private final MediaSourceHolder query = new MediaSourceHolder(null, null, -1, -1, -1);
    private int windowCount;

    public synchronized void addMediaSource(MediaSource mediaSource) {
        addMediaSource(this.mediaSourcesPublic.size(), mediaSource);
    }

    public synchronized void addMediaSource(int i, MediaSource mediaSource) {
        Assertions.checkNotNull(mediaSource);
        Assertions.checkArgument(!this.mediaSourcesPublic.contains(mediaSource));
        this.mediaSourcesPublic.add(i, mediaSource);
        if (this.player != null) {
            this.player.sendMessages(new ExoPlayer.ExoPlayerMessage(this, 0, Pair.create(Integer.valueOf(i), mediaSource)));
        }
    }

    public synchronized void addMediaSources(Collection<MediaSource> collection) {
        addMediaSources(this.mediaSourcesPublic.size(), collection);
    }

    public synchronized void addMediaSources(int i, Collection<MediaSource> collection) {
        for (MediaSource mediaSource : collection) {
            Assertions.checkNotNull(mediaSource);
            Assertions.checkArgument(!this.mediaSourcesPublic.contains(mediaSource));
        }
        this.mediaSourcesPublic.addAll(i, collection);
        if (this.player != null && !collection.isEmpty()) {
            this.player.sendMessages(new ExoPlayer.ExoPlayerMessage(this, 1, Pair.create(Integer.valueOf(i), collection)));
        }
    }

    public synchronized void removeMediaSource(int i) {
        this.mediaSourcesPublic.remove(i);
        if (this.player != null) {
            this.player.sendMessages(new ExoPlayer.ExoPlayerMessage(this, 2, Integer.valueOf(i)));
        }
    }

    public synchronized void moveMediaSource(int i, int i2) {
        if (i != i2) {
            this.mediaSourcesPublic.add(i2, this.mediaSourcesPublic.remove(i));
            if (this.player != null) {
                this.player.sendMessages(new ExoPlayer.ExoPlayerMessage(this, 3, Pair.create(Integer.valueOf(i), Integer.valueOf(i2))));
            }
        }
    }

    public synchronized int getSize() {
        return this.mediaSourcesPublic.size();
    }

    public synchronized MediaSource getMediaSource(int i) {
        return this.mediaSourcesPublic.get(i);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public synchronized void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.Listener listener2) {
        this.player = exoPlayer;
        this.listener = listener2;
        this.preventListenerNotification = true;
        addMediaSourcesInternal(0, this.mediaSourcesPublic);
        this.preventListenerNotification = false;
        maybeNotifyListener();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        for (MediaSourceHolder mediaSourceHolder : this.mediaSourceHolders) {
            mediaSourceHolder.mediaSource.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        MediaPeriod mediaPeriod;
        MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(findMediaSourceHolderByPeriodIndex(mediaPeriodId.periodIndex));
        MediaSource.MediaPeriodId mediaPeriodId2 = new MediaSource.MediaPeriodId(mediaPeriodId.periodIndex - mediaSourceHolder.firstPeriodIndexInChild);
        if (!mediaSourceHolder.isPrepared) {
            mediaPeriod = new DeferredMediaPeriod(mediaSourceHolder.mediaSource, mediaPeriodId2, allocator);
            this.deferredMediaPeriods.add((DeferredMediaPeriod) mediaPeriod);
        } else {
            mediaPeriod = mediaSourceHolder.mediaSource.createPeriod(mediaPeriodId2, allocator);
        }
        this.mediaSourceByMediaPeriod.put(mediaPeriod, mediaSourceHolder.mediaSource);
        return mediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        MediaSource mediaSource = this.mediaSourceByMediaPeriod.get(mediaPeriod);
        this.mediaSourceByMediaPeriod.remove(mediaPeriod);
        if (mediaPeriod instanceof DeferredMediaPeriod) {
            this.deferredMediaPeriods.remove(mediaPeriod);
            ((DeferredMediaPeriod) mediaPeriod).releasePeriod();
            return;
        }
        mediaSource.releasePeriod(mediaPeriod);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releaseSource() {
        for (MediaSourceHolder mediaSourceHolder : this.mediaSourceHolders) {
            mediaSourceHolder.mediaSource.releaseSource();
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        this.preventListenerNotification = true;
        switch (i) {
            case 0:
                Pair pair = (Pair) obj;
                addMediaSourceInternal(((Integer) pair.first).intValue(), (MediaSource) pair.second);
                break;
            case 1:
                Pair pair2 = (Pair) obj;
                addMediaSourcesInternal(((Integer) pair2.first).intValue(), (Collection) pair2.second);
                break;
            case 2:
                removeMediaSourceInternal(((Integer) obj).intValue());
                break;
            case 3:
                Pair pair3 = (Pair) obj;
                moveMediaSourceInternal(((Integer) pair3.first).intValue(), ((Integer) pair3.second).intValue());
                break;
            default:
                throw new IllegalStateException();
        }
        this.preventListenerNotification = false;
        maybeNotifyListener();
    }

    private void maybeNotifyListener() {
        if (!this.preventListenerNotification) {
            this.listener.onSourceInfoRefreshed(new ConcatenatedTimeline(this.mediaSourceHolders, this.windowCount, this.periodCount), null);
        }
    }

    private void addMediaSourceInternal(int i, MediaSource mediaSource) {
        final MediaSourceHolder mediaSourceHolder;
        Integer valueOf = Integer.valueOf(System.identityHashCode(mediaSource));
        DeferredTimeline deferredTimeline = new DeferredTimeline();
        if (i > 0) {
            MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i - 1);
            mediaSourceHolder = new MediaSourceHolder(mediaSource, deferredTimeline, mediaSourceHolder2.firstWindowIndexInChild + mediaSourceHolder2.timeline.getWindowCount(), mediaSourceHolder2.firstPeriodIndexInChild + mediaSourceHolder2.timeline.getPeriodCount(), valueOf);
        } else {
            mediaSourceHolder = new MediaSourceHolder(mediaSource, deferredTimeline, 0, 0, valueOf);
        }
        correctOffsets(i, deferredTimeline.getWindowCount(), deferredTimeline.getPeriodCount());
        this.mediaSourceHolders.add(i, mediaSourceHolder);
        mediaSourceHolder.mediaSource.prepareSource(this.player, false, new MediaSource.Listener() {
            /* class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.AnonymousClass1 */

            @Override // com.google.android.exoplayer2.source.MediaSource.Listener
            public void onSourceInfoRefreshed(Timeline timeline, Object obj) {
                DynamicConcatenatingMediaSource.this.updateMediaSourceInternal(mediaSourceHolder, timeline);
            }
        });
    }

    private void addMediaSourcesInternal(int i, Collection<MediaSource> collection) {
        for (MediaSource mediaSource : collection) {
            addMediaSourceInternal(i, mediaSource);
            i++;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void updateMediaSourceInternal(MediaSourceHolder mediaSourceHolder, Timeline timeline) {
        if (mediaSourceHolder != null) {
            DeferredTimeline deferredTimeline = mediaSourceHolder.timeline;
            if (deferredTimeline.getTimeline() != timeline) {
                int windowCount2 = timeline.getWindowCount() - deferredTimeline.getWindowCount();
                int periodCount2 = timeline.getPeriodCount() - deferredTimeline.getPeriodCount();
                if (!(windowCount2 == 0 && periodCount2 == 0)) {
                    correctOffsets(findMediaSourceHolderByPeriodIndex(mediaSourceHolder.firstPeriodIndexInChild) + 1, windowCount2, periodCount2);
                }
                mediaSourceHolder.timeline = deferredTimeline.cloneWithNewTimeline(timeline);
                if (!mediaSourceHolder.isPrepared) {
                    for (int size = this.deferredMediaPeriods.size() - 1; size >= 0; size--) {
                        if (this.deferredMediaPeriods.get(size).mediaSource == mediaSourceHolder.mediaSource) {
                            this.deferredMediaPeriods.get(size).createPeriod();
                            this.deferredMediaPeriods.remove(size);
                        }
                    }
                }
                mediaSourceHolder.isPrepared = true;
                maybeNotifyListener();
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    private void removeMediaSourceInternal(int i) {
        MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i);
        this.mediaSourceHolders.remove(i);
        DeferredTimeline deferredTimeline = mediaSourceHolder.timeline;
        correctOffsets(i, -deferredTimeline.getWindowCount(), -deferredTimeline.getPeriodCount());
        mediaSourceHolder.mediaSource.releaseSource();
    }

    private void moveMediaSourceInternal(int i, int i2) {
        int min = Math.min(i, i2);
        int max = Math.max(i, i2);
        int i3 = this.mediaSourceHolders.get(min).firstWindowIndexInChild;
        int i4 = this.mediaSourceHolders.get(min).firstPeriodIndexInChild;
        this.mediaSourceHolders.add(i2, this.mediaSourceHolders.remove(i));
        while (min <= max) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(min);
            mediaSourceHolder.firstWindowIndexInChild = i3;
            mediaSourceHolder.firstPeriodIndexInChild = i4;
            i3 += mediaSourceHolder.timeline.getWindowCount();
            i4 += mediaSourceHolder.timeline.getPeriodCount();
            min++;
        }
    }

    private void correctOffsets(int i, int i2, int i3) {
        this.windowCount += i2;
        this.periodCount += i3;
        while (i < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i).firstWindowIndexInChild += i2;
            this.mediaSourceHolders.get(i).firstPeriodIndexInChild += i3;
            i++;
        }
    }

    private int findMediaSourceHolderByPeriodIndex(int i) {
        this.query.firstPeriodIndexInChild = i;
        int binarySearch = Collections.binarySearch(this.mediaSourceHolders, this.query);
        return binarySearch >= 0 ? binarySearch : (-binarySearch) - 2;
    }

    /* access modifiers changed from: private */
    public static final class MediaSourceHolder implements Comparable<MediaSourceHolder> {
        public int firstPeriodIndexInChild;
        public int firstWindowIndexInChild;
        public boolean isPrepared;
        public final MediaSource mediaSource;
        public DeferredTimeline timeline;
        public final Object uid;

        public MediaSourceHolder(MediaSource mediaSource2, DeferredTimeline deferredTimeline, int i, int i2, Object obj) {
            this.mediaSource = mediaSource2;
            this.timeline = deferredTimeline;
            this.firstWindowIndexInChild = i;
            this.firstPeriodIndexInChild = i2;
            this.uid = obj;
        }

        public int compareTo(MediaSourceHolder mediaSourceHolder) {
            return this.firstPeriodIndexInChild - mediaSourceHolder.firstPeriodIndexInChild;
        }
    }

    /* access modifiers changed from: private */
    public static final class ConcatenatedTimeline extends AbstractConcatenatedTimeline {
        private final SparseIntArray childIndexByUid = new SparseIntArray();
        private final int[] firstPeriodInChildIndices;
        private final int[] firstWindowInChildIndices;
        private final int periodCount;
        private final Timeline[] timelines;
        private final int[] uids;
        private final int windowCount;

        public ConcatenatedTimeline(Collection<MediaSourceHolder> collection, int i, int i2) {
            super(collection.size());
            this.windowCount = i;
            this.periodCount = i2;
            int size = collection.size();
            this.firstPeriodInChildIndices = new int[size];
            this.firstWindowInChildIndices = new int[size];
            this.timelines = new Timeline[size];
            this.uids = new int[size];
            int i3 = 0;
            for (MediaSourceHolder mediaSourceHolder : collection) {
                this.timelines[i3] = mediaSourceHolder.timeline;
                this.firstPeriodInChildIndices[i3] = mediaSourceHolder.firstPeriodIndexInChild;
                this.firstWindowInChildIndices[i3] = mediaSourceHolder.firstWindowIndexInChild;
                this.uids[i3] = ((Integer) mediaSourceHolder.uid).intValue();
                this.childIndexByUid.put(this.uids[i3], i3);
                i3++;
            }
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return Util.binarySearchFloor(this.firstPeriodInChildIndices, i, true, false);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return Util.binarySearchFloor(this.firstWindowInChildIndices, i, true, false);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(Object obj) {
            int i;
            if ((obj instanceof Integer) && (i = this.childIndexByUid.get(((Integer) obj).intValue(), -1)) != -1) {
                return i;
            }
            return -1;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public Timeline getTimelineByChildIndex(int i) {
            return this.timelines[i];
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return this.firstPeriodInChildIndices[i];
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return this.firstWindowInChildIndices[i];
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.AbstractConcatenatedTimeline
        public Object getChildUidByChildIndex(int i) {
            return Integer.valueOf(this.uids[i]);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.windowCount;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.periodCount;
        }
    }

    /* access modifiers changed from: private */
    public static final class DeferredTimeline extends Timeline {
        private static final Object DUMMY_ID = new Object();
        private static final Timeline.Period period = new Timeline.Period();
        private final Object replacedID;
        private final Timeline timeline;

        public DeferredTimeline() {
            this.timeline = null;
            this.replacedID = null;
        }

        private DeferredTimeline(Timeline timeline2, Object obj) {
            this.timeline = timeline2;
            this.replacedID = obj;
        }

        public DeferredTimeline cloneWithNewTimeline(Timeline timeline2) {
            return new DeferredTimeline(timeline2, (this.replacedID != null || timeline2.getPeriodCount() <= 0) ? this.replacedID : timeline2.getPeriod(0, period, true).uid);
        }

        public Timeline getTimeline() {
            return this.timeline;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            if (this.timeline == null) {
                return 1;
            }
            return this.timeline.getWindowCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, boolean z, long j) {
            if (this.timeline != null) {
                return this.timeline.getWindow(i, window, z, j);
            }
            return window.set(z ? DUMMY_ID : null, C.TIME_UNSET, C.TIME_UNSET, false, true, 0, C.TIME_UNSET, 0, 0, 0);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            if (this.timeline == null) {
                return 1;
            }
            return this.timeline.getPeriodCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period2, boolean z) {
            if (this.timeline == null) {
                Object obj = null;
                Object obj2 = z ? DUMMY_ID : null;
                if (z) {
                    obj = DUMMY_ID;
                }
                return period2.set(obj2, obj, 0, C.TIME_UNSET, C.TIME_UNSET);
            }
            this.timeline.getPeriod(i, period2, z);
            if (period2.uid == this.replacedID) {
                period2.uid = DUMMY_ID;
            }
            return period2;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            if (this.timeline == null) {
                return obj == DUMMY_ID ? 0 : -1;
            }
            Timeline timeline2 = this.timeline;
            if (obj == DUMMY_ID) {
                obj = this.replacedID;
            }
            return timeline2.getIndexOfPeriod(obj);
        }
    }

    /* access modifiers changed from: private */
    public static final class DeferredMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
        private final Allocator allocator;
        private MediaPeriod.Callback callback;
        private final MediaSource.MediaPeriodId id;
        private MediaPeriod mediaPeriod;
        public final MediaSource mediaSource;
        private long preparePositionUs;

        public DeferredMediaPeriod(MediaSource mediaSource2, MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator2) {
            this.id = mediaPeriodId;
            this.allocator = allocator2;
            this.mediaSource = mediaSource2;
        }

        public void createPeriod() {
            this.mediaPeriod = this.mediaSource.createPeriod(this.id, this.allocator);
            if (this.callback != null) {
                this.mediaPeriod.prepare(this, this.preparePositionUs);
            }
        }

        public void releasePeriod() {
            if (this.mediaPeriod != null) {
                this.mediaSource.releasePeriod(this.mediaPeriod);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback2, long j) {
            this.callback = callback2;
            this.preparePositionUs = j;
            if (this.mediaPeriod != null) {
                this.mediaPeriod.prepare(this, j);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            if (this.mediaPeriod != null) {
                this.mediaPeriod.maybeThrowPrepareError();
            } else {
                this.mediaSource.maybeThrowSourceInfoRefreshError();
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return this.mediaPeriod.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            return this.mediaPeriod.selectTracks(trackSelectionArr, zArr, sampleStreamArr, zArr2, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j) {
            this.mediaPeriod.discardBuffer(j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            return this.mediaPeriod.readDiscontinuity();
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
        public long getBufferedPositionUs() {
            return this.mediaPeriod.getBufferedPositionUs();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            return this.mediaPeriod.seekToUs(j);
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
        public long getNextLoadPositionUs() {
            return this.mediaPeriod.getNextLoadPositionUs();
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
        public boolean continueLoading(long j) {
            return this.mediaPeriod != null && this.mediaPeriod.continueLoading(j);
        }

        public void onContinueLoadingRequested(MediaPeriod mediaPeriod2) {
            this.callback.onContinueLoadingRequested(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod2) {
            this.callback.onPrepared(this);
        }
    }
}
