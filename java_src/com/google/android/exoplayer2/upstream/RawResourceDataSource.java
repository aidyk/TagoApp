package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class RawResourceDataSource implements DataSource {
    private static final String RAW_RESOURCE_SCHEME = "rawresource";
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;
    private InputStream inputStream;
    private final TransferListener<? super RawResourceDataSource> listener;
    private boolean opened;
    private final Resources resources;
    private Uri uri;

    public static class RawResourceDataSourceException extends IOException {
        public RawResourceDataSourceException(String str) {
            super(str);
        }

        public RawResourceDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    public RawResourceDataSource(Context context) {
        this(context, null);
    }

    public RawResourceDataSource(Context context, TransferListener<? super RawResourceDataSource> transferListener) {
        this.resources = context.getResources();
        this.listener = transferListener;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws RawResourceDataSourceException {
        try {
            this.uri = dataSpec.uri;
            if (TextUtils.equals(RAW_RESOURCE_SCHEME, this.uri.getScheme())) {
                try {
                    this.assetFileDescriptor = this.resources.openRawResourceFd(Integer.parseInt(this.uri.getLastPathSegment()));
                    this.inputStream = new FileInputStream(this.assetFileDescriptor.getFileDescriptor());
                    this.inputStream.skip(this.assetFileDescriptor.getStartOffset());
                    if (this.inputStream.skip(dataSpec.position) >= dataSpec.position) {
                        long j = -1;
                        if (dataSpec.length != -1) {
                            this.bytesRemaining = dataSpec.length;
                        } else {
                            long length = this.assetFileDescriptor.getLength();
                            if (length != -1) {
                                j = length - dataSpec.position;
                            }
                            this.bytesRemaining = j;
                        }
                        this.opened = true;
                        if (this.listener != null) {
                            this.listener.onTransferStart(this, dataSpec);
                        }
                        return this.bytesRemaining;
                    }
                    throw new EOFException();
                } catch (NumberFormatException unused) {
                    throw new RawResourceDataSourceException("Resource identifier must be an integer.");
                }
            } else {
                throw new RawResourceDataSourceException("URI must use scheme rawresource");
            }
        } catch (IOException e) {
            throw new RawResourceDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            if (this.bytesRemaining != -1) {
                i2 = (int) Math.min(this.bytesRemaining, (long) i2);
            }
            int read = this.inputStream.read(bArr, i, i2);
            if (read != -1) {
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= (long) read;
                }
                if (this.listener != null) {
                    this.listener.onBytesTransferred(this, read);
                }
                return read;
            } else if (this.bytesRemaining == -1) {
                return -1;
            } else {
                throw new RawResourceDataSourceException(new EOFException());
            }
        } catch (IOException e) {
            throw new RawResourceDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws RawResourceDataSourceException {
        this.uri = null;
        try {
            if (this.inputStream != null) {
                this.inputStream.close();
            }
            this.inputStream = null;
            try {
                if (this.assetFileDescriptor != null) {
                    this.assetFileDescriptor.close();
                }
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd(this);
                    }
                }
            } catch (IOException e) {
                throw new RawResourceDataSourceException(e);
            } catch (Throwable th) {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd(this);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(e2);
        } catch (Throwable th2) {
            this.inputStream = null;
            try {
                if (this.assetFileDescriptor != null) {
                    this.assetFileDescriptor.close();
                }
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd(this);
                    }
                }
                throw th2;
            } catch (IOException e3) {
                throw new RawResourceDataSourceException(e3);
            } catch (Throwable th3) {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    if (this.listener != null) {
                        this.listener.onTransferEnd(this);
                    }
                }
                throw th3;
            }
        }
    }
}
