package com.jakewharton.picasso;

import android.content.Context;
import android.net.Uri;
import android.os.StatFs;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.NetworkPolicy;
import java.io.File;
import java.io.IOException;
import okhttp3.Cache;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.commons.lang3.StringUtils;

public final class OkHttp3Downloader implements Downloader {
    private static final int MAX_DISK_CACHE_SIZE = 52428800;
    private static final int MIN_DISK_CACHE_SIZE = 5242880;
    private static final String PICASSO_CACHE = "picasso-cache";
    private final Cache cache;
    private final Call.Factory client;

    private static File defaultCacheDir(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), PICASSO_CACHE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static long calculateDiskCacheSize(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 50;
        } catch (IllegalArgumentException unused) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    public static Cache createDefaultCache(Context context) {
        File defaultCacheDir = defaultCacheDir(context);
        return new Cache(defaultCacheDir, calculateDiskCacheSize(defaultCacheDir));
    }

    private static OkHttpClient createOkHttpClient(File file, long j) {
        return new OkHttpClient.Builder().cache(new Cache(file, j)).build();
    }

    public OkHttp3Downloader(Context context) {
        this(defaultCacheDir(context));
    }

    public OkHttp3Downloader(File file) {
        this(file, calculateDiskCacheSize(file));
    }

    public OkHttp3Downloader(Context context, long j) {
        this(defaultCacheDir(context), j);
    }

    public OkHttp3Downloader(File file, long j) {
        this(createOkHttpClient(file, j));
    }

    public OkHttp3Downloader(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
        this.cache = okHttpClient.cache();
    }

    public OkHttp3Downloader(Call.Factory factory) {
        this.client = factory;
        this.cache = null;
    }

    public Downloader.Response load(Uri uri, int i) throws IOException {
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
        Request.Builder url = new Request.Builder().url(uri.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        Response execute = this.client.newCall(url.build()).execute();
        int code = execute.code();
        if (code < 300) {
            boolean z = execute.cacheResponse() != null;
            ResponseBody body = execute.body();
            return new Downloader.Response(body.byteStream(), z, body.contentLength());
        }
        execute.body().close();
        throw new Downloader.ResponseException(code + StringUtils.SPACE + execute.message(), i, code);
    }

    @Override // com.squareup.picasso.Downloader
    public void shutdown() {
        if (this.cache != null) {
            try {
                this.cache.close();
            } catch (IOException unused) {
            }
        }
    }
}
