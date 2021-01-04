.class Lcom/liber8tech/tago/android/camera/MyGLUtils;
.super Ljava/lang/Object;
.source "MyGLUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyGLUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProgram(Landroid/content/Context;II)I
    .locals 0

    .line 95
    invoke-static {p0, p1}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p0, p2}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {p1, p0}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const v0, 0x8b31

    .line 100
    invoke-static {v0, p0}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->buildShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 105
    invoke-static {v1, p1}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->buildShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 110
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 115
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 116
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 117
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return v1
.end method

.method public static buildShader(ILjava/lang/String;)I
    .locals 2

    .line 123
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 128
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 129
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 131
    new-array p1, p1, [I

    const v1, 0x8b81

    .line 132
    invoke-static {p0, v1, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 133
    aget p1, p1, v0

    if-nez p1, :cond_1

    const-string p1, "MyGLUtils"

    .line 134
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0

    :cond_1
    return p0
.end method

.method static genTexture()I
    .locals 1

    const/16 v0, 0xde1

    .line 40
    invoke-static {v0}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->genTexture(I)I

    move-result v0

    return v0
.end method

.method static genTexture(I)I
    .locals 8

    const/4 v0, 0x1

    .line 44
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 46
    aget v0, v1, v2

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2803

    const/16 v3, 0x2802

    const/16 v4, 0x2800

    const/16 v5, 0x2801

    const v6, 0x46180400    # 9729.0f

    const v7, 0x8d65

    if-ne p0, v7, :cond_0

    .line 50
    invoke-static {v7, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 51
    invoke-static {v7, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p0, 0x812f

    .line 52
    invoke-static {v7, v3, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 53
    invoke-static {v7, v0, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xde1

    .line 56
    invoke-static {p0, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 57
    invoke-static {p0, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2901

    .line 58
    invoke-static {p0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 59
    invoke-static {p0, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 62
    :goto_0
    aget p0, v1, v2

    return p0
.end method

.method private static getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 147
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public static loadTexture(Landroid/content/Context;I[I)I
    .locals 5

    .line 66
    invoke-static {}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->genTexture()I

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v3, 0x1

    .line 71
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 77
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, p2, v2

    .line 78
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, p2, v3

    .line 81
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 p1, 0xde1

    .line 85
    invoke-static {p1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return v0
.end method
