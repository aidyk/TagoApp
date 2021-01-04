package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.source.ExtractorMediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

public final class ExtractorMediaSource implements MediaSource, ExtractorMediaPeriod.Listener {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE = 6;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND = 3;
    public static final int MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA = -1;
    private final int continueLoadingCheckIntervalBytes;
    private final String customCacheKey;
    private final DataSource.Factory dataSourceFactory;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final ExtractorsFactory extractorsFactory;
    private final int minLoadableRetryCount;
    private final Timeline.Period period;
    private MediaSource.Listener sourceListener;
    private long timelineDurationUs;
    private boolean timelineIsSeekable;
    private final Uri uri;

    public interface EventListener {
        void onLoadError(IOException iOException);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
    }

    public ExtractorMediaSource(Uri uri2, DataSource.Factory factory, ExtractorsFactory extractorsFactory2, Handler handler, EventListener eventListener2) {
        this(uri2, factory, extractorsFactory2, handler, eventListener2, null);
    }

    public ExtractorMediaSource(Uri uri2, DataSource.Factory factory, ExtractorsFactory extractorsFactory2, Handler handler, EventListener eventListener2, String str) {
        this(uri2, factory, extractorsFactory2, -1, handler, eventListener2, str, 1048576);
    }

    public ExtractorMediaSource(Uri uri2, DataSource.Factory factory, ExtractorsFactory extractorsFactory2, int i, Handler handler, EventListener eventListener2, String str, int i2) {
        this.uri = uri2;
        this.dataSourceFactory = factory;
        this.extractorsFactory = extractorsFactory2;
        this.minLoadableRetryCount = i;
        this.eventHandler = handler;
        this.eventListener = eventListener2;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i2;
        this.period = new Timeline.Period();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.Listener listener) {
        this.sourceListener = listener;
        notifySourceInfoRefreshed(C.TIME_UNSET, false);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        Assertions.checkArgument(mediaPeriodId.periodIndex == 0);
        return new ExtractorMediaPeriod(this.uri, this.dataSourceFactory.createDataSource(), this.extractorsFactory.createExtractors(), this.minLoadableRetryCount, this.eventHandler, this.eventListener, this, allocator, this.customCacheKey, this.continueLoadingCheckIntervalBytes);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ExtractorMediaPeriod) mediaPeriod).release();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releaseSource() {
        this.sourceListener = null;
    }

    @Override // com.google.android.exoplayer2.source.ExtractorMediaPeriod.Listener
    public void onSourceInfoRefreshed(long j, boolean z) {
        if (j == C.TIME_UNSET) {
            j = this.timelineDurationUs;
        }
        if (this.timelineDurationUs != j || this.timelineIsSeekable != z) {
            if (this.timelineDurationUs == C.TIME_UNSET || j != C.TIME_UNSET) {
                notifySourceInfoRefreshed(j, z);
            }
        }
    }

    private void notifySourceInfoRefreshed(long j, boolean z) {
        this.timelineDurationUs = j;
        this.timelineIsSeekable = z;
        this.sourceListener.onSourceInfoRefreshed(new SinglePeriodTimeline(this.timelineDurationUs, this.timelineIsSeekable), null);
    }
}
