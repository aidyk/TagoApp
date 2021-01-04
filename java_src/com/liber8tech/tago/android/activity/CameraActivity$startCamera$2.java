package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.android.camera.CameraRenderer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n¢\u0006\u0002\b\u000e"}, d2 = {"<anonymous>", "", "v", "Landroid/view/View;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "<anonymous parameter 2>", "<anonymous parameter 3>", "<anonymous parameter 4>", "<anonymous parameter 5>", "<anonymous parameter 6>", "<anonymous parameter 7>", "<anonymous parameter 8>", "onLayoutChange"}, k = 3, mv = {1, 1, 13})
/* compiled from: CameraActivity.kt */
final class CameraActivity$startCamera$2 implements View.OnLayoutChangeListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$startCamera$2(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        CameraRenderer access$getCameraRenderer$p = CameraActivity.access$getCameraRenderer$p(this.this$0);
        if (access$getCameraRenderer$p != null) {
            Intrinsics.checkExpressionValueIsNotNull(view, "v");
            access$getCameraRenderer$p.onSurfaceTextureSizeChanged(null, view.getWidth(), view.getHeight());
        }
    }
}
