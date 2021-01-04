package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.google.android.exoplayer2.source.chunk.DataChunk;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.BaseTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;

/* access modifiers changed from: package-private */
public class HlsChunkSource {
    private final DataSource encryptionDataSource;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private HlsMasterPlaylist.HlsUrl expectedPlaylistUrl;
    private IOException fatalError;
    private boolean isTimestampMaster;
    private final DataSource mediaDataSource;
    private final List<Format> muxedCaptionFormats;
    private final HlsPlaylistTracker playlistTracker;
    private byte[] scratchSpace;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private TrackSelection trackSelection;
    private final HlsMasterPlaylist.HlsUrl[] variants;

    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public HlsMasterPlaylist.HlsUrl playlist;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlist = null;
        }
    }

    public HlsChunkSource(HlsPlaylistTracker hlsPlaylistTracker, HlsMasterPlaylist.HlsUrl[] hlsUrlArr, HlsDataSourceFactory hlsDataSourceFactory, TimestampAdjusterProvider timestampAdjusterProvider2, List<Format> list) {
        this.playlistTracker = hlsPlaylistTracker;
        this.variants = hlsUrlArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider2;
        this.muxedCaptionFormats = list;
        Format[] formatArr = new Format[hlsUrlArr.length];
        int[] iArr = new int[hlsUrlArr.length];
        for (int i = 0; i < hlsUrlArr.length; i++) {
            formatArr[i] = hlsUrlArr[i].format;
            iArr[i] = i;
        }
        this.mediaDataSource = hlsDataSourceFactory.createDataSource(1);
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, iArr);
    }

    public void maybeThrowError() throws IOException {
        if (this.fatalError != null) {
            throw this.fatalError;
        } else if (this.expectedPlaylistUrl != null) {
            this.playlistTracker.maybeThrowPlaylistRefreshError(this.expectedPlaylistUrl);
        }
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public void selectTracks(TrackSelection trackSelection2) {
        this.trackSelection = trackSelection2;
    }

    public TrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public void reset() {
        this.fatalError = null;
    }

    public void setIsTimestampMaster(boolean z) {
        this.isTimestampMaster = z;
    }

    public void getNextChunk(HlsMediaChunk hlsMediaChunk, long j, HlsChunkHolder hlsChunkHolder) {
        int i;
        int i2;
        int i3;
        if (hlsMediaChunk == null) {
            i = -1;
        } else {
            i = this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        }
        DataSpec dataSpec = null;
        this.expectedPlaylistUrl = null;
        long j2 = 0;
        if (hlsMediaChunk != null) {
            j2 = Math.max(0L, hlsMediaChunk.startTimeUs - j);
        }
        this.trackSelection.updateSelectedTrack(j2);
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z = false;
        boolean z2 = i != selectedIndexInTrackGroup;
        HlsMasterPlaylist.HlsUrl hlsUrl = this.variants[selectedIndexInTrackGroup];
        if (!this.playlistTracker.isSnapshotValid(hlsUrl)) {
            hlsChunkHolder.playlist = hlsUrl;
            this.expectedPlaylistUrl = hlsUrl;
            return;
        }
        HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(hlsUrl);
        if (hlsMediaChunk == null || z2) {
            long j3 = hlsMediaChunk == null ? j : playlistSnapshot.hasIndependentSegmentsTag ? hlsMediaChunk.endTimeUs : hlsMediaChunk.startTimeUs;
            if (playlistSnapshot.hasEndTag || j3 < playlistSnapshot.getEndTimeUs()) {
                List<HlsMediaPlaylist.Segment> list = playlistSnapshot.segments;
                Long valueOf = Long.valueOf(j3 - playlistSnapshot.startTimeUs);
                if (!this.playlistTracker.isLive() || hlsMediaChunk == null) {
                    z = true;
                }
                i2 = Util.binarySearchFloor((List) list, (Object) valueOf, true, z) + playlistSnapshot.mediaSequence;
                if (i2 < playlistSnapshot.mediaSequence && hlsMediaChunk != null) {
                    hlsUrl = this.variants[i];
                    HlsMediaPlaylist playlistSnapshot2 = this.playlistTracker.getPlaylistSnapshot(hlsUrl);
                    i2 = hlsMediaChunk.getNextChunkIndex();
                    playlistSnapshot = playlistSnapshot2;
                    selectedIndexInTrackGroup = i;
                }
            } else {
                i2 = playlistSnapshot.mediaSequence + playlistSnapshot.segments.size();
            }
            i3 = i2;
        } else {
            i3 = hlsMediaChunk.getNextChunkIndex();
        }
        if (i3 < playlistSnapshot.mediaSequence) {
            this.fatalError = new BehindLiveWindowException();
            return;
        }
        int i4 = i3 - playlistSnapshot.mediaSequence;
        if (i4 < playlistSnapshot.segments.size()) {
            HlsMediaPlaylist.Segment segment = playlistSnapshot.segments.get(i4);
            if (segment.isEncrypted) {
                Uri resolveToUri = UriUtil.resolveToUri(playlistSnapshot.baseUri, segment.encryptionKeyUri);
                if (!resolveToUri.equals(this.encryptionKeyUri)) {
                    hlsChunkHolder.chunk = newEncryptionKeyChunk(resolveToUri, segment.encryptionIV, selectedIndexInTrackGroup, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData());
                    return;
                } else if (!Util.areEqual(segment.encryptionIV, this.encryptionIvString)) {
                    setEncryptionData(resolveToUri, segment.encryptionIV, this.encryptionKey);
                }
            } else {
                clearEncryptionData();
            }
            HlsMediaPlaylist.Segment segment2 = playlistSnapshot.initializationSegment;
            if (segment2 != null) {
                dataSpec = new DataSpec(UriUtil.resolveToUri(playlistSnapshot.baseUri, segment2.url), segment2.byterangeOffset, segment2.byterangeLength, null);
            }
            long j4 = playlistSnapshot.startTimeUs + segment.relativeStartTimeUs;
            int i5 = playlistSnapshot.discontinuitySequence + segment.relativeDiscontinuitySequence;
            hlsChunkHolder.chunk = new HlsMediaChunk(this.mediaDataSource, new DataSpec(UriUtil.resolveToUri(playlistSnapshot.baseUri, segment.url), segment.byterangeOffset, segment.byterangeLength, null), dataSpec, hlsUrl, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), j4, j4 + segment.durationUs, i3, i5, this.isTimestampMaster, this.timestampAdjusterProvider.getAdjuster(i5), hlsMediaChunk, this.encryptionKey, this.encryptionIv);
        } else if (playlistSnapshot.hasEndTag) {
            hlsChunkHolder.endOfStream = true;
        } else {
            hlsChunkHolder.playlist = hlsUrl;
            this.expectedPlaylistUrl = hlsUrl;
        }
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.iv, encryptionKeyChunk.getResult());
        }
    }

    public boolean onChunkLoadError(Chunk chunk, boolean z, IOException iOException) {
        return z && ChunkedTrackBlacklistUtil.maybeBlacklistTrack(this.trackSelection, this.trackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), iOException);
    }

    public void onPlaylistBlacklisted(HlsMasterPlaylist.HlsUrl hlsUrl, long j) {
        int indexOf;
        int indexOf2 = this.trackGroup.indexOf(hlsUrl.format);
        if (indexOf2 != -1 && (indexOf = this.trackSelection.indexOf(indexOf2)) != -1) {
            this.trackSelection.blacklist(indexOf, j);
        }
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String str, int i, int i2, Object obj) {
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec(uri, 0, -1, null, 1), this.variants[i].format, i2, obj, this.scratchSpace, str);
    }

    private void setEncryptionData(Uri uri, String str, byte[] bArr) {
        byte[] byteArray = new BigInteger(Util.toLowerInvariant(str).startsWith("0x") ? str.substring(2) : str, 16).toByteArray();
        byte[] bArr2 = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr2, (bArr2.length - byteArray.length) + length, byteArray.length - length);
        this.encryptionKeyUri = uri;
        this.encryptionKey = bArr;
        this.encryptionIvString = str;
        this.encryptionIv = bArr2;
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getSelectionReason() {
            return 0;
        }

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(0));
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public void updateSelectedTrack(long j) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (isBlacklisted(this.selectedIndex, elapsedRealtime)) {
                for (int i = this.length - 1; i >= 0; i--) {
                    if (!isBlacklisted(i, elapsedRealtime)) {
                        this.selectedIndex = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }
    }

    /* access modifiers changed from: private */
    public static final class EncryptionKeyChunk extends DataChunk {
        public final String iv;
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, byte[] bArr, String str) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
            this.iv = str;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.exoplayer2.source.chunk.DataChunk
        public void consume(byte[] bArr, int i) throws IOException {
            this.result = Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }
}
