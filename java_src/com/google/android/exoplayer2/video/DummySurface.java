package com.google.android.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

@TargetApi(17)
public final class DummySurface extends Surface {
    private static final int EGL_PROTECTED_CONTENT_EXT = 12992;
    private static final String TAG = "DummySurface";
    private static boolean secureSupported;
    private static boolean secureSupportedInitialized;
    public final boolean secure;
    private final DummySurfaceThread thread;
    private boolean threadReleased;

    public static synchronized boolean isSecureSupported(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            if (!secureSupportedInitialized) {
                if (Util.SDK_INT >= 17) {
                    boolean z2 = false;
                    String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                    if (eglQueryString != null && eglQueryString.contains("EGL_EXT_protected_content") && !deviceNeedsSecureDummySurfaceWorkaround(context)) {
                        z2 = true;
                    }
                    secureSupported = z2;
                }
                secureSupportedInitialized = true;
            }
            z = secureSupported;
        }
        return z;
    }

    public static DummySurface newInstanceV17(Context context, boolean z) {
        assertApiLevel17OrHigher();
        Assertions.checkState(!z || isSecureSupported(context));
        return new DummySurfaceThread().init(z);
    }

    private DummySurface(DummySurfaceThread dummySurfaceThread, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = dummySurfaceThread;
        this.secure = z;
    }

    public void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                this.thread.release();
                this.threadReleased = true;
            }
        }
    }

    private static void assertApiLevel17OrHigher() {
        if (Util.SDK_INT < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
    }

    private static boolean deviceNeedsSecureDummySurfaceWorkaround(Context context) {
        return Util.SDK_INT == 24 && (Util.MODEL.startsWith("SM-G950") || Util.MODEL.startsWith("SM-G955")) && !hasVrModeHighPerformanceSystemFeatureV24(context.getPackageManager());
    }

    @TargetApi(24)
    private static boolean hasVrModeHighPerformanceSystemFeatureV24(PackageManager packageManager) {
        return packageManager.hasSystemFeature("android.hardware.vr.high_performance");
    }

    /* access modifiers changed from: private */
    public static class DummySurfaceThread extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {
        private static final int MSG_INIT = 1;
        private static final int MSG_RELEASE = 3;
        private static final int MSG_UPDATE_TEXTURE = 2;
        private Handler handler;
        private Error initError;
        private RuntimeException initException;
        private DummySurface surface;
        private SurfaceTexture surfaceTexture;
        private final int[] textureIdHolder = new int[1];

        public DummySurfaceThread() {
            super("dummySurface");
        }

        public DummySurface init(boolean z) {
            boolean z2;
            start();
            this.handler = new Handler(getLooper(), this);
            synchronized (this) {
                z2 = false;
                this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            if (this.initException != null) {
                throw this.initException;
            } else if (this.initError == null) {
                return this.surface;
            } else {
                throw this.initError;
            }
        }

        public void release() {
            this.handler.sendEmptyMessage(3);
        }

        public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
            this.handler.sendEmptyMessage(2);
        }

        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    try {
                        initInternal(message.arg1 != 0);
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e) {
                        Log.e(DummySurface.TAG, "Failed to initialize dummy surface", e);
                        this.initException = e;
                        synchronized (this) {
                            notify();
                        }
                    } catch (Error e2) {
                        try {
                            Log.e(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                            this.initError = e2;
                            synchronized (this) {
                                notify();
                            }
                        } catch (Throwable th) {
                            synchronized (this) {
                                notify();
                                throw th;
                            }
                        }
                    }
                    return true;
                case 2:
                    this.surfaceTexture.updateTexImage();
                    return true;
                case 3:
                    try {
                        releaseInternal();
                    } catch (Throwable th2) {
                        quit();
                        throw th2;
                    }
                    quit();
                    return true;
                default:
                    return true;
            }
        }

        private void initInternal(boolean z) {
            int[] iArr;
            int[] iArr2;
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            Assertions.checkState(eglGetDisplay != null, "eglGetDisplay failed");
            int[] iArr3 = new int[2];
            Assertions.checkState(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr4 = new int[1];
            Assertions.checkState(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
            EGLConfig eGLConfig = eGLConfigArr[0];
            if (z) {
                iArr = new int[]{12440, 2, DummySurface.EGL_PROTECTED_CONTENT_EXT, 1, 12344};
            } else {
                iArr = new int[]{12440, 2, 12344};
            }
            EGLContext eglCreateContext = EGL14.eglCreateContext(eglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
            Assertions.checkState(eglCreateContext != null, "eglCreateContext failed");
            if (z) {
                iArr2 = new int[]{12375, 1, 12374, 1, DummySurface.EGL_PROTECTED_CONTENT_EXT, 1, 12344};
            } else {
                iArr2 = new int[]{12375, 1, 12374, 1, 12344};
            }
            EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, iArr2, 0);
            Assertions.checkState(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
            Assertions.checkState(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
            GLES20.glGenTextures(1, this.textureIdHolder, 0);
            this.surfaceTexture = new SurfaceTexture(this.textureIdHolder[0]);
            this.surfaceTexture.setOnFrameAvailableListener(this);
            this.surface = new DummySurface(this, this.surfaceTexture, z);
        }

        private void releaseInternal() {
            try {
                this.surfaceTexture.release();
            } finally {
                this.surface = null;
                this.surfaceTexture = null;
                GLES20.glDeleteTextures(1, this.textureIdHolder, 0);
            }
        }
    }
}
