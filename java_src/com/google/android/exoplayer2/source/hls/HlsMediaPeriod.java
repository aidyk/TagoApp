package com.google.android.exoplayer2.source.hls;

import android.os.Handler;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.AdaptiveMediaSourceEventListener;
import com.google.android.exoplayer2.source.CompositeSequenceableLoader;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;

public final class HlsMediaPeriod implements MediaPeriod, HlsSampleStreamWrapper.Callback, HlsPlaylistTracker.PlaylistEventListener {
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final Handler continueLoadingHandler = new Handler();
    private final HlsDataSourceFactory dataSourceFactory;
    private HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private final AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher;
    private final int minLoadableRetryCount;
    private int pendingPrepareCount;
    private final HlsPlaylistTracker playlistTracker;
    private HlsSampleStreamWrapper[] sampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private CompositeSequenceableLoader sequenceableLoader;
    private final IdentityHashMap<SampleStream, Integer> streamWrapperIndices = new IdentityHashMap<>();
    private final TimestampAdjusterProvider timestampAdjusterProvider = new TimestampAdjusterProvider();
    private TrackGroupArray trackGroups;

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    public HlsMediaPeriod(HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, int i, AdaptiveMediaSourceEventListener.EventDispatcher eventDispatcher2, Allocator allocator2) {
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.minLoadableRetryCount = i;
        this.eventDispatcher = eventDispatcher2;
        this.allocator = allocator2;
    }

    public void release() {
        this.playlistTracker.removeListener(this);
        this.continueLoadingHandler.removeCallbacksAndMessages(null);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback2, long j) {
        this.callback = callback2;
        this.playlistTracker.addListener(this);
        buildAndPrepareSampleStreamWrappers(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00ee, code lost:
        if (r11 != r20.enabledSampleStreamWrappers[0]) goto L_0x00f2;
     */
    @Override // com.google.android.exoplayer2.source.MediaPeriod
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[] r21, boolean[] r22, com.google.android.exoplayer2.source.SampleStream[] r23, boolean[] r24, long r25) {
        /*
        // Method dump skipped, instructions count: 301
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaPeriod.selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long):long");
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j);
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public boolean continueLoading(long j) {
        return this.sequenceableLoader.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getNextLoadPositionUs() {
        return this.sequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.source.MediaPeriod
    public long getBufferedPositionUs() {
        return this.sequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        if (this.enabledSampleStreamWrappers.length > 0) {
            boolean seekToUs = this.enabledSampleStreamWrappers[0].seekToUs(j, false);
            for (int i = 1; i < this.enabledSampleStreamWrappers.length; i++) {
                this.enabledSampleStreamWrappers[i].seekToUs(j, seekToUs);
            }
            if (seekToUs) {
                this.timestampAdjusterProvider.reset();
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
    public void onPrepared() {
        int i = this.pendingPrepareCount - 1;
        this.pendingPrepareCount = i;
        if (i <= 0) {
            int i2 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
                i2 += hlsSampleStreamWrapper.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
            int length = hlsSampleStreamWrapperArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                HlsSampleStreamWrapper hlsSampleStreamWrapper2 = hlsSampleStreamWrapperArr[i3];
                int i5 = hlsSampleStreamWrapper2.getTrackGroups().length;
                int i6 = i4;
                int i7 = 0;
                while (i7 < i5) {
                    trackGroupArr[i6] = hlsSampleStreamWrapper2.getTrackGroups().get(i7);
                    i7++;
                    i6++;
                }
                i3++;
                i4 = i6;
            }
            this.trackGroups = new TrackGroupArray(trackGroupArr);
            this.callback.onPrepared(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
    public void onPlaylistRefreshRequired(HlsMasterPlaylist.HlsUrl hlsUrl) {
        this.playlistTracker.refreshPlaylist(hlsUrl);
    }

    public void onContinueLoadingRequested(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        if (this.trackGroups != null) {
            this.callback.onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistChanged() {
        continuePreparingOrLoading();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistBlacklisted(HlsMasterPlaylist.HlsUrl hlsUrl, long j) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.onPlaylistBlacklisted(hlsUrl, j);
        }
        continuePreparingOrLoading();
    }

    private void buildAndPrepareSampleStreamWrappers(long j) {
        HlsMasterPlaylist masterPlaylist = this.playlistTracker.getMasterPlaylist();
        ArrayList arrayList = new ArrayList(masterPlaylist.variants);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMasterPlaylist.HlsUrl hlsUrl = (HlsMasterPlaylist.HlsUrl) arrayList.get(i);
            if (hlsUrl.format.height > 0 || variantHasExplicitCodecWithPrefix(hlsUrl, "avc")) {
                arrayList2.add(hlsUrl);
            } else if (variantHasExplicitCodecWithPrefix(hlsUrl, "mp4a")) {
                arrayList3.add(hlsUrl);
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList = arrayList2;
        } else if (arrayList3.size() < arrayList.size()) {
            arrayList.removeAll(arrayList3);
        }
        List<HlsMasterPlaylist.HlsUrl> list = masterPlaylist.audios;
        List<HlsMasterPlaylist.HlsUrl> list2 = masterPlaylist.subtitles;
        this.sampleStreamWrappers = new HlsSampleStreamWrapper[(list.size() + 1 + list2.size())];
        this.pendingPrepareCount = this.sampleStreamWrappers.length;
        Assertions.checkArgument(!arrayList.isEmpty());
        HlsMasterPlaylist.HlsUrl[] hlsUrlArr = new HlsMasterPlaylist.HlsUrl[arrayList.size()];
        arrayList.toArray(hlsUrlArr);
        HlsSampleStreamWrapper buildSampleStreamWrapper = buildSampleStreamWrapper(0, hlsUrlArr, masterPlaylist.muxedAudioFormat, masterPlaylist.muxedCaptionFormats, j);
        this.sampleStreamWrappers[0] = buildSampleStreamWrapper;
        buildSampleStreamWrapper.setIsTimestampMaster(true);
        buildSampleStreamWrapper.continuePreparing();
        int i2 = 0;
        int i3 = 1;
        while (i2 < list.size()) {
            HlsSampleStreamWrapper buildSampleStreamWrapper2 = buildSampleStreamWrapper(1, new HlsMasterPlaylist.HlsUrl[]{list.get(i2)}, null, Collections.emptyList(), j);
            this.sampleStreamWrappers[i3] = buildSampleStreamWrapper2;
            buildSampleStreamWrapper2.continuePreparing();
            i2++;
            i3++;
        }
        int i4 = 0;
        while (i4 < list2.size()) {
            HlsMasterPlaylist.HlsUrl hlsUrl2 = list2.get(i4);
            HlsSampleStreamWrapper buildSampleStreamWrapper3 = buildSampleStreamWrapper(3, new HlsMasterPlaylist.HlsUrl[]{hlsUrl2}, null, Collections.emptyList(), j);
            buildSampleStreamWrapper3.prepareSingleTrack(hlsUrl2.format);
            this.sampleStreamWrappers[i3] = buildSampleStreamWrapper3;
            i4++;
            i3++;
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private HlsSampleStreamWrapper buildSampleStreamWrapper(int i, HlsMasterPlaylist.HlsUrl[] hlsUrlArr, Format format, List<Format> list, long j) {
        return new HlsSampleStreamWrapper(i, this, new HlsChunkSource(this.playlistTracker, hlsUrlArr, this.dataSourceFactory, this.timestampAdjusterProvider, list), this.allocator, j, format, this.minLoadableRetryCount, this.eventDispatcher);
    }

    private void continuePreparingOrLoading() {
        if (this.trackGroups != null) {
            this.callback.onContinueLoadingRequested(this);
            return;
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
    }

    private static boolean variantHasExplicitCodecWithPrefix(HlsMasterPlaylist.HlsUrl hlsUrl, String str) {
        String str2 = hlsUrl.format.codecs;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split("(\\s*,\\s*)|(\\s*$)")) {
            if (str3.startsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
