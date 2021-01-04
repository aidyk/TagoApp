package com.google.android.exoplayer2.source.hls;

import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.ts.Ac3Extractor;
import com.google.android.exoplayer2.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.ts.DefaultTsPayloadReaderFactory;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class HlsMediaChunk extends MediaChunk {
    private static final String AAC_FILE_EXTENSION = ".aac";
    private static final String AC3_FILE_EXTENSION = ".ac3";
    private static final String EC3_FILE_EXTENSION = ".ec3";
    private static final String M4_FILE_EXTENSION_PREFIX = ".m4";
    private static final String MP3_FILE_EXTENSION = ".mp3";
    private static final String MP4_FILE_EXTENSION = ".mp4";
    private static final String PRIV_TIMESTAMP_FRAME_OWNER = "com.apple.streaming.transportStreamTimestamp";
    private static final AtomicInteger UID_SOURCE = new AtomicInteger();
    private static final String VTT_FILE_EXTENSION = ".vtt";
    private static final String WEBVTT_FILE_EXTENSION = ".webvtt";
    private int bytesLoaded;
    public final int discontinuitySequenceNumber;
    private Extractor extractor;
    private HlsSampleStreamWrapper extractorOutput;
    public final HlsMasterPlaylist.HlsUrl hlsUrl;
    private final ParsableByteArray id3Data;
    private final Id3Decoder id3Decoder;
    private final DataSource initDataSource;
    private final DataSpec initDataSpec;
    private boolean initLoadCompleted;
    private int initSegmentBytesLoaded;
    private final boolean isEncrypted = (this.dataSource instanceof Aes128DataSource);
    private final boolean isMasterTimestampSource;
    private final boolean isPackedAudio;
    private final String lastPathSegment;
    private volatile boolean loadCanceled;
    private volatile boolean loadCompleted;
    private final List<Format> muxedCaptionFormats;
    private final boolean needNewExtractor;
    private final Extractor previousExtractor;
    private final boolean shouldSpliceIn;
    private final TimestampAdjuster timestampAdjuster;
    public final int uid;

    public HlsMediaChunk(DataSource dataSource, DataSpec dataSpec, DataSpec dataSpec2, HlsMasterPlaylist.HlsUrl hlsUrl2, List<Format> list, int i, Object obj, long j, long j2, int i2, int i3, boolean z, TimestampAdjuster timestampAdjuster2, HlsMediaChunk hlsMediaChunk, byte[] bArr, byte[] bArr2) {
        super(buildDataSource(dataSource, bArr, bArr2), dataSpec, hlsUrl2.format, i, obj, j, j2, i2);
        this.discontinuitySequenceNumber = i3;
        this.initDataSpec = dataSpec2;
        this.hlsUrl = hlsUrl2;
        this.muxedCaptionFormats = list;
        this.isMasterTimestampSource = z;
        this.timestampAdjuster = timestampAdjuster2;
        this.lastPathSegment = dataSpec.uri.getLastPathSegment();
        boolean z2 = false;
        this.isPackedAudio = this.lastPathSegment.endsWith(AAC_FILE_EXTENSION) || this.lastPathSegment.endsWith(AC3_FILE_EXTENSION) || this.lastPathSegment.endsWith(EC3_FILE_EXTENSION) || this.lastPathSegment.endsWith(MP3_FILE_EXTENSION);
        if (hlsMediaChunk != null) {
            this.id3Decoder = hlsMediaChunk.id3Decoder;
            this.id3Data = hlsMediaChunk.id3Data;
            this.previousExtractor = hlsMediaChunk.extractor;
            this.shouldSpliceIn = hlsMediaChunk.hlsUrl != hlsUrl2;
            this.needNewExtractor = (hlsMediaChunk.discontinuitySequenceNumber != i3 || this.shouldSpliceIn) ? true : z2;
        } else {
            this.id3Decoder = this.isPackedAudio ? new Id3Decoder() : null;
            this.id3Data = this.isPackedAudio ? new ParsableByteArray(10) : null;
            this.previousExtractor = null;
            this.shouldSpliceIn = false;
            this.needNewExtractor = true;
        }
        this.initDataSource = dataSource;
        this.uid = UID_SOURCE.getAndIncrement();
    }

    public void init(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        this.extractorOutput = hlsSampleStreamWrapper;
        hlsSampleStreamWrapper.init(this.uid, this.shouldSpliceIn);
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.google.android.exoplayer2.source.chunk.Chunk
    public long bytesLoaded() {
        return (long) this.bytesLoaded;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() throws IOException, InterruptedException {
        if (this.extractor == null && !this.isPackedAudio) {
            this.extractor = createExtractor();
        }
        maybeLoadInitData();
        if (!this.loadCanceled) {
            loadMedia();
        }
    }

    /* JADX INFO: finally extract failed */
    private void maybeLoadInitData() throws IOException, InterruptedException {
        if (this.previousExtractor != this.extractor && !this.initLoadCompleted && this.initDataSpec != null) {
            DataSpec subrange = this.initDataSpec.subrange((long) this.initSegmentBytesLoaded);
            try {
                DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.initDataSource, subrange.absoluteStreamPosition, this.initDataSource.open(subrange));
                int i = 0;
                while (i == 0) {
                    try {
                        if (this.loadCanceled) {
                            break;
                        }
                        i = this.extractor.read(defaultExtractorInput, null);
                    } catch (Throwable th) {
                        this.initSegmentBytesLoaded = (int) (defaultExtractorInput.getPosition() - this.initDataSpec.absoluteStreamPosition);
                        throw th;
                    }
                }
                this.initSegmentBytesLoaded = (int) (defaultExtractorInput.getPosition() - this.initDataSpec.absoluteStreamPosition);
                Util.closeQuietly(this.dataSource);
                this.initLoadCompleted = true;
            } catch (Throwable th2) {
                Util.closeQuietly(this.dataSource);
                throw th2;
            }
        }
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004c A[Catch:{ all -> 0x00a1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x006a A[Catch:{ all -> 0x00a1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0071 A[SYNTHETIC, Splitter:B:24:0x0071] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x001c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void loadMedia() throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 168
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaChunk.loadMedia():void");
    }

    private long peekId3PrivTimestamp(ExtractorInput extractorInput) throws IOException, InterruptedException {
        Metadata decode;
        extractorInput.resetPeekPosition();
        if (!extractorInput.peekFully(this.id3Data.data, 0, 10, true)) {
            return C.TIME_UNSET;
        }
        this.id3Data.reset(10);
        if (this.id3Data.readUnsignedInt24() != Id3Decoder.ID3_TAG) {
            return C.TIME_UNSET;
        }
        this.id3Data.skipBytes(3);
        int readSynchSafeInt = this.id3Data.readSynchSafeInt();
        int i = readSynchSafeInt + 10;
        if (i > this.id3Data.capacity()) {
            byte[] bArr = this.id3Data.data;
            this.id3Data.reset(i);
            System.arraycopy(bArr, 0, this.id3Data.data, 0, 10);
        }
        if (!extractorInput.peekFully(this.id3Data.data, 10, readSynchSafeInt, true) || (decode = this.id3Decoder.decode(this.id3Data.data, readSynchSafeInt)) == null) {
            return C.TIME_UNSET;
        }
        int length = decode.length();
        for (int i2 = 0; i2 < length; i2++) {
            Metadata.Entry entry = decode.get(i2);
            if (entry instanceof PrivFrame) {
                PrivFrame privFrame = (PrivFrame) entry;
                if (PRIV_TIMESTAMP_FRAME_OWNER.equals(privFrame.owner)) {
                    System.arraycopy(privFrame.privateData, 0, this.id3Data.data, 0, 8);
                    this.id3Data.reset(8);
                    return this.id3Data.readLong();
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        return (bArr == null || bArr2 == null) ? dataSource : new Aes128DataSource(dataSource, bArr, bArr2);
    }

    private Extractor createExtractor() {
        Extractor extractor2;
        boolean z = true;
        if (MimeTypes.TEXT_VTT.equals(this.hlsUrl.format.sampleMimeType) || this.lastPathSegment.endsWith(WEBVTT_FILE_EXTENSION) || this.lastPathSegment.endsWith(VTT_FILE_EXTENSION)) {
            extractor2 = new WebvttExtractor(this.trackFormat.language, this.timestampAdjuster);
        } else if (!this.needNewExtractor) {
            extractor2 = this.previousExtractor;
            z = false;
        } else if (this.lastPathSegment.endsWith(MP4_FILE_EXTENSION) || this.lastPathSegment.startsWith(M4_FILE_EXTENSION_PREFIX, this.lastPathSegment.length() - 4)) {
            extractor2 = new FragmentedMp4Extractor(0, this.timestampAdjuster);
        } else {
            int i = 16;
            List<Format> list = this.muxedCaptionFormats;
            if (list != null) {
                i = 48;
            } else {
                list = Collections.emptyList();
            }
            String str = this.trackFormat.codecs;
            if (!TextUtils.isEmpty(str)) {
                if (!MimeTypes.AUDIO_AAC.equals(MimeTypes.getAudioMediaMimeType(str))) {
                    i |= 2;
                }
                if (!MimeTypes.VIDEO_H264.equals(MimeTypes.getVideoMediaMimeType(str))) {
                    i |= 4;
                }
            }
            extractor2 = new TsExtractor(2, this.timestampAdjuster, new DefaultTsPayloadReaderFactory(i, list));
        }
        if (z) {
            extractor2.init(this.extractorOutput);
        }
        return extractor2;
    }

    private Extractor buildPackedAudioExtractor(long j) {
        Extractor extractor2;
        if (this.lastPathSegment.endsWith(AAC_FILE_EXTENSION)) {
            extractor2 = new AdtsExtractor(j);
        } else if (this.lastPathSegment.endsWith(AC3_FILE_EXTENSION) || this.lastPathSegment.endsWith(EC3_FILE_EXTENSION)) {
            extractor2 = new Ac3Extractor(j);
        } else if (this.lastPathSegment.endsWith(MP3_FILE_EXTENSION)) {
            extractor2 = new Mp3Extractor(0, j);
        } else {
            throw new IllegalArgumentException("Unknown extension for audio file: " + this.lastPathSegment);
        }
        extractor2.init(this.extractorOutput);
        return extractor2;
    }
}
