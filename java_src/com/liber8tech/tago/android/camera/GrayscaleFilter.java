package com.liber8tech.tago.android.camera;

import android.content.Context;
import android.opengl.GLES20;
import com.liber8tech.tago.R;

public class GrayscaleFilter extends CameraFilter {
    private int program;

    public GrayscaleFilter(Context context) {
        super(context);
        this.program = MyGLUtils.buildProgram(context, R.raw.vertext, R.raw.grayscale);
    }

    @Override // com.liber8tech.tago.android.camera.CameraFilter
    public void onDraw(int i, int i2, int i3) {
        setupShaderInputs(this.program, new int[]{i2, i3}, new int[]{i}, new int[0][]);
        GLES20.glDrawArrays(5, 0, 4);
    }
}
