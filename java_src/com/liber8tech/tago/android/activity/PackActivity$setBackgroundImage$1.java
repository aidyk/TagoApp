package com.liber8tech.tago.android.activity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.app.NotificationCompat;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", NotificationCompat.CATEGORY_CALL}, k = 3, mv = {1, 1, 13})
/* compiled from: PackActivity.kt */
final class PackActivity$setBackgroundImage$1<V> implements Callable<T> {
    final /* synthetic */ String $url;

    PackActivity$setBackgroundImage$1(String str) {
        this.$url = str;
    }

    @Override // java.util.concurrent.Callable
    @Nullable
    public final Bitmap call() {
        Bitmap bitmap = null;
        ResponseBody body = new OkHttpClient.Builder().build().newCall(new Request.Builder().url(this.$url).build()).execute().body();
        return body != null ? BitmapFactory.decodeStream(body.byteStream()) : bitmap;
    }
}
