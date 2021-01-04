package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ReusableBufferedOutputStream;
import com.google.android.exoplayer2.util.Util;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class CacheDataSink implements DataSink {
    public static final int DEFAULT_BUFFER_SIZE = 20480;
    private final int bufferSize;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private final Cache cache;
    private DataSpec dataSpec;
    private long dataSpecBytesWritten;
    private File file;
    private final long maxCacheFileSize;
    private OutputStream outputStream;
    private long outputStreamBytesWritten;
    private FileOutputStream underlyingFileOutputStream;

    public static class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache2, long j) {
        this(cache2, j, DEFAULT_BUFFER_SIZE);
    }

    public CacheDataSink(Cache cache2, long j, int i) {
        this.cache = (Cache) Assertions.checkNotNull(cache2);
        this.maxCacheFileSize = j;
        this.bufferSize = i;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec2) throws CacheDataSinkException {
        if (dataSpec2.length != -1 || dataSpec2.isFlagSet(2)) {
            this.dataSpec = dataSpec2;
            this.dataSpecBytesWritten = 0;
            try {
                openNextOutputStream();
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        } else {
            this.dataSpec = null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        if (this.dataSpec != null) {
            int i3 = 0;
            while (i3 < i2) {
                try {
                    if (this.outputStreamBytesWritten == this.maxCacheFileSize) {
                        closeCurrentOutputStream();
                        openNextOutputStream();
                    }
                    int min = (int) Math.min((long) (i2 - i3), this.maxCacheFileSize - this.outputStreamBytesWritten);
                    this.outputStream.write(bArr, i + i3, min);
                    i3 += min;
                    long j = (long) min;
                    this.outputStreamBytesWritten += j;
                    this.dataSpecBytesWritten += j;
                } catch (IOException e) {
                    throw new CacheDataSinkException(e);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void close() throws CacheDataSinkException {
        if (this.dataSpec != null) {
            try {
                closeCurrentOutputStream();
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }

    private void openNextOutputStream() throws IOException {
        long min;
        if (this.dataSpec.length == -1) {
            min = this.maxCacheFileSize;
        } else {
            min = Math.min(this.dataSpec.length - this.dataSpecBytesWritten, this.maxCacheFileSize);
        }
        this.file = this.cache.startFile(this.dataSpec.key, this.dataSpecBytesWritten + this.dataSpec.absoluteStreamPosition, min);
        this.underlyingFileOutputStream = new FileOutputStream(this.file);
        if (this.bufferSize > 0) {
            if (this.bufferedOutputStream == null) {
                this.bufferedOutputStream = new ReusableBufferedOutputStream(this.underlyingFileOutputStream, this.bufferSize);
            } else {
                this.bufferedOutputStream.reset(this.underlyingFileOutputStream);
            }
            this.outputStream = this.bufferedOutputStream;
        } else {
            this.outputStream = this.underlyingFileOutputStream;
        }
        this.outputStreamBytesWritten = 0;
    }

    private void closeCurrentOutputStream() throws IOException {
        if (this.outputStream != null) {
            try {
                this.outputStream.flush();
                this.underlyingFileOutputStream.getFD().sync();
                Util.closeQuietly(this.outputStream);
                this.outputStream = null;
                File file2 = this.file;
                this.file = null;
                this.cache.commitFile(file2);
            } catch (Throwable th) {
                Util.closeQuietly(this.outputStream);
                this.outputStream = null;
                File file3 = this.file;
                this.file = null;
                file3.delete();
                throw th;
            }
        }
    }
}
