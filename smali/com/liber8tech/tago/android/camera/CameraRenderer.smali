.class public Lcom/liber8tech/tago/android/camera/CameraRenderer;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;,
        Lcom/liber8tech/tago/android/camera/CameraRenderer$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final DRAW_INTERVAL:I = 0x21

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CameraRenderer"


# instance fields
.field private activity:Landroid/app/Activity;

.field private camera:Landroid/hardware/Camera;

.field private cameraReadyListener:Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;

.field private cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private cameraTextureId:I

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gheight:I

.field private gwidth:I

.field private renderThread:Ljava/lang/Thread;

.field private selectedFilter:Lcom/liber8tech/tago/android/camera/CameraFilter;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->activity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraReadyListener:Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;

    return-void
.end method

.method private static chooseOptimalSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;F)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 284
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    .line 285
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x1000

    if-gt v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_0

    .line 286
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_1
    new-instance p0, Lcom/liber8tech/tago/android/camera/CameraRenderer$CompareSizesByArea;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/liber8tech/tago/android/camera/CameraRenderer$CompareSizesByArea;-><init>(Lcom/liber8tech/tago/android/camera/CameraRenderer$1;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    return-object p0
.end method

.method private getBackCamera()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/hardware/Camera$CameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 265
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 268
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 269
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 270
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initGL(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .line 204
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 206
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 207
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x2

    .line 212
    new-array v0, v0, [I

    .line 213
    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 218
    new-array v7, v0, [I

    .line 219
    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v1, 0xf

    .line 220
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    .line 233
    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 236
    aget v2, v7, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 237
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x3

    .line 243
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 244
    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v0, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 245
    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 247
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 259
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v0, 0x300b

    if-ne p1, v0, :cond_4

    const-string p1, "CameraRenderer"

    const-string v0, "eglCreateWindowSurface returned EGL10.EGL_BAD_NATIVE_WINDOW"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglCreateWindowSurface failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglConfig not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 235
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 215
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 209
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setGrayscaleFilter()V
    .locals 2

    .line 277
    new-instance v0, Lcom/liber8tech/tago/android/camera/GrayscaleFilter;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/camera/GrayscaleFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->selectedFilter:Lcom/liber8tech/tago/android/camera/CameraFilter;

    .line 278
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->selectedFilter:Lcom/liber8tech/tago/android/camera/CameraFilter;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/camera/CameraFilter;->onAttach()V

    return-void
.end method


# virtual methods
.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getRotationAngle()I
    .locals 3

    .line 174
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 175
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 176
    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x5a

    .line 192
    :goto_0
    :pswitch_3
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    .line 103
    iput-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    neg-int p1, p2

    .line 104
    iput p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gwidth:I

    neg-int p1, p3

    .line 105
    iput p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gheight:I

    .line 108
    invoke-direct {p0}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->getBackCamera()Landroid/util/Pair;

    move-result-object p1

    .line 109
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 110
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    .line 111
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p2

    const p3, 0x3fe38e39

    invoke-static {p2, p3}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->chooseOptimalSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 113
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->chooseOptimalSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object p3

    const-string v0, "continuous-picture"

    .line 114
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 115
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 116
    iget p2, p3, Landroid/hardware/Camera$Size;->width:I

    iget p3, p3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p2, p3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 117
    iget-object p2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 118
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraReadyListener:Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;

    invoke-interface {p1}, Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;->onCameraReady()V

    .line 121
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 86
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->renderThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 91
    :cond_1
    invoke-static {}, Lcom/liber8tech/tago/android/camera/CameraFilter;->release()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    neg-int p1, p2

    .line 78
    iput p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gwidth:I

    neg-int p1, p3

    .line 79
    iput p1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gheight:I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->initGL(Landroid/graphics/SurfaceTexture;)V

    .line 128
    invoke-direct {p0}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->setGrayscaleFilter()V

    const v0, 0x8d65

    .line 131
    invoke-static {v0}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->genTexture(I)I

    move-result v0

    iput v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraTextureId:I

    .line 132
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 137
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 143
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 145
    :try_start_1
    iget v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gwidth:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gheight:I

    if-gez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gwidth:I

    neg-int v0, v0

    iput v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gwidth:I

    iget v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gheight:I

    neg-int v2, v2

    iput v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gheight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_0
    const/16 v0, 0x4000

    .line 148
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 151
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :try_start_2
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 153
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->selectedFilter:Lcom/liber8tech/tago/android/camera/CameraFilter;

    iget v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraTextureId:I

    iget v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gwidth:I

    iget v3, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->gheight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/liber8tech/tago/android/camera/CameraFilter;->draw(III)V

    .line 159
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 160
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-wide/16 v0, 0x21

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 153
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 165
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x1

    .line 170
    new-array v2, v0, [I

    iget v3, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->cameraTextureId:I

    aput v3, v2, v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$PictureCallback;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/liber8tech/tago/android/camera/CameraRenderer;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
