package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* access modifiers changed from: package-private */
public class NetworkRequestHandler extends RequestHandler {
    private static final String SCHEME_HTTP = "http";
    private static final String SCHEME_HTTPS = "https";
    private final Downloader downloader;
    private final Stats stats;

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.RequestHandler
    public int getRetryCount() {
        return 2;
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.RequestHandler
    public boolean supportsReplay() {
        return true;
    }

    NetworkRequestHandler(Downloader downloader2, Stats stats2) {
        this.downloader = downloader2;
        this.stats = stats2;
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        String scheme = request.uri.getScheme();
        return SCHEME_HTTP.equals(scheme) || SCHEME_HTTPS.equals(scheme);
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        Response load = this.downloader.load(createRequest(request, i));
        ResponseBody body = load.body();
        if (load.isSuccessful()) {
            Picasso.LoadedFrom loadedFrom = load.cacheResponse() == null ? Picasso.LoadedFrom.NETWORK : Picasso.LoadedFrom.DISK;
            if (loadedFrom == Picasso.LoadedFrom.DISK && body.contentLength() == 0) {
                body.close();
                throw new ContentLengthException("Received response with 0 content-length header.");
            }
            if (loadedFrom == Picasso.LoadedFrom.NETWORK && body.contentLength() > 0) {
                this.stats.dispatchDownloadFinished(body.contentLength());
            }
            return new RequestHandler.Result(body.source(), loadedFrom);
        }
        body.close();
        throw new ResponseException(load.code(), request.networkPolicy);
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.RequestHandler
    public boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    private static Request createRequest(Request request, int i) {
        CacheControl cacheControl;
        if (i == 0) {
            cacheControl = null;
        } else if (NetworkPolicy.isOfflineOnly(i)) {
            cacheControl = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                builder.noCache();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                builder.noStore();
            }
            cacheControl = builder.build();
        }
        Request.Builder url = new Request.Builder().url(request.uri.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        return url.build();
    }

    /* access modifiers changed from: package-private */
    public static class ContentLengthException extends IOException {
        ContentLengthException(String str) {
            super(str);
        }
    }

    static final class ResponseException extends IOException {
        final int code;
        final int networkPolicy;

        ResponseException(int i, int i2) {
            super("HTTP " + i);
            this.code = i;
            this.networkPolicy = i2;
        }
    }
}
