package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.io.EOFException;
import java.io.IOException;
import java.util.NavigableSet;

public final class CacheUtil {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;

    public static class CachingCounters {
        public volatile long alreadyCachedBytes;
        public volatile long contentLength = -1;
        public volatile long newlyCachedBytes;

        public long totalCachedBytes() {
            return this.alreadyCachedBytes + this.newlyCachedBytes;
        }
    }

    public static String generateKey(Uri uri) {
        return uri.toString();
    }

    public static String getKey(DataSpec dataSpec) {
        return dataSpec.key != null ? dataSpec.key : generateKey(dataSpec.uri);
    }

    public static void getCached(DataSpec dataSpec, Cache cache, CachingCounters cachingCounters) {
        String key = getKey(dataSpec);
        long j = dataSpec.absoluteStreamPosition;
        long contentLength = dataSpec.length != -1 ? dataSpec.length : cache.getContentLength(key);
        cachingCounters.contentLength = contentLength;
        cachingCounters.alreadyCachedBytes = 0;
        cachingCounters.newlyCachedBytes = 0;
        long j2 = j;
        long j3 = contentLength;
        while (j3 != 0) {
            long cachedBytes = cache.getCachedBytes(key, j2, j3 != -1 ? j3 : Long.MAX_VALUE);
            if (cachedBytes > 0) {
                cachingCounters.alreadyCachedBytes += cachedBytes;
            } else {
                cachedBytes = -cachedBytes;
                if (cachedBytes == Long.MAX_VALUE) {
                    return;
                }
            }
            j2 += cachedBytes;
            if (j3 == -1) {
                cachedBytes = 0;
            }
            j3 -= cachedBytes;
        }
    }

    public static void cache(DataSpec dataSpec, Cache cache, DataSource dataSource, CachingCounters cachingCounters) throws IOException, InterruptedException {
        cache(dataSpec, cache, new CacheDataSource(cache, dataSource), new byte[131072], null, 0, cachingCounters, false);
    }

    public static void cache(DataSpec dataSpec, Cache cache, CacheDataSource cacheDataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i, CachingCounters cachingCounters, boolean z) throws IOException, InterruptedException {
        long j;
        CachingCounters cachingCounters2 = cachingCounters;
        Assertions.checkNotNull(cacheDataSource);
        Assertions.checkNotNull(bArr);
        if (cachingCounters2 != null) {
            getCached(dataSpec, cache, cachingCounters2);
        } else {
            cachingCounters2 = new CachingCounters();
        }
        String key = getKey(dataSpec);
        long j2 = dataSpec.absoluteStreamPosition;
        long contentLength = dataSpec.length != -1 ? dataSpec.length : cache.getContentLength(key);
        while (true) {
            long j3 = 0;
            if (contentLength != 0) {
                long cachedBytes = cache.getCachedBytes(key, j2, contentLength != -1 ? contentLength : Long.MAX_VALUE);
                if (cachedBytes > 0) {
                    j = cachedBytes;
                } else {
                    long j4 = -cachedBytes;
                    j = j4;
                    if (readAndDiscard(dataSpec, j2, j4, cacheDataSource, bArr, priorityTaskManager, i, cachingCounters2) < j) {
                        if (z && contentLength != -1) {
                            throw new EOFException();
                        }
                        return;
                    }
                }
                j2 += j;
                if (contentLength != -1) {
                    j3 = j;
                }
                contentLength -= j3;
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0093, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0094, code lost:
        com.google.android.exoplayer2.util.Util.closeQuietly(r22);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0097, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0093 A[ExcHandler: all (r0v0 'th' java.lang.Throwable A[CUSTOM_DECLARE]), Splitter:B:3:0x000d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static long readAndDiscard(com.google.android.exoplayer2.upstream.DataSpec r17, long r18, long r20, com.google.android.exoplayer2.upstream.DataSource r22, byte[] r23, com.google.android.exoplayer2.util.PriorityTaskManager r24, int r25, com.google.android.exoplayer2.upstream.cache.CacheUtil.CachingCounters r26) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 157
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.CacheUtil.readAndDiscard(com.google.android.exoplayer2.upstream.DataSpec, long, long, com.google.android.exoplayer2.upstream.DataSource, byte[], com.google.android.exoplayer2.util.PriorityTaskManager, int, com.google.android.exoplayer2.upstream.cache.CacheUtil$CachingCounters):long");
    }

    public static void remove(Cache cache, String str) {
        NavigableSet<CacheSpan> cachedSpans = cache.getCachedSpans(str);
        if (cachedSpans != null) {
            for (CacheSpan cacheSpan : cachedSpans) {
                try {
                    cache.removeSpan(cacheSpan);
                } catch (Cache.CacheException unused) {
                }
            }
        }
    }

    private CacheUtil() {
    }
}
