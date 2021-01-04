package com.google.android.gms.internal.vision;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.gms.dynamite.DynamiteModule;

public final class zzp {
    public static Bitmap zzb(Bitmap bitmap, zzn zzn) {
        int i;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (zzn.rotation != 0) {
            Matrix matrix = new Matrix();
            switch (zzn.rotation) {
                case 0:
                    i = 0;
                    break;
                case 1:
                    i = 90;
                    break;
                case 2:
                    i = SubsamplingScaleImageView.ORIENTATION_180;
                    break;
                case 3:
                    i = SubsamplingScaleImageView.ORIENTATION_270;
                    break;
                default:
                    throw new IllegalArgumentException("Unsupported rotation degree.");
            }
            matrix.postRotate((float) i);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        }
        if (zzn.rotation == 1 || zzn.rotation == 3) {
            zzn.width = height;
            zzn.height = width;
        }
        return bitmap;
    }

    public static boolean zza(Context context, String str) {
        return DynamiteModule.getLocalVersion(context, str) > DynamiteModule.getRemoteVersion(context, "com.google.android.gms.vision.dynamite");
    }
}
