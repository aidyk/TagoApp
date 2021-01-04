.class public Lcom/liber8tech/tago/android/camera/GrayscaleFilter;
.super Lcom/liber8tech/tago/android/camera/CameraFilter;
.source "GrayscaleFilter.java"


# instance fields
.field private program:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/android/camera/CameraFilter;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0002

    const/high16 v1, 0x7f0e0000

    .line 33
    invoke-static {p1, v0, v1}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->buildProgram(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/liber8tech/tago/android/camera/GrayscaleFilter;->program:I

    return-void
.end method


# virtual methods
.method public onDraw(III)V
    .locals 3

    .line 38
    iget v0, p0, Lcom/liber8tech/tago/android/camera/GrayscaleFilter;->program:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    new-array p2, p2, [I

    aput p1, p2, v2

    new-array p1, v2, [[I

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/liber8tech/tago/android/camera/GrayscaleFilter;->setupShaderInputs(I[I[I[[I)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 42
    invoke-static {p1, v2, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method
