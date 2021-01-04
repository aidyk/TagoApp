package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.AdaptiveMediaSourceEventListener;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.google.android.exoplayer2.source.hls.HlsDataSourceFactory;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.UriUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;

public final class HlsPlaylistTracker implements Loader.Callback<ParsingLoadable<HlsPlaylist>> {
    private static final double PLAYLIST_STUCK_TARGET_DURATION_COEFFICIENT = 3.5d;
    private static final long PRIMARY_URL_KEEPALIVE_MS = 15000;
    private final HlsDataSourceFactory dataSourceFactory;
    private final AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher;
    private final Loader initialPlaylistLoader = new Loader("HlsPlaylistTracker:MasterPlaylist");
    private final Uri initialPlaylistUri;
    private boolean isLive;
    private final List<PlaylistEventListener> listeners = new ArrayList();
    private HlsMasterPlaylist masterPlaylist;
    private final int minRetryCount;
    private final IdentityHashMap<HlsMasterPlaylist.HlsUrl, MediaPlaylistBundle> playlistBundles = new IdentityHashMap<>();
    private final HlsPlaylistParser playlistParser = new HlsPlaylistParser();
    private final Handler playlistRefreshHandler = new Handler();
    private HlsMasterPlaylist.HlsUrl primaryHlsUrl;
    private final PrimaryPlaylistListener primaryPlaylistListener;
    private HlsMediaPlaylist primaryUrlSnapshot;

    public interface PlaylistEventListener {
        void onPlaylistBlacklisted(HlsMasterPlaylist.HlsUrl hlsUrl, long j);

        void onPlaylistChanged();
    }

    public interface PrimaryPlaylistListener {
        void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist);
    }

    public static final class PlaylistStuckException extends IOException {
        public final String url;

        private PlaylistStuckException(String str) {
            this.url = str;
        }
    }

    public static final class PlaylistResetException extends IOException {
        public final String url;

        private PlaylistResetException(String str) {
            this.url = str;
        }
    }

    public HlsPlaylistTracker(Uri uri, HlsDataSourceFactory hlsDataSourceFactory, AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher2, int i, PrimaryPlaylistListener primaryPlaylistListener2) {
        this.initialPlaylistUri = uri;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.eventDispatcher = eventDispatcher2;
        this.minRetryCount = i;
        this.primaryPlaylistListener = primaryPlaylistListener2;
    }

    public void addListener(PlaylistEventListener playlistEventListener) {
        this.listeners.add(playlistEventListener);
    }

    public void removeListener(PlaylistEventListener playlistEventListener) {
        this.listeners.remove(playlistEventListener);
    }

    public void start() {
        this.initialPlaylistLoader.startLoading(new ParsingLoadable(this.dataSourceFactory.createDataSource(4), this.initialPlaylistUri, 4, this.playlistParser), this, this.minRetryCount);
    }

    public HlsMasterPlaylist getMasterPlaylist() {
        return this.masterPlaylist;
    }

    public HlsMediaPlaylist getPlaylistSnapshot(HlsMasterPlaylist.HlsUrl hlsUrl) {
        HlsMediaPlaylist playlistSnapshot = this.playlistBundles.get(hlsUrl).getPlaylistSnapshot();
        if (playlistSnapshot != null) {
            maybeSetPrimaryUrl(hlsUrl);
        }
        return playlistSnapshot;
    }

    public boolean isSnapshotValid(HlsMasterPlaylist.HlsUrl hlsUrl) {
        return this.playlistBundles.get(hlsUrl).isSnapshotValid();
    }

    public void release() {
        this.initialPlaylistLoader.release();
        for (MediaPlaylistBundle mediaPlaylistBundle : this.playlistBundles.values()) {
            mediaPlaylistBundle.release();
        }
        this.playlistRefreshHandler.removeCallbacksAndMessages(null);
        this.playlistBundles.clear();
    }

    public void maybeThrowPrimaryPlaylistRefreshError() throws IOException {
        this.initialPlaylistLoader.maybeThrowError();
        if (this.primaryHlsUrl != null) {
            maybeThrowPlaylistRefreshError(this.primaryHlsUrl);
        }
    }

    public void maybeThrowPlaylistRefreshError(HlsMasterPlaylist.HlsUrl hlsUrl) throws IOException {
        this.playlistBundles.get(hlsUrl).maybeThrowPlaylistRefreshError();
    }

    public void refreshPlaylist(HlsMasterPlaylist.HlsUrl hlsUrl) {
        this.playlistBundles.get(hlsUrl).loadPlaylist();
    }

    public boolean isLive() {
        return this.isLive;
    }

    public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
        HlsMasterPlaylist hlsMasterPlaylist;
        HlsPlaylist result = parsingLoadable.getResult();
        boolean z = result instanceof HlsMediaPlaylist;
        if (z) {
            hlsMasterPlaylist = HlsMasterPlaylist.createSingleVariantMasterPlaylist(result.baseUri);
        } else {
            hlsMasterPlaylist = (HlsMasterPlaylist) result;
        }
        this.masterPlaylist = hlsMasterPlaylist;
        this.primaryHlsUrl = hlsMasterPlaylist.variants.get(0);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(hlsMasterPlaylist.variants);
        arrayList.addAll(hlsMasterPlaylist.audios);
        arrayList.addAll(hlsMasterPlaylist.subtitles);
        createBundles(arrayList);
        MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(this.primaryHlsUrl);
        if (z) {
            mediaPlaylistBundle.processLoadedPlaylist((HlsMediaPlaylist) result);
        } else {
            mediaPlaylistBundle.loadPlaylist();
        }
        this.eventDispatcher.loadCompleted(parsingLoadable.dataSpec, 4, j, j2, parsingLoadable.bytesLoaded());
    }

    public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
        this.eventDispatcher.loadCanceled(parsingLoadable.dataSpec, 4, j, j2, parsingLoadable.bytesLoaded());
    }

    public int onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException) {
        boolean z = iOException instanceof ParserException;
        this.eventDispatcher.loadError(parsingLoadable.dataSpec, 4, j, j2, parsingLoadable.bytesLoaded(), iOException, z);
        return z ? 3 : 0;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean maybeSelectNewPrimaryUrl() {
        List<HlsMasterPlaylist.HlsUrl> list = this.masterPlaylist.variants;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(list.get(i));
            if (elapsedRealtime > mediaPlaylistBundle.blacklistUntilMs) {
                this.primaryHlsUrl = mediaPlaylistBundle.playlistUrl;
                mediaPlaylistBundle.loadPlaylist();
                return true;
            }
        }
        return false;
    }

    private void maybeSetPrimaryUrl(HlsMasterPlaylist.HlsUrl hlsUrl) {
        if (!this.masterPlaylist.variants.contains(hlsUrl)) {
            return;
        }
        if ((this.primaryUrlSnapshot == null || !this.primaryUrlSnapshot.hasEndTag) && this.playlistBundles.get(this.primaryHlsUrl).lastSnapshotAccessTimeMs - SystemClock.elapsedRealtime() > 15000) {
            this.primaryHlsUrl = hlsUrl;
            this.playlistBundles.get(this.primaryHlsUrl).loadPlaylist();
        }
    }

    private void createBundles(List<HlsMasterPlaylist.HlsUrl> list) {
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            HlsMasterPlaylist.HlsUrl hlsUrl = list.get(i);
            this.playlistBundles.put(hlsUrl, new MediaPlaylistBundle(hlsUrl, elapsedRealtime));
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean onPlaylistUpdated(HlsMasterPlaylist.HlsUrl hlsUrl, HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsUrl == this.primaryHlsUrl) {
            if (this.primaryUrlSnapshot == null) {
                this.isLive = !hlsMediaPlaylist.hasEndTag;
            }
            this.primaryUrlSnapshot = hlsMediaPlaylist;
            this.primaryPlaylistListener.onPrimaryPlaylistRefreshed(hlsMediaPlaylist);
        }
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).onPlaylistChanged();
        }
        if (hlsUrl != this.primaryHlsUrl || hlsMediaPlaylist.hasEndTag) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void notifyPlaylistBlacklisting(HlsMasterPlaylist.HlsUrl hlsUrl, long j) {
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).onPlaylistBlacklisted(hlsUrl, j);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private HlsMediaPlaylist getLatestPlaylistSnapshot(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (!hlsMediaPlaylist2.isNewerThan(hlsMediaPlaylist)) {
            return hlsMediaPlaylist2.hasEndTag ? hlsMediaPlaylist.copyWithEndTag() : hlsMediaPlaylist;
        }
        return hlsMediaPlaylist2.copyWith(getLoadedPlaylistStartTimeUs(hlsMediaPlaylist, hlsMediaPlaylist2), getLoadedPlaylistDiscontinuitySequence(hlsMediaPlaylist, hlsMediaPlaylist2));
    }

    private long getLoadedPlaylistStartTimeUs(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasProgramDateTime) {
            return hlsMediaPlaylist2.startTimeUs;
        }
        long j = this.primaryUrlSnapshot != null ? this.primaryUrlSnapshot.startTimeUs : 0;
        if (hlsMediaPlaylist == null) {
            return j;
        }
        int size = hlsMediaPlaylist.segments.size();
        HlsMediaPlaylist.Segment firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2);
        if (firstOldOverlappingSegment != null) {
            return hlsMediaPlaylist.startTimeUs + firstOldOverlappingSegment.relativeStartTimeUs;
        }
        return size == hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence ? hlsMediaPlaylist.getEndTimeUs() : j;
    }

    private int getLoadedPlaylistDiscontinuitySequence(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        HlsMediaPlaylist.Segment firstOldOverlappingSegment;
        if (hlsMediaPlaylist2.hasDiscontinuitySequence) {
            return hlsMediaPlaylist2.discontinuitySequence;
        }
        int i = this.primaryUrlSnapshot != null ? this.primaryUrlSnapshot.discontinuitySequence : 0;
        return (hlsMediaPlaylist == null || (firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2)) == null) ? i : (hlsMediaPlaylist.discontinuitySequence + firstOldOverlappingSegment.relativeDiscontinuitySequence) - hlsMediaPlaylist2.segments.get(0).relativeDiscontinuitySequence;
    }

    private static HlsMediaPlaylist.Segment getFirstOldOverlappingSegment(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        int i = hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence;
        List<HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    /* access modifiers changed from: private */
    public final class MediaPlaylistBundle implements Loader.Callback<ParsingLoadable<HlsPlaylist>>, Runnable {
        private long blacklistUntilMs;
        private long lastSnapshotAccessTimeMs;
        private long lastSnapshotChangeMs;
        private long lastSnapshotLoadMs;
        private final ParsingLoadable<HlsPlaylist> mediaPlaylistLoadable;
        private final Loader mediaPlaylistLoader = new Loader("HlsPlaylistTracker:MediaPlaylist");
        private boolean pendingRefresh;
        private IOException playlistError;
        private HlsMediaPlaylist playlistSnapshot;
        private final HlsMasterPlaylist.HlsUrl playlistUrl;

        public MediaPlaylistBundle(HlsMasterPlaylist.HlsUrl hlsUrl, long j) {
            this.playlistUrl = hlsUrl;
            this.lastSnapshotAccessTimeMs = j;
            this.mediaPlaylistLoadable = new ParsingLoadable<>(HlsPlaylistTracker.this.dataSourceFactory.createDataSource(4), UriUtil.resolveToUri(HlsPlaylistTracker.this.masterPlaylist.baseUri, hlsUrl.url), 4, HlsPlaylistTracker.this.playlistParser);
        }

        public HlsMediaPlaylist getPlaylistSnapshot() {
            this.lastSnapshotAccessTimeMs = SystemClock.elapsedRealtime();
            return this.playlistSnapshot;
        }

        public boolean isSnapshotValid() {
            if (this.playlistSnapshot == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000L, C.usToMs(this.playlistSnapshot.durationUs));
            if (this.playlistSnapshot.hasEndTag || this.playlistSnapshot.playlistType == 2 || this.playlistSnapshot.playlistType == 1 || this.lastSnapshotLoadMs + max > elapsedRealtime) {
                return true;
            }
            return false;
        }

        public void release() {
            this.mediaPlaylistLoader.release();
        }

        public void loadPlaylist() {
            this.blacklistUntilMs = 0;
            if (!this.pendingRefresh && !this.mediaPlaylistLoader.isLoading()) {
                this.mediaPlaylistLoader.startLoading(this.mediaPlaylistLoadable, this, HlsPlaylistTracker.this.minRetryCount);
            }
        }

        public void maybeThrowPlaylistRefreshError() throws IOException {
            this.mediaPlaylistLoader.maybeThrowError();
            if (this.playlistError != null) {
                throw this.playlistError;
            }
        }

        public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
            HlsPlaylist result = parsingLoadable.getResult();
            if (result instanceof HlsMediaPlaylist) {
                processLoadedPlaylist((HlsMediaPlaylist) result);
                HlsPlaylistTracker.this.eventDispatcher.loadCompleted(parsingLoadable.dataSpec, 4, j, j2, parsingLoadable.bytesLoaded());
                return;
            }
            this.playlistError = new ParserException("Loaded playlist has unexpected type.");
        }

        public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
            HlsPlaylistTracker.this.eventDispatcher.loadCanceled(parsingLoadable.dataSpec, 4, j, j2, parsingLoadable.bytesLoaded());
        }

        public int onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException) {
            boolean z = iOException instanceof ParserException;
            HlsPlaylistTracker.this.eventDispatcher.loadError(parsingLoadable.dataSpec, 4, j, j2, parsingLoadable.bytesLoaded(), iOException, z);
            if (z) {
                return 3;
            }
            boolean z2 = true;
            if (ChunkedTrackBlacklistUtil.shouldBlacklist(iOException)) {
                blacklistPlaylist();
                if (HlsPlaylistTracker.this.primaryHlsUrl != this.playlistUrl || HlsPlaylistTracker.this.maybeSelectNewPrimaryUrl()) {
                    z2 = false;
                }
            }
            if (z2) {
                return 0;
            }
            return 2;
        }

        public void run() {
            this.pendingRefresh = false;
            loadPlaylist();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0083  */
        /* JADX WARNING: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void processLoadedPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist r10) {
            /*
            // Method dump skipped, instructions count: 148
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.MediaPlaylistBundle.processLoadedPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist):void");
        }

        private void blacklistPlaylist() {
            this.blacklistUntilMs = SystemClock.elapsedRealtime() + 60000;
            HlsPlaylistTracker.this.notifyPlaylistBlacklisting(this.playlistUrl, 60000);
        }
    }
}
