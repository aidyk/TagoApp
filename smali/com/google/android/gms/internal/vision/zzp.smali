.class public final Lcom/google/android/gms/internal/vision/zzp;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 18
    invoke-static {p0, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v0, "com.google.android.gms.vision.dynamite"

    .line 19
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/zzn;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/vision/zzn;->rotation:I

    if-eqz v0, :cond_0

    .line 4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/vision/zzn;->rotation:I

    packed-switch v0, :pswitch_data_0

    .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported rotation degree."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    .line 12
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v7

    move v4, v8

    .line 13
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 14
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/vision/zzn;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/vision/zzn;->rotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 15
    :cond_1
    iput v8, p1, Lcom/google/android/gms/internal/vision/zzn;->width:I

    .line 16
    iput v7, p1, Lcom/google/android/gms/internal/vision/zzn;->height:I

    :cond_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
