.class public Lcom/liber8tech/tago/android/camera/RenderBuffer;
.super Ljava/lang/Object;
.source "RenderBuffer.java"


# instance fields
.field private activeTexUnit:I

.field private frameBufferId:I

.field private height:I

.field private renderBufferId:I

.field private texId:I

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 12

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->texId:I

    .line 31
    iput v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->activeTexUnit:I

    .line 32
    iput v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->renderBufferId:I

    .line 33
    iput v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->frameBufferId:I

    .line 38
    iput p1, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->width:I

    .line 39
    iput p2, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->height:I

    .line 40
    iput p3, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->activeTexUnit:I

    const/4 v1, 0x1

    .line 41
    new-array v2, v1, [I

    .line 44
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 45
    invoke-static {}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->genTexture()I

    move-result p3

    iput p3, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->texId:I

    mul-int p3, p1, p2

    mul-int/lit8 p3, p3, 0x4

    .line 47
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    move v6, p1

    move v7, p2

    .line 48
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const p3, 0x46180400    # 9729.0f

    const/16 v4, 0x2801

    .line 50
    invoke-static {v3, v4, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    .line 51
    invoke-static {v3, v4, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x812f

    const/16 v4, 0x2802

    .line 52
    invoke-static {v3, v4, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 53
    invoke-static {v3, v4, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 56
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 57
    aget p3, v2, v0

    iput p3, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->frameBufferId:I

    .line 59
    iget p3, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->frameBufferId:I

    const v3, 0x8d40

    invoke-static {v3, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 62
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 63
    aget p3, v2, v0

    iput p3, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->renderBufferId:I

    .line 65
    iget p3, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->renderBufferId:I

    const v0, 0x8d41

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const p3, 0x81a5

    .line 66
    invoke-static {v0, p3, p1, p2}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 68
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/camera/RenderBuffer;->unbind()V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 5

    .line 88
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->width:I

    iget v1, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->height:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 90
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->frameBufferId:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 91
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->texId:I

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 93
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->renderBufferId:I

    const v2, 0x8d00

    const v3, 0x8d41

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    return-void
.end method

.method public getActiveTexUnit()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->activeTexUnit:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->height:I

    return v0
.end method

.method public getTexId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->texId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/liber8tech/tago/android/camera/RenderBuffer;->width:I

    return v0
.end method

.method public unbind()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 98
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method
