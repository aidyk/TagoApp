package com.davemorrissey.labs.subscaleview.decoder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;

public class SkiaImageRegionDecoder implements ImageRegionDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private BitmapRegionDecoder decoder;
    private final Object decoderLock = new Object();

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00de A[SYNTHETIC, Splitter:B:40:0x00de] */
    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Point init(android.content.Context r8, android.net.Uri r9) throws java.lang.Exception {
        /*
        // Method dump skipped, instructions count: 226
        */
        throw new UnsupportedOperationException("Method not decompiled: com.davemorrissey.labs.subscaleview.decoder.SkiaImageRegionDecoder.init(android.content.Context, android.net.Uri):android.graphics.Point");
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public Bitmap decodeRegion(Rect rect, int i) {
        Bitmap decodeRegion;
        synchronized (this.decoderLock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            decodeRegion = this.decoder.decodeRegion(rect, options);
            if (decodeRegion == null) {
                throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
            }
        }
        return decodeRegion;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public boolean isReady() {
        return this.decoder != null && !this.decoder.isRecycled();
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public void recycle() {
        this.decoder.recycle();
    }
}
