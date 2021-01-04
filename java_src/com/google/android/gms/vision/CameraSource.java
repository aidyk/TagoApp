package com.google.android.gms.vision;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.SystemClock;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.gms.common.images.Size;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

public class CameraSource {
    @SuppressLint({"InlinedApi"})
    public static final int CAMERA_FACING_BACK = 0;
    @SuppressLint({"InlinedApi"})
    public static final int CAMERA_FACING_FRONT = 1;
    private int facing;
    private int rotation;
    private Context zze;
    private final Object zzf;
    @GuardedBy("cameraLock")
    private Camera zzg;
    private Size zzh;
    private float zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private SurfaceTexture zzm;
    private boolean zzn;
    private Thread zzo;
    private zzb zzp;
    private Map<byte[], ByteBuffer> zzq;

    public interface PictureCallback {
        void onPictureTaken(byte[] bArr);
    }

    public interface ShutterCallback {
        void onShutter();
    }

    /* access modifiers changed from: package-private */
    public class zza implements Camera.PreviewCallback {
        private zza() {
        }

        public final void onPreviewFrame(byte[] bArr, Camera camera) {
            CameraSource.this.zzp.zza(bArr, camera);
        }
    }

    class zzc implements Camera.PictureCallback {
        private PictureCallback zzz;

        private zzc() {
        }

        public final void onPictureTaken(byte[] bArr, Camera camera) {
            if (this.zzz != null) {
                this.zzz.onPictureTaken(bArr);
            }
            synchronized (CameraSource.this.zzf) {
                if (CameraSource.this.zzg != null) {
                    CameraSource.this.zzg.startPreview();
                }
            }
        }
    }

    static class zzd implements Camera.ShutterCallback {
        private ShutterCallback zzaa;

        private zzd() {
        }

        public final void onShutter() {
            if (this.zzaa != null) {
                this.zzaa.onShutter();
            }
        }
    }

    public void release() {
        synchronized (this.zzf) {
            stop();
            this.zzp.release();
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public static class zze {
        private Size zzab;
        private Size zzac;

        public zze(Camera.Size size, @Nullable Camera.Size size2) {
            this.zzab = new Size(size.width, size.height);
            if (size2 != null) {
                this.zzac = new Size(size2.width, size2.height);
            }
        }

        public final Size zzb() {
            return this.zzab;
        }

        @Nullable
        public final Size zzc() {
            return this.zzac;
        }
    }

    @RequiresPermission("android.permission.CAMERA")
    public CameraSource start() throws IOException {
        synchronized (this.zzf) {
            if (this.zzg != null) {
                return this;
            }
            this.zzg = zza();
            this.zzm = new SurfaceTexture(100);
            this.zzg.setPreviewTexture(this.zzm);
            this.zzn = true;
            this.zzg.startPreview();
            this.zzo = new Thread(this.zzp);
            this.zzo.setName("gms.vision.CameraSource");
            this.zzp.setActive(true);
            this.zzo.start();
            return this;
        }
    }

    /* access modifiers changed from: package-private */
    public class zzb implements Runnable {
        private final Object lock = new Object();
        private Detector<?> zzr;
        private long zzu = SystemClock.elapsedRealtime();
        private boolean zzv = true;
        private long zzw;
        private int zzx = 0;
        private ByteBuffer zzy;

        zzb(Detector<?> detector) {
            this.zzr = detector;
        }

        /* access modifiers changed from: package-private */
        @SuppressLint({"Assert"})
        public final void release() {
            this.zzr.release();
            this.zzr = null;
        }

        /* access modifiers changed from: package-private */
        public final void setActive(boolean z) {
            synchronized (this.lock) {
                this.zzv = z;
                this.lock.notifyAll();
            }
        }

        /* access modifiers changed from: package-private */
        public final void zza(byte[] bArr, Camera camera) {
            synchronized (this.lock) {
                if (this.zzy != null) {
                    camera.addCallbackBuffer(this.zzy.array());
                    this.zzy = null;
                }
                if (!CameraSource.this.zzq.containsKey(bArr)) {
                    Log.d("CameraSource", "Skipping frame. Could not find ByteBuffer associated with the image data from the camera.");
                    return;
                }
                this.zzw = SystemClock.elapsedRealtime() - this.zzu;
                this.zzx++;
                this.zzy = (ByteBuffer) CameraSource.this.zzq.get(bArr);
                this.lock.notifyAll();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
            r6.zzr.receiveFrame(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0075, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0077, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
            android.util.Log.e("CameraSource", "Exception thrown from receiver.", r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x008e, code lost:
            r6.zzt.zzg.addCallbackBuffer(r2.array());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x009b, code lost:
            throw r0;
         */
        @android.annotation.SuppressLint({"InlinedApi"})
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
            // Method dump skipped, instructions count: 159
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.vision.CameraSource.zzb.run():void");
        }
    }

    public static class Builder {
        private final Detector<?> zzr;
        private CameraSource zzs = new CameraSource();

        public Builder(Context context, Detector<?> detector) {
            if (context == null) {
                throw new IllegalArgumentException("No context supplied.");
            } else if (detector != null) {
                this.zzr = detector;
                this.zzs.zze = context;
            } else {
                throw new IllegalArgumentException("No detector supplied.");
            }
        }

        public Builder setRequestedFps(float f) {
            if (f > 0.0f) {
                this.zzs.zzi = f;
                return this;
            }
            StringBuilder sb = new StringBuilder(28);
            sb.append("Invalid fps: ");
            sb.append(f);
            throw new IllegalArgumentException(sb.toString());
        }

        public Builder setRequestedPreviewSize(int i, int i2) {
            if (i <= 0 || i > 1000000 || i2 <= 0 || i2 > 1000000) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Invalid preview size: ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
            this.zzs.zzj = i;
            this.zzs.zzk = i2;
            return this;
        }

        public Builder setFacing(int i) {
            if (i == 0 || i == 1) {
                this.zzs.facing = i;
                return this;
            }
            StringBuilder sb = new StringBuilder(27);
            sb.append("Invalid camera: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }

        public Builder setAutoFocusEnabled(boolean z) {
            this.zzs.zzl = z;
            return this;
        }

        public CameraSource build() {
            CameraSource cameraSource = this.zzs;
            CameraSource cameraSource2 = this.zzs;
            cameraSource2.getClass();
            cameraSource.zzp = new zzb(this.zzr);
            return this.zzs;
        }
    }

    @RequiresPermission("android.permission.CAMERA")
    public CameraSource start(SurfaceHolder surfaceHolder) throws IOException {
        synchronized (this.zzf) {
            if (this.zzg != null) {
                return this;
            }
            this.zzg = zza();
            this.zzg.setPreviewDisplay(surfaceHolder);
            this.zzg.startPreview();
            this.zzo = new Thread(this.zzp);
            this.zzp.setActive(true);
            this.zzo.start();
            this.zzn = false;
            return this;
        }
    }

    public void stop() {
        synchronized (this.zzf) {
            this.zzp.setActive(false);
            if (this.zzo != null) {
                try {
                    this.zzo.join();
                } catch (InterruptedException unused) {
                    Log.d("CameraSource", "Frame processing thread interrupted on release.");
                }
                this.zzo = null;
            }
            if (this.zzg != null) {
                this.zzg.stopPreview();
                this.zzg.setPreviewCallbackWithBuffer(null);
                try {
                    if (this.zzn) {
                        this.zzg.setPreviewTexture(null);
                    } else {
                        this.zzg.setPreviewDisplay(null);
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
                    sb.append("Failed to clear camera preview: ");
                    sb.append(valueOf);
                    Log.e("CameraSource", sb.toString());
                }
                this.zzg.release();
                this.zzg = null;
            }
            this.zzq.clear();
        }
    }

    public Size getPreviewSize() {
        return this.zzh;
    }

    public int getCameraFacing() {
        return this.facing;
    }

    public void takePicture(ShutterCallback shutterCallback, PictureCallback pictureCallback) {
        synchronized (this.zzf) {
            if (this.zzg != null) {
                zzd zzd2 = new zzd();
                zzd2.zzaa = shutterCallback;
                zzc zzc2 = new zzc();
                zzc2.zzz = pictureCallback;
                this.zzg.takePicture(zzd2, null, null, zzc2);
            }
        }
    }

    private CameraSource() {
        this.zzf = new Object();
        this.facing = 0;
        this.zzi = 30.0f;
        this.zzj = 1024;
        this.zzk = 768;
        this.zzl = false;
        this.zzq = new HashMap();
    }

    @SuppressLint({"InlinedApi"})
    private final Camera zza() throws IOException {
        int i;
        int i2;
        int i3 = this.facing;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= Camera.getNumberOfCameras()) {
                i5 = -1;
                break;
            }
            Camera.getCameraInfo(i5, cameraInfo);
            if (cameraInfo.facing == i3) {
                break;
            }
            i5++;
        }
        if (i5 != -1) {
            Camera open = Camera.open(i5);
            int i6 = this.zzj;
            int i7 = this.zzk;
            Camera.Parameters parameters = open.getParameters();
            List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
            List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
            ArrayList arrayList = new ArrayList();
            for (Camera.Size size : supportedPreviewSizes) {
                float f = ((float) size.width) / ((float) size.height);
                Iterator<Camera.Size> it2 = supportedPictureSizes.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Camera.Size next = it2.next();
                    if (Math.abs(f - (((float) next.width) / ((float) next.height))) < 0.01f) {
                        arrayList.add(new zze(size, next));
                        break;
                    }
                }
            }
            if (arrayList.size() == 0) {
                Log.w("CameraSource", "No preview sizes have a corresponding same-aspect-ratio picture size");
                for (Camera.Size size2 : supportedPreviewSizes) {
                    arrayList.add(new zze(size2, null));
                }
            }
            ArrayList arrayList2 = arrayList;
            int size3 = arrayList2.size();
            int i8 = Integer.MAX_VALUE;
            zze zze2 = null;
            int i9 = 0;
            int i10 = Integer.MAX_VALUE;
            while (i9 < size3) {
                Object obj = arrayList2.get(i9);
                i9++;
                zze zze3 = (zze) obj;
                Size zzb2 = zze3.zzb();
                int abs = Math.abs(zzb2.getWidth() - i6) + Math.abs(zzb2.getHeight() - i7);
                if (abs < i10) {
                    zze2 = zze3;
                    i10 = abs;
                }
            }
            if (zze2 != null) {
                Size zzc2 = zze2.zzc();
                this.zzh = zze2.zzb();
                int i11 = (int) (this.zzi * 1000.0f);
                int[] iArr = null;
                for (int[] iArr2 : open.getParameters().getSupportedPreviewFpsRange()) {
                    int abs2 = Math.abs(i11 - iArr2[0]) + Math.abs(i11 - iArr2[1]);
                    if (abs2 < i8) {
                        iArr = iArr2;
                        i8 = abs2;
                    }
                }
                if (iArr != null) {
                    Camera.Parameters parameters2 = open.getParameters();
                    if (zzc2 != null) {
                        parameters2.setPictureSize(zzc2.getWidth(), zzc2.getHeight());
                    }
                    parameters2.setPreviewSize(this.zzh.getWidth(), this.zzh.getHeight());
                    parameters2.setPreviewFpsRange(iArr[0], iArr[1]);
                    parameters2.setPreviewFormat(17);
                    int rotation2 = ((WindowManager) this.zze.getSystemService("window")).getDefaultDisplay().getRotation();
                    switch (rotation2) {
                        case 0:
                            break;
                        case 1:
                            i4 = 90;
                            break;
                        case 2:
                            i4 = SubsamplingScaleImageView.ORIENTATION_180;
                            break;
                        case 3:
                            i4 = SubsamplingScaleImageView.ORIENTATION_270;
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(31);
                            sb.append("Bad rotation value: ");
                            sb.append(rotation2);
                            Log.e("CameraSource", sb.toString());
                            break;
                    }
                    Camera.CameraInfo cameraInfo2 = new Camera.CameraInfo();
                    Camera.getCameraInfo(i5, cameraInfo2);
                    if (cameraInfo2.facing == 1) {
                        i2 = (cameraInfo2.orientation + i4) % 360;
                        i = (360 - i2) % 360;
                    } else {
                        i2 = ((cameraInfo2.orientation - i4) + 360) % 360;
                        i = i2;
                    }
                    this.rotation = i2 / 90;
                    open.setDisplayOrientation(i);
                    parameters2.setRotation(i2);
                    if (this.zzl) {
                        if (parameters2.getSupportedFocusModes().contains("continuous-video")) {
                            parameters2.setFocusMode("continuous-video");
                        } else {
                            Log.i("CameraSource", "Camera auto focus is not supported on this device.");
                        }
                    }
                    open.setParameters(parameters2);
                    open.setPreviewCallbackWithBuffer(new zza());
                    open.addCallbackBuffer(zza(this.zzh));
                    open.addCallbackBuffer(zza(this.zzh));
                    open.addCallbackBuffer(zza(this.zzh));
                    open.addCallbackBuffer(zza(this.zzh));
                    return open;
                }
                throw new IOException("Could not find suitable preview frames per second range.");
            }
            throw new IOException("Could not find suitable preview size.");
        }
        throw new IOException("Could not find requested camera.");
    }

    @SuppressLint({"InlinedApi"})
    private final byte[] zza(Size size) {
        double height = (double) ((long) (size.getHeight() * size.getWidth() * ImageFormat.getBitsPerPixel(17)));
        Double.isNaN(height);
        byte[] bArr = new byte[(((int) Math.ceil(height / 8.0d)) + 1)];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (!wrap.hasArray() || wrap.array() != bArr) {
            throw new IllegalStateException("Failed to create valid buffer for camera source.");
        }
        this.zzq.put(bArr, wrap);
        return bArr;
    }
}
