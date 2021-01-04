package com.google.android.exoplayer2.drm;

public class DecryptionException extends Exception {
    private final int errorCode;

    public DecryptionException(int i, String str) {
        super(str);
        this.errorCode = i;
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}
