package com.liber8tech.tago.android.camera;

import android.app.Activity;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import android.util.Pair;
import android.view.TextureView;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

public class CameraRenderer implements Runnable, TextureView.SurfaceTextureListener {
    private static final int DRAW_INTERVAL = 33;
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final int EGL_OPENGL_ES2_BIT = 4;
    private static final String TAG = "CameraRenderer";
    private Activity activity;
    private Camera camera;
    private OnCameraReadyListener cameraReadyListener;
    private SurfaceTexture cameraSurfaceTexture;
    private int cameraTextureId;
    private EGL10 egl10;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;
    private EGLSurface eglSurface;
    private int gheight;
    private int gwidth;
    private Thread renderThread;
    private CameraFilter selectedFilter;
    private SurfaceTexture surfaceTexture;

    public interface OnCameraReadyListener {
        void onCameraReady();
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture2) {
    }

    public CameraRenderer(Activity activity2, OnCameraReadyListener onCameraReadyListener) {
        this.activity = activity2;
        this.cameraReadyListener = onCameraReadyListener;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture2, int i, int i2) {
        this.gwidth = -i;
        this.gheight = -i2;
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture2) {
        if (this.camera != null) {
            this.camera.stopPreview();
            this.camera.release();
        }
        if (this.renderThread != null && this.renderThread.isAlive()) {
            this.renderThread.interrupt();
        }
        CameraFilter.release();
        return true;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture2, int i, int i2) {
        if (this.renderThread != null && this.renderThread.isAlive()) {
            this.renderThread.interrupt();
        }
        this.renderThread = new Thread(this);
        this.surfaceTexture = surfaceTexture2;
        this.gwidth = -i;
        this.gheight = -i2;
        this.camera = Camera.open(((Integer) getBackCamera().second).intValue());
        Camera.Parameters parameters = this.camera.getParameters();
        Camera.Size chooseOptimalSize = chooseOptimalSize(parameters.getSupportedPictureSizes(), 1.7777778f);
        Camera.Size chooseOptimalSize2 = chooseOptimalSize(parameters.getSupportedPreviewSizes(), 1.7777778f);
        parameters.setFocusMode("continuous-picture");
        parameters.setPictureSize(chooseOptimalSize.width, chooseOptimalSize.height);
        parameters.setPreviewSize(chooseOptimalSize2.width, chooseOptimalSize2.height);
        this.camera.setParameters(parameters);
        this.cameraReadyListener.onCameraReady();
        this.renderThread.start();
    }

    public void run() {
        initGL(this.surfaceTexture);
        setGrayscaleFilter();
        this.cameraTextureId = MyGLUtils.genTexture(36197);
        this.cameraSurfaceTexture = new SurfaceTexture(this.cameraTextureId);
        try {
            this.camera.setPreviewTexture(this.cameraSurfaceTexture);
            this.camera.startPreview();
        } catch (IOException unused) {
        }
        while (!Thread.currentThread().isInterrupted()) {
            try {
                if (this.gwidth < 0 && this.gheight < 0) {
                    int i = -this.gwidth;
                    this.gwidth = i;
                    int i2 = -this.gheight;
                    this.gheight = i2;
                    GLES20.glViewport(0, 0, i, i2);
                }
                GLES20.glClear(16384);
                synchronized (this) {
                    this.cameraSurfaceTexture.updateTexImage();
                }
                this.selectedFilter.draw(this.cameraTextureId, this.gwidth, this.gheight);
                GLES20.glFlush();
                this.egl10.eglSwapBuffers(this.eglDisplay, this.eglSurface);
                Thread.sleep(33);
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
        this.cameraSurfaceTexture.release();
        GLES20.glDeleteTextures(1, new int[]{this.cameraTextureId}, 0);
    }

    public int getRotationAngle() {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i = 0;
        Camera.getCameraInfo(0, cameraInfo);
        switch (this.activity.getWindowManager().getDefaultDisplay().getRotation()) {
            case 1:
                i = 90;
                break;
            case 2:
                i = SubsamplingScaleImageView.ORIENTATION_180;
                break;
            case 3:
                i = SubsamplingScaleImageView.ORIENTATION_270;
                break;
        }
        return ((cameraInfo.orientation - i) + 360) % 360;
    }

    public void takePicture(Camera.PictureCallback pictureCallback) {
        this.camera.takePicture(null, null, pictureCallback);
    }

    public Camera.Size getPreviewSize() {
        return this.camera.getParameters().getPreviewSize();
    }

    private void initGL(SurfaceTexture surfaceTexture2) {
        this.egl10 = (EGL10) EGLContext.getEGL();
        this.eglDisplay = this.egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.eglDisplay != EGL10.EGL_NO_DISPLAY) {
            if (this.egl10.eglInitialize(this.eglDisplay, new int[2])) {
                int[] iArr = new int[1];
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (this.egl10.eglChooseConfig(this.eglDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344}, eGLConfigArr, 1, iArr)) {
                    EGLConfig eGLConfig = iArr[0] > 0 ? eGLConfigArr[0] : null;
                    if (eGLConfig != null) {
                        this.eglContext = this.egl10.eglCreateContext(this.eglDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{EGL_CONTEXT_CLIENT_VERSION, 2, 12344});
                        this.eglSurface = this.egl10.eglCreateWindowSurface(this.eglDisplay, eGLConfig, surfaceTexture2, null);
                        if (this.eglSurface == null || this.eglSurface == EGL10.EGL_NO_SURFACE) {
                            int eglGetError = this.egl10.eglGetError();
                            if (eglGetError == 12299) {
                                Log.e(TAG, "eglCreateWindowSurface returned EGL10.EGL_BAD_NATIVE_WINDOW");
                                return;
                            }
                            throw new RuntimeException("eglCreateWindowSurface failed " + GLUtils.getEGLErrorString(eglGetError));
                        } else if (!this.egl10.eglMakeCurrent(this.eglDisplay, this.eglSurface, this.eglSurface, this.eglContext)) {
                            throw new RuntimeException("eglMakeCurrent failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                        }
                    } else {
                        throw new RuntimeException("eglConfig not initialized");
                    }
                } else {
                    throw new IllegalArgumentException("eglChooseConfig failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
                }
            } else {
                throw new RuntimeException("eglInitialize failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
            }
        } else {
            throw new RuntimeException("eglGetDisplay failed " + GLUtils.getEGLErrorString(this.egl10.eglGetError()));
        }
    }

    private Pair<Camera.CameraInfo, Integer> getBackCamera() {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i = 0; i < numberOfCameras; i++) {
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 0) {
                return new Pair<>(cameraInfo, Integer.valueOf(i));
            }
        }
        return null;
    }

    private void setGrayscaleFilter() {
        this.selectedFilter = new GrayscaleFilter(this.activity);
        this.selectedFilter.onAttach();
    }

    private static Camera.Size chooseOptimalSize(List<Camera.Size> list, float f) {
        ArrayList arrayList = new ArrayList();
        for (Camera.Size size : list) {
            if (((float) size.width) / ((float) size.height) == f && size.height <= 4096 && size.width <= 4096) {
                arrayList.add(size);
            }
        }
        return (Camera.Size) Collections.max(arrayList, new CompareSizesByArea());
    }

    /* access modifiers changed from: private */
    public static class CompareSizesByArea implements Comparator<Camera.Size> {
        private CompareSizesByArea() {
        }

        public int compare(Camera.Size size, Camera.Size size2) {
            return Long.signum((((long) size.width) * ((long) size.height)) - (((long) size2.width) * ((long) size2.height)));
        }
    }
}
