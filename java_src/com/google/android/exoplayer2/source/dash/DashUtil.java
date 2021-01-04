package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer2.source.chunk.InitializationChunk;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceInputStream;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public final class DashUtil {
    public static DashManifest loadManifest(DataSource dataSource, String str) throws IOException {
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(dataSource, new DataSpec(Uri.parse(str), 2));
        try {
            dataSourceInputStream.open();
            return new DashManifestParser().parse(dataSource.getUri(), (InputStream) dataSourceInputStream);
        } finally {
            dataSourceInputStream.close();
        }
    }

    public static DrmInitData loadDrmInitData(DataSource dataSource, DashManifest dashManifest) throws IOException, InterruptedException {
        if (dashManifest.getPeriodCount() < 1) {
            return null;
        }
        Period period = dashManifest.getPeriod(0);
        int adaptationSetIndex = period.getAdaptationSetIndex(2);
        if (adaptationSetIndex == -1 && (adaptationSetIndex = period.getAdaptationSetIndex(1)) == -1) {
            return null;
        }
        AdaptationSet adaptationSet = period.adaptationSets.get(adaptationSetIndex);
        if (adaptationSet.representations.isEmpty()) {
            return null;
        }
        Representation representation = adaptationSet.representations.get(0);
        DrmInitData drmInitData = representation.format.drmInitData;
        if (drmInitData == null) {
            Format loadSampleFormat = loadSampleFormat(dataSource, representation);
            if (loadSampleFormat != null) {
                drmInitData = loadSampleFormat.drmInitData;
            }
            if (drmInitData == null) {
                return null;
            }
        }
        return drmInitData;
    }

    public static DrmInitData loadDrmInitData(DataSource dataSource, Period period) throws IOException, InterruptedException {
        Representation firstRepresentation = getFirstRepresentation(period, 2);
        if (firstRepresentation == null && (firstRepresentation = getFirstRepresentation(period, 1)) == null) {
            return null;
        }
        DrmInitData drmInitData = firstRepresentation.format.drmInitData;
        if (drmInitData != null) {
            return drmInitData;
        }
        Format loadSampleFormat = loadSampleFormat(dataSource, firstRepresentation);
        if (loadSampleFormat == null) {
            return null;
        }
        return loadSampleFormat.drmInitData;
    }

    public static Format loadSampleFormat(DataSource dataSource, Representation representation) throws IOException, InterruptedException {
        ChunkExtractorWrapper loadInitializationData = loadInitializationData(dataSource, representation, false);
        if (loadInitializationData == null) {
            return null;
        }
        return loadInitializationData.getSampleFormats()[0];
    }

    public static ChunkIndex loadChunkIndex(DataSource dataSource, Representation representation) throws IOException, InterruptedException {
        ChunkExtractorWrapper loadInitializationData = loadInitializationData(dataSource, representation, true);
        if (loadInitializationData == null) {
            return null;
        }
        return (ChunkIndex) loadInitializationData.getSeekMap();
    }

    private static ChunkExtractorWrapper loadInitializationData(DataSource dataSource, Representation representation, boolean z) throws IOException, InterruptedException {
        RangedUri initializationUri = representation.getInitializationUri();
        if (initializationUri == null) {
            return null;
        }
        ChunkExtractorWrapper newWrappedExtractor = newWrappedExtractor(representation.format);
        if (z) {
            RangedUri indexUri = representation.getIndexUri();
            if (indexUri == null) {
                return null;
            }
            RangedUri attemptMerge = initializationUri.attemptMerge(indexUri, representation.baseUrl);
            if (attemptMerge == null) {
                loadInitializationData(dataSource, representation, newWrappedExtractor, initializationUri);
                initializationUri = indexUri;
            } else {
                initializationUri = attemptMerge;
            }
        }
        loadInitializationData(dataSource, representation, newWrappedExtractor, initializationUri);
        return newWrappedExtractor;
    }

    private static void loadInitializationData(DataSource dataSource, Representation representation, ChunkExtractorWrapper chunkExtractorWrapper, RangedUri rangedUri) throws IOException, InterruptedException {
        new InitializationChunk(dataSource, new DataSpec(rangedUri.resolveUri(representation.baseUrl), rangedUri.start, rangedUri.length, representation.getCacheKey()), representation.format, 0, null, chunkExtractorWrapper).load();
    }

    private static ChunkExtractorWrapper newWrappedExtractor(Format format) {
        String str = format.containerMimeType;
        return new ChunkExtractorWrapper(str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM) ? new MatroskaExtractor() : new FragmentedMp4Extractor(), format);
    }

    private static Representation getFirstRepresentation(Period period, int i) {
        int adaptationSetIndex = period.getAdaptationSetIndex(i);
        if (adaptationSetIndex == -1) {
            return null;
        }
        List<Representation> list = period.adaptationSets.get(adaptationSetIndex).representations;
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private DashUtil() {
    }
}
