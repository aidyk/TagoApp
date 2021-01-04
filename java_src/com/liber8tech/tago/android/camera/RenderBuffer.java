package com.liber8tech.tago.android.camera;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class RenderBuffer {
    private int activeTexUnit = 0;
    private int frameBufferId = 0;
    private int height;
    private int renderBufferId = 0;
    private int texId = 0;
    private int width;

    public RenderBuffer(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.activeTexUnit = i3;
        int[] iArr = new int[1];
        GLES20.glActiveTexture(i3);
        this.texId = MyGLUtils.genTexture();
        GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, ByteBuffer.allocateDirect(i * i2 * 4).order(ByteOrder.nativeOrder()).asIntBuffer());
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glGenFramebuffers(1, iArr, 0);
        this.frameBufferId = iArr[0];
        GLES20.glBindFramebuffer(36160, this.frameBufferId);
        GLES20.glGenRenderbuffers(1, iArr, 0);
        this.renderBufferId = iArr[0];
        GLES20.glBindRenderbuffer(36161, this.renderBufferId);
        GLES20.glRenderbufferStorage(36161, 33189, i, i2);
        unbind();
    }

    public int getTexId() {
        return this.texId;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getActiveTexUnit() {
        return this.activeTexUnit;
    }

    public void bind() {
        GLES20.glViewport(0, 0, this.width, this.height);
        GLES20.glBindFramebuffer(36160, this.frameBufferId);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.texId, 0);
        GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, this.renderBufferId);
    }

    public void unbind() {
        GLES20.glBindFramebuffer(36160, 0);
    }
}
