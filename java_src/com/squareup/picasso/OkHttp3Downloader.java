package com.squareup.picasso;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import java.io.File;
import java.io.IOException;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public final class OkHttp3Downloader implements Downloader {
    private final Cache cache;
    @VisibleForTesting
    final Call.Factory client;
    private boolean sharedClient;

    public OkHttp3Downloader(Context context) {
        this(Utils.createDefaultCacheDir(context));
    }

    public OkHttp3Downloader(File file) {
        this(file, Utils.calculateDiskCacheSize(file));
    }

    public OkHttp3Downloader(Context context, long j) {
        this(Utils.createDefaultCacheDir(context), j);
    }

    public OkHttp3Downloader(File file, long j) {
        this(new OkHttpClient.Builder().cache(new Cache(file, j)).build());
        this.sharedClient = false;
    }

    public OkHttp3Downloader(OkHttpClient okHttpClient) {
        this.sharedClient = true;
        this.client = okHttpClient;
        this.cache = okHttpClient.cache();
    }

    public OkHttp3Downloader(Call.Factory factory) {
        this.sharedClient = true;
        this.client = factory;
        this.cache = null;
    }

    @Override // com.squareup.picasso.Downloader
    @NonNull
    public Response load(@NonNull Request request) throws IOException {
        return this.client.newCall(request).execute();
    }

    @Override // com.squareup.picasso.Downloader
    public void shutdown() {
        if (!this.sharedClient && this.cache != null) {
            try {
                this.cache.close();
            } catch (IOException unused) {
            }
        }
    }
}
