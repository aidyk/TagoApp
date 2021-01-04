package net.glxn.qrgen.android;

import android.graphics.Bitmap;

public class MatrixToImageConfig {
    public static final int BLACK = -16777216;
    public static final int WHITE = -1;
    private final int offColor;
    private final int onColor;

    public MatrixToImageConfig() {
        this(-16777216, -1);
    }

    public MatrixToImageConfig(int i, int i2) {
        this.onColor = i;
        this.offColor = i2;
    }

    public int getPixelOnColor() {
        return this.onColor;
    }

    public int getPixelOffColor() {
        return this.offColor;
    }

    /* access modifiers changed from: package-private */
    public Bitmap.Config getBufferedImageColorModel() {
        return Bitmap.Config.ARGB_8888;
    }
}
