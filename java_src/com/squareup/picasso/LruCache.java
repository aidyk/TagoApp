package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public final class LruCache implements Cache {
    final android.util.LruCache<String, BitmapAndSize> cache;

    public LruCache(@NonNull Context context) {
        this(Utils.calculateMemoryCacheSize(context));
    }

    public LruCache(int i) {
        this.cache = new android.util.LruCache<String, BitmapAndSize>(i) {
            /* class com.squareup.picasso.LruCache.AnonymousClass1 */

            /* access modifiers changed from: protected */
            public int sizeOf(String str, BitmapAndSize bitmapAndSize) {
                return bitmapAndSize.byteCount;
            }
        };
    }

    @Override // com.squareup.picasso.Cache
    @Nullable
    public Bitmap get(@NonNull String str) {
        BitmapAndSize bitmapAndSize = this.cache.get(str);
        if (bitmapAndSize != null) {
            return bitmapAndSize.bitmap;
        }
        return null;
    }

    @Override // com.squareup.picasso.Cache
    public void set(@NonNull String str, @NonNull Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        int bitmapBytes = Utils.getBitmapBytes(bitmap);
        if (bitmapBytes > maxSize()) {
            this.cache.remove(str);
        } else {
            this.cache.put(str, new BitmapAndSize(bitmap, bitmapBytes));
        }
    }

    @Override // com.squareup.picasso.Cache
    public int size() {
        return this.cache.size();
    }

    @Override // com.squareup.picasso.Cache
    public int maxSize() {
        return this.cache.maxSize();
    }

    @Override // com.squareup.picasso.Cache
    public void clear() {
        this.cache.evictAll();
    }

    @Override // com.squareup.picasso.Cache
    public void clearKeyUri(String str) {
        for (String str2 : this.cache.snapshot().keySet()) {
            if (str2.startsWith(str) && str2.length() > str.length() && str2.charAt(str.length()) == '\n') {
                this.cache.remove(str2);
            }
        }
    }

    public int hitCount() {
        return this.cache.hitCount();
    }

    public int missCount() {
        return this.cache.missCount();
    }

    public int putCount() {
        return this.cache.putCount();
    }

    public int evictionCount() {
        return this.cache.evictionCount();
    }

    /* access modifiers changed from: package-private */
    public static final class BitmapAndSize {
        final Bitmap bitmap;
        final int byteCount;

        BitmapAndSize(Bitmap bitmap2, int i) {
            this.bitmap = bitmap2;
            this.byteCount = i;
        }
    }
}
