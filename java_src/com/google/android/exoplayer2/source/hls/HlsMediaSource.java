package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.source.AdaptiveMediaSourceEventListener;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SinglePeriodTimeline;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.List;

public final class HlsMediaSource implements MediaSource, HlsPlaylistTracker.PrimaryPlaylistListener {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private final HlsDataSourceFactory dataSourceFactory;
    private final AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher;
    private final Uri manifestUri;
    private final int minLoadableRetryCount;
    private HlsPlaylistTracker playlistTracker;
    private MediaSource.Listener sourceListener;

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.hls");
    }

    public HlsMediaSource(Uri uri, DataSource.Factory factory, Handler handler, AdaptiveMediaSourceEventListener adaptiveMediaSourceEventListener) {
        this(uri, factory, 3, handler, adaptiveMediaSourceEventListener);
    }

    public HlsMediaSource(Uri uri, DataSource.Factory factory, int i, Handler handler, AdaptiveMediaSourceEventListener adaptiveMediaSourceEventListener) {
        this(uri, new DefaultHlsDataSourceFactory(factory), i, handler, adaptiveMediaSourceEventListener);
    }

    public HlsMediaSource(Uri uri, HlsDataSourceFactory hlsDataSourceFactory, int i, Handler handler, AdaptiveMediaSourceEventListener adaptiveMediaSourceEventListener) {
        this.manifestUri = uri;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.minLoadableRetryCount = i;
        this.eventDispatcher = new AdaptiveMediaSourceEventListener.EventDispatcher(handler, adaptiveMediaSourceEventListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.Listener listener) {
        Assertions.checkState(this.playlistTracker == null);
        this.playlistTracker = new HlsPlaylistTracker(this.manifestUri, this.dataSourceFactory, this.eventDispatcher, this.minLoadableRetryCount, this);
        this.sourceListener = listener;
        this.playlistTracker.start();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.playlistTracker.maybeThrowPrimaryPlaylistRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        Assertions.checkArgument(mediaPeriodId.periodIndex == 0);
        return new HlsMediaPeriod(this.playlistTracker, this.dataSourceFactory, this.minLoadableRetryCount, this.eventDispatcher, allocator);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((HlsMediaPeriod) mediaPeriod).release();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releaseSource() {
        if (this.playlistTracker != null) {
            this.playlistTracker.release();
            this.playlistTracker = null;
        }
        this.sourceListener = null;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener
    public void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist) {
        SinglePeriodTimeline singlePeriodTimeline;
        long j;
        long j2;
        long j3 = hlsMediaPlaylist.hasProgramDateTime ? 0 : -9223372036854775807L;
        long usToMs = hlsMediaPlaylist.hasProgramDateTime ? C.usToMs(hlsMediaPlaylist.startTimeUs) : -9223372036854775807L;
        long j4 = hlsMediaPlaylist.startOffsetUs;
        if (this.playlistTracker.isLive()) {
            long j5 = hlsMediaPlaylist.hasEndTag ? hlsMediaPlaylist.durationUs + hlsMediaPlaylist.startTimeUs : -9223372036854775807L;
            List<HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
            if (j4 == C.TIME_UNSET) {
                if (list.isEmpty()) {
                    j2 = 0;
                } else {
                    j2 = list.get(Math.max(0, list.size() - 3)).relativeStartTimeUs;
                }
                j = j2;
            } else {
                j = j4;
            }
            singlePeriodTimeline = new SinglePeriodTimeline(j3, usToMs, j5, hlsMediaPlaylist.durationUs, hlsMediaPlaylist.startTimeUs, j, true, !hlsMediaPlaylist.hasEndTag);
        } else {
            singlePeriodTimeline = new SinglePeriodTimeline(j3, usToMs, hlsMediaPlaylist.startTimeUs + hlsMediaPlaylist.durationUs, hlsMediaPlaylist.durationUs, hlsMediaPlaylist.startTimeUs, j4 == C.TIME_UNSET ? 0 : j4, true, false);
        }
        this.sourceListener.onSourceInfoRefreshed(singlePeriodTimeline, new HlsManifest(this.playlistTracker.getMasterPlaylist(), hlsMediaPlaylist));
    }
}
