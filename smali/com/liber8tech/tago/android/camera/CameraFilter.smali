.class public abstract Lcom/liber8tech/tago/android/camera/CameraFilter;
.super Ljava/lang/Object;
.source "CameraFilter.java"


# static fields
.field private static final BUF_ACTIVE_TEX_UNIT:I = 0x84c8

.field private static CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

.field static PROGRAM:I

.field private static final ROATED_TEXTURE_COORDS:[F

.field private static ROATED_TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

.field static final SQUARE_COORDS:[F

.field static final TEXTURE_COORDS:[F

.field static TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

.field static VERTEX_BUF:Ljava/nio/FloatBuffer;


# instance fields
.field final START_TIME:J

.field iFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 35
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->SQUARE_COORDS:[F

    .line 41
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORDS:[F

    const/4 v1, 0x0

    .line 48
    sput v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    .line 53
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORDS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liber8tech/tago/android/camera/CameraFilter;->START_TIME:J

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/liber8tech/tago/android/camera/CameraFilter;->iFrame:I

    .line 66
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->VERTEX_BUF:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->SQUARE_COORDS:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->VERTEX_BUF:Ljava/nio/FloatBuffer;

    .line 69
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->VERTEX_BUF:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/liber8tech/tago/android/camera/CameraFilter;->SQUARE_COORDS:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 70
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->VERTEX_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    :cond_0
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_1

    .line 74
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORDS:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    .line 76
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORDS:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 77
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    :cond_1
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_2

    .line 81
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORDS:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    .line 83
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORDS:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 84
    sget-object v1, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    :cond_2
    sget v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    if-nez v0, :cond_3

    const v0, 0x7f0e0002

    const v1, 0x7f0e0001

    .line 88
    invoke-static {p1, v0, v1}, Lcom/liber8tech/tago/android/camera/MyGLUtils;->buildProgram(Landroid/content/Context;II)I

    move-result p1

    sput p1, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    :cond_3
    return-void
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    sput v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    const/4 v0, 0x0

    .line 187
    sput-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    return-void
.end method


# virtual methods
.method public final draw(III)V
    .locals 8

    .line 101
    :try_start_0
    sget-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    .line 102
    invoke-virtual {v0}, Lcom/liber8tech/tago/android/camera/RenderBuffer;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    sget-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    .line 103
    invoke-virtual {v0}, Lcom/liber8tech/tago/android/camera/RenderBuffer;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 104
    :cond_0
    new-instance v0, Lcom/liber8tech/tago/android/camera/RenderBuffer;

    const v1, 0x84c8

    invoke-direct {v0, p2, p3, v1}, Lcom/liber8tech/tago/android/camera/RenderBuffer;-><init>(III)V

    sput-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    .line 108
    :cond_1
    sget v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 110
    sget v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    const-string v1, "iChannel0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v1, 0x84c0

    .line 111
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    .line 112
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x0

    .line 113
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 115
    sget v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 116
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 117
    sget-object v7, Lcom/liber8tech/tago/android/camera/CameraFilter;->VERTEX_BUF:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    sget v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->PROGRAM:I

    const-string v1, "vTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 120
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 121
    sget-object v7, Lcom/liber8tech/tago/android/camera/CameraFilter;->ROATED_TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 124
    sget-object v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/camera/RenderBuffer;->bind()V

    const/16 v0, 0x4000

    .line 125
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 126
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 127
    sget-object p1, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/camera/RenderBuffer;->unbind()V

    .line 128
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 130
    sget-object p1, Lcom/liber8tech/tago/android/camera/CameraFilter;->CAMERA_RENDER_BUF:Lcom/liber8tech/tago/android/camera/RenderBuffer;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/camera/RenderBuffer;->getTexId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/liber8tech/tago/android/camera/CameraFilter;->onDraw(III)V

    .line 132
    iget p1, p0, Lcom/liber8tech/tago/android/camera/CameraFilter;->iFrame:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/liber8tech/tago/android/camera/CameraFilter;->iFrame:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onAttach()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/liber8tech/tago/android/camera/CameraFilter;->iFrame:I

    return-void
.end method

.method abstract onDraw(III)V
.end method

.method setupShaderInputs(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;[I[I[[I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 145
    invoke-static/range {p1 .. p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v5, "iResolution"

    .line 147
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    .line 148
    new-array v7, v6, [F

    const/4 v8, 0x0

    aget v9, p4, v8

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v9, 0x1

    aget v2, p4, v9

    int-to-float v2, v2

    aput v2, v7, v9

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    aput v2, v7, v10

    .line 149
    invoke-static {v7}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 148
    invoke-static {v5, v9, v7}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->START_TIME:J

    sub-long/2addr v11, v13

    long-to-float v5, v11

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    const-string v7, "iGlobalTime"

    .line 152
    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    .line 153
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v5, "iFrame"

    .line 155
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 156
    iget v7, v0, Lcom/liber8tech/tago/android/camera/CameraFilter;->iFrame:I

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v5, "vPosition"

    .line 158
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    .line 159
    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    move-object/from16 v16, p2

    .line 160
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v5, "vTexCoord"

    .line 162
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    .line 163
    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v16, p3

    .line 164
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v5, 0x0

    .line 166
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_0

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iChannel"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    const v11, 0x84c0

    add-int/2addr v11, v5

    .line 168
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v11, 0xde1

    .line 169
    aget v12, v3, v5

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 170
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 173
    :cond_0
    array-length v3, v4

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    const/4 v5, 0x0

    .line 174
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    mul-int/lit8 v6, v5, 0x3

    .line 175
    aget-object v7, v4, v5

    aget v7, v7, v8

    int-to-float v7, v7

    aput v7, v3, v6

    add-int/lit8 v7, v6, 0x1

    .line 176
    aget-object v11, v4, v5

    aget v11, v11, v9

    int-to-float v11, v11

    aput v11, v3, v7

    add-int/2addr v6, v10

    .line 177
    aput v2, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "iChannelResolution"

    .line 180
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 181
    array-length v2, v3

    .line 182
    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 181
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method setupShaderInputs(I[I[I[[I)V
    .locals 7

    .line 141
    sget-object v2, Lcom/liber8tech/tago/android/camera/CameraFilter;->VERTEX_BUF:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/liber8tech/tago/android/camera/CameraFilter;->TEXTURE_COORD_BUF:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/liber8tech/tago/android/camera/CameraFilter;->setupShaderInputs(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;[I[I[[I)V

    return-void
.end method
