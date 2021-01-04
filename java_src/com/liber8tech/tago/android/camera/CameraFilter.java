package com.liber8tech.tago.android.camera;

import android.content.Context;
import android.opengl.GLES20;
import android.support.annotation.CallSuper;
import com.liber8tech.tago.R;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import timber.log.Timber;

public abstract class CameraFilter {
    private static final int BUF_ACTIVE_TEX_UNIT = 33992;
    private static RenderBuffer CAMERA_RENDER_BUF;
    static int PROGRAM = 0;
    private static final float[] ROATED_TEXTURE_COORDS = {1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private static FloatBuffer ROATED_TEXTURE_COORD_BUF;
    static final float[] SQUARE_COORDS = {1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f};
    static final float[] TEXTURE_COORDS = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    static FloatBuffer TEXTURE_COORD_BUF;
    static FloatBuffer VERTEX_BUF;
    final long START_TIME = System.currentTimeMillis();
    int iFrame = 0;

    /* access modifiers changed from: package-private */
    public abstract void onDraw(int i, int i2, int i3);

    public CameraFilter(Context context) {
        if (VERTEX_BUF == null) {
            VERTEX_BUF = ByteBuffer.allocateDirect(SQUARE_COORDS.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            VERTEX_BUF.put(SQUARE_COORDS);
            VERTEX_BUF.position(0);
        }
        if (TEXTURE_COORD_BUF == null) {
            TEXTURE_COORD_BUF = ByteBuffer.allocateDirect(TEXTURE_COORDS.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            TEXTURE_COORD_BUF.put(TEXTURE_COORDS);
            TEXTURE_COORD_BUF.position(0);
        }
        if (ROATED_TEXTURE_COORD_BUF == null) {
            ROATED_TEXTURE_COORD_BUF = ByteBuffer.allocateDirect(ROATED_TEXTURE_COORDS.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            ROATED_TEXTURE_COORD_BUF.put(ROATED_TEXTURE_COORDS);
            ROATED_TEXTURE_COORD_BUF.position(0);
        }
        if (PROGRAM == 0) {
            PROGRAM = MyGLUtils.buildProgram(context, R.raw.vertext, R.raw.original_rtt);
        }
    }

    @CallSuper
    public void onAttach() {
        this.iFrame = 0;
    }

    public final void draw(int i, int i2, int i3) {
        try {
            if (!(CAMERA_RENDER_BUF != null && CAMERA_RENDER_BUF.getWidth() == i2 && CAMERA_RENDER_BUF.getHeight() == i3)) {
                CAMERA_RENDER_BUF = new RenderBuffer(i2, i3, BUF_ACTIVE_TEX_UNIT);
            }
            GLES20.glUseProgram(PROGRAM);
            int glGetUniformLocation = GLES20.glGetUniformLocation(PROGRAM, "iChannel0");
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i);
            GLES20.glUniform1i(glGetUniformLocation, 0);
            int glGetAttribLocation = GLES20.glGetAttribLocation(PROGRAM, "vPosition");
            GLES20.glEnableVertexAttribArray(glGetAttribLocation);
            GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 8, (Buffer) VERTEX_BUF);
            int glGetAttribLocation2 = GLES20.glGetAttribLocation(PROGRAM, "vTexCoord");
            GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
            GLES20.glVertexAttribPointer(glGetAttribLocation2, 2, 5126, false, 8, (Buffer) ROATED_TEXTURE_COORD_BUF);
            CAMERA_RENDER_BUF.bind();
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            CAMERA_RENDER_BUF.unbind();
            GLES20.glClear(16384);
            onDraw(CAMERA_RENDER_BUF.getTexId(), i2, i3);
            this.iFrame++;
        } catch (Exception e) {
            Timber.e(e);
        }
    }

    /* access modifiers changed from: package-private */
    public void setupShaderInputs(int i, int[] iArr, int[] iArr2, int[][] iArr3) {
        setupShaderInputs(i, VERTEX_BUF, TEXTURE_COORD_BUF, iArr, iArr2, iArr3);
    }

    /* access modifiers changed from: package-private */
    public void setupShaderInputs(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, int[] iArr, int[] iArr2, int[][] iArr3) {
        GLES20.glUseProgram(i);
        GLES20.glUniform3fv(GLES20.glGetUniformLocation(i, "iResolution"), 1, FloatBuffer.wrap(new float[]{(float) iArr[0], (float) iArr[1], 1.0f}));
        GLES20.glUniform1f(GLES20.glGetUniformLocation(i, "iGlobalTime"), ((float) (System.currentTimeMillis() - this.START_TIME)) / 1000.0f);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(i, "iFrame"), this.iFrame);
        int glGetAttribLocation = GLES20.glGetAttribLocation(i, "vPosition");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 8, (Buffer) floatBuffer);
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(i, "vTexCoord");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
        GLES20.glVertexAttribPointer(glGetAttribLocation2, 2, 5126, false, 8, (Buffer) floatBuffer2);
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            int glGetUniformLocation = GLES20.glGetUniformLocation(i, "iChannel" + i2);
            GLES20.glActiveTexture(33984 + i2);
            GLES20.glBindTexture(3553, iArr2[i2]);
            GLES20.glUniform1i(glGetUniformLocation, i2);
        }
        float[] fArr = new float[(iArr3.length * 3)];
        for (int i3 = 0; i3 < iArr3.length; i3++) {
            int i4 = i3 * 3;
            fArr[i4] = (float) iArr3[i3][0];
            fArr[i4 + 1] = (float) iArr3[i3][1];
            fArr[i4 + 2] = 1.0f;
        }
        GLES20.glUniform3fv(GLES20.glGetUniformLocation(i, "iChannelResolution"), fArr.length, FloatBuffer.wrap(fArr));
    }

    public static void release() {
        PROGRAM = 0;
        CAMERA_RENDER_BUF = null;
    }
}
