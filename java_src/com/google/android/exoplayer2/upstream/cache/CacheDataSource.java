package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import android.support.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.TeeDataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class CacheDataSource implements DataSource {
    public static final long DEFAULT_MAX_CACHE_FILE_SIZE = 2097152;
    public static final int FLAG_BLOCK_ON_CACHE = 1;
    public static final int FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS = 4;
    public static final int FLAG_IGNORE_CACHE_ON_ERROR = 2;
    private final boolean blockOnCache;
    private long bytesRemaining;
    private final Cache cache;
    private final DataSource cacheReadDataSource;
    private final DataSource cacheWriteDataSource;
    private DataSource currentDataSource;
    private boolean currentRequestIgnoresCache;
    private boolean currentRequestUnbounded;
    @Nullable
    private final EventListener eventListener;
    private int flags;
    private final boolean ignoreCacheForUnsetLengthRequests;
    private final boolean ignoreCacheOnError;
    private String key;
    private CacheSpan lockedSpan;
    private long readPosition;
    private boolean seenCacheError;
    private long totalCachedBytesRead;
    private final DataSource upstreamDataSource;
    private Uri uri;

    public interface EventListener {
        void onCachedBytesRead(long j, long j2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public CacheDataSource(Cache cache2, DataSource dataSource) {
        this(cache2, dataSource, 0, 2097152);
    }

    public CacheDataSource(Cache cache2, DataSource dataSource, int i) {
        this(cache2, dataSource, i, 2097152);
    }

    public CacheDataSource(Cache cache2, DataSource dataSource, int i, long j) {
        this(cache2, dataSource, new FileDataSource(), new CacheDataSink(cache2, j), i, null);
    }

    public CacheDataSource(Cache cache2, DataSource dataSource, DataSource dataSource2, DataSink dataSink, int i, @Nullable EventListener eventListener2) {
        this.cache = cache2;
        this.cacheReadDataSource = dataSource2;
        boolean z = false;
        this.blockOnCache = (i & 1) != 0;
        this.ignoreCacheOnError = (i & 2) != 0;
        this.ignoreCacheForUnsetLengthRequests = (i & 4) != 0 ? true : z;
        this.upstreamDataSource = dataSource;
        if (dataSink != null) {
            this.cacheWriteDataSource = new TeeDataSource(dataSource, dataSink);
        } else {
            this.cacheWriteDataSource = null;
        }
        this.eventListener = eventListener2;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        try {
            this.uri = dataSpec.uri;
            this.flags = dataSpec.flags;
            this.key = CacheUtil.getKey(dataSpec);
            this.readPosition = dataSpec.position;
            this.currentRequestIgnoresCache = (this.ignoreCacheOnError && this.seenCacheError) || (dataSpec.length == -1 && this.ignoreCacheForUnsetLengthRequests);
            if (dataSpec.length == -1) {
                if (!this.currentRequestIgnoresCache) {
                    this.bytesRemaining = this.cache.getContentLength(this.key);
                    if (this.bytesRemaining != -1) {
                        this.bytesRemaining -= dataSpec.position;
                        if (this.bytesRemaining <= 0) {
                            throw new DataSourceException(0);
                        }
                    }
                    openNextSource(true);
                    return this.bytesRemaining;
                }
            }
            this.bytesRemaining = dataSpec.length;
            openNextSource(true);
            return this.bytesRemaining;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int read = this.currentDataSource.read(bArr, i, i2);
            if (read >= 0) {
                if (this.currentDataSource == this.cacheReadDataSource) {
                    this.totalCachedBytesRead += (long) read;
                }
                long j = (long) read;
                this.readPosition += j;
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= j;
                }
            } else {
                if (this.currentRequestUnbounded) {
                    setContentLength(this.readPosition);
                    this.bytesRemaining = 0;
                }
                closeCurrentSource();
                if ((this.bytesRemaining > 0 || this.bytesRemaining == -1) && openNextSource(false)) {
                    return read(bArr, i, i2);
                }
            }
            return read;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.currentDataSource == this.upstreamDataSource ? this.currentDataSource.getUri() : this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        this.uri = null;
        notifyBytesRead();
        try {
            closeCurrentSource();
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    private boolean openNextSource(boolean z) throws IOException {
        CacheSpan cacheSpan;
        DataSpec dataSpec;
        long j;
        if (this.currentRequestIgnoresCache) {
            cacheSpan = null;
        } else if (this.blockOnCache) {
            try {
                cacheSpan = this.cache.startReadWrite(this.key, this.readPosition);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        } else {
            cacheSpan = this.cache.startReadWriteNonBlocking(this.key, this.readPosition);
        }
        if (cacheSpan == null) {
            this.currentDataSource = this.upstreamDataSource;
            dataSpec = new DataSpec(this.uri, this.readPosition, this.bytesRemaining, this.key, this.flags);
        } else if (cacheSpan.isCached) {
            Uri fromFile = Uri.fromFile(cacheSpan.file);
            long j2 = this.readPosition - cacheSpan.position;
            long j3 = cacheSpan.length - j2;
            if (this.bytesRemaining != -1) {
                j3 = Math.min(j3, this.bytesRemaining);
            }
            DataSpec dataSpec2 = new DataSpec(fromFile, this.readPosition, j2, j3, this.key, this.flags);
            this.currentDataSource = this.cacheReadDataSource;
            dataSpec = dataSpec2;
        } else {
            if (cacheSpan.isOpenEnded()) {
                j = this.bytesRemaining;
            } else {
                j = cacheSpan.length;
                if (this.bytesRemaining != -1) {
                    j = Math.min(j, this.bytesRemaining);
                }
            }
            dataSpec = new DataSpec(this.uri, this.readPosition, j, this.key, this.flags);
            if (this.cacheWriteDataSource != null) {
                this.currentDataSource = this.cacheWriteDataSource;
                this.lockedSpan = cacheSpan;
            } else {
                this.currentDataSource = this.upstreamDataSource;
                this.cache.releaseHoleSpan(cacheSpan);
            }
        }
        boolean z2 = true;
        this.currentRequestUnbounded = dataSpec.length == -1;
        long j4 = 0;
        try {
            j4 = this.currentDataSource.open(dataSpec);
        } catch (IOException e) {
            e = e;
            if (!z && this.currentRequestUnbounded) {
                Throwable th = e;
                while (true) {
                    if (th != null) {
                        if ((th instanceof DataSourceException) && ((DataSourceException) th).reason == 0) {
                            e = null;
                            break;
                        }
                        th = th.getCause();
                    } else {
                        break;
                    }
                }
            }
            if (e == null) {
                z2 = false;
            } else {
                throw e;
            }
        }
        if (this.currentRequestUnbounded && j4 != -1) {
            this.bytesRemaining = j4;
            setContentLength(dataSpec.position + this.bytesRemaining);
        }
        return z2;
    }

    private void setContentLength(long j) throws IOException {
        if (this.currentDataSource == this.cacheWriteDataSource) {
            this.cache.setContentLength(this.key, j);
        }
    }

    private void closeCurrentSource() throws IOException {
        if (this.currentDataSource != null) {
            try {
                this.currentDataSource.close();
                this.currentDataSource = null;
                this.currentRequestUnbounded = false;
            } finally {
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
            }
        }
    }

    private void handleBeforeThrow(IOException iOException) {
        if (this.currentDataSource == this.cacheReadDataSource || (iOException instanceof Cache.CacheException)) {
            this.seenCacheError = true;
        }
    }

    private void notifyBytesRead() {
        if (this.eventListener != null && this.totalCachedBytesRead > 0) {
            this.eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
            this.totalCachedBytesRead = 0;
        }
    }
}
