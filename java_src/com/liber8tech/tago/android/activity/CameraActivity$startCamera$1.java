package com.liber8tech.tago.android.activity;

import android.hardware.Camera;
import com.liber8tech.tago.android.camera.CameraRenderer;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "onCameraReady"}, k = 3, mv = {1, 1, 13})
/* compiled from: CameraActivity.kt */
final class CameraActivity$startCamera$1 implements CameraRenderer.OnCameraReadyListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$startCamera$1(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // com.liber8tech.tago.android.camera.CameraRenderer.OnCameraReadyListener
    public final void onCameraReady() {
        CameraRenderer access$getCameraRenderer$p = CameraActivity.access$getCameraRenderer$p(this.this$0);
        Camera.Size previewSize = access$getCameraRenderer$p != null ? access$getCameraRenderer$p.getPreviewSize() : null;
        CameraActivity cameraActivity = this.this$0;
        int i = 0;
        int i2 = previewSize != null ? previewSize.height : 0;
        if (previewSize != null) {
            i = previewSize.width;
        }
        CameraActivity.access$updateTextureViewSize(cameraActivity, i2, i);
    }
}
