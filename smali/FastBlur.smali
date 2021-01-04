.class public final LFastBlur;
.super Ljava/lang/Object;
.source "FastBlur.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFastBlur.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastBlur.kt\nFastBlur\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n*L\n1#1,287:1\n42#2,5:288\n*E\n*S KotlinDebug\n*F\n+ 1 FastBlur.kt\nFastBlur\n*L\n87#1,5:288\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "LFastBlur;",
        "",
        "()V",
        "doBlur",
        "Landroid/graphics/Bitmap;",
        "sentBitmap",
        "radius",
        "",
        "canReuseInBitmap",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:LFastBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, LFastBlur;

    invoke-direct {v0}, LFastBlur;-><init>()V

    sput-object v0, LFastBlur;->INSTANCE:LFastBlur;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 40
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "sentBitmap"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v3, "sentBitmap.copy(sentBitmap.config, true)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge v1, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v3, v12

    .line 52
    new-array v14, v13, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, v14

    move v7, v3

    move v10, v3

    move v11, v12

    .line 53
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v12, -0x1

    add-int v6, v1, v1

    add-int/2addr v6, v2

    .line 60
    new-array v7, v13, [I

    .line 61
    new-array v8, v13, [I

    .line 62
    new-array v9, v13, [I

    .line 73
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    add-int/lit8 v11, v6, 0x1

    shr-int/2addr v11, v2

    mul-int v11, v11, v11

    mul-int/lit16 v13, v11, 0x100

    .line 77
    new-array v15, v13, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_2

    .line 80
    div-int v18, v2, v11

    aput v18, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_2
    new-array v2, v6, [[I

    .line 289
    array-length v11, v2

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_3

    move/from16 v19, v11

    const/4 v11, 0x3

    .line 87
    new-array v11, v11, [I

    aput-object v11, v2, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v19

    goto :goto_2

    :cond_3
    check-cast v2, [[I

    add-int/lit8 v11, v1, 0x1

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_3
    const/16 v20, 0x2

    if-ge v13, v12, :cond_8

    move-object/from16 v21, v0

    neg-int v0, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_4
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v0, v1, :cond_5

    move/from16 v34, v5

    move/from16 v33, v12

    const/4 v12, 0x0

    .line 113
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v18, v5

    aget v5, v14, v5

    add-int v17, v0, v1

    .line 114
    aget-object v35, v2, v17

    and-int v17, v5, v32

    shr-int/lit8 v17, v17, 0x10

    .line 115
    aput v17, v35, v12

    and-int v17, v5, v31

    shr-int/lit8 v17, v17, 0x8

    const/16 v16, 0x1

    .line 116
    aput v17, v35, v16

    and-int/lit16 v5, v5, 0xff

    .line 117
    aput v5, v35, v20

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v11, v5

    .line 119
    aget v17, v35, v12

    mul-int v17, v17, v5

    add-int v22, v22, v17

    .line 120
    aget v17, v35, v16

    mul-int v17, v17, v5

    add-int v23, v23, v17

    .line 121
    aget v17, v35, v20

    mul-int v17, v17, v5

    add-int v24, v24, v17

    if-lez v0, :cond_4

    .line 123
    aget v5, v35, v12

    add-int v25, v25, v5

    .line 124
    aget v5, v35, v16

    add-int v26, v26, v5

    .line 125
    aget v5, v35, v20

    add-int v27, v27, v5

    goto :goto_5

    .line 127
    :cond_4
    aget v5, v35, v12

    add-int v28, v28, v5

    .line 128
    aget v5, v35, v16

    add-int v29, v29, v5

    .line 129
    aget v5, v35, v20

    add-int v30, v30, v5

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v33

    move/from16 v5, v34

    goto :goto_4

    :cond_5
    move/from16 v34, v5

    move/from16 v33, v12

    move v5, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_7

    .line 138
    aget v12, v15, v22

    aput v12, v7, v18

    .line 139
    aget v12, v15, v23

    aput v12, v8, v18

    .line 140
    aget v12, v15, v24

    aput v12, v9, v18

    sub-int v22, v22, v28

    sub-int v23, v23, v29

    sub-int v24, v24, v30

    sub-int v12, v5, v1

    add-int/2addr v12, v6

    .line 147
    rem-int/2addr v12, v6

    aget-object v12, v2, v12

    const/16 v17, 0x0

    .line 149
    aget v35, v12, v17

    sub-int v28, v28, v35

    const/16 v16, 0x1

    .line 150
    aget v35, v12, v16

    sub-int v29, v29, v35

    .line 151
    aget v35, v12, v20

    sub-int v30, v30, v35

    if-nez v13, :cond_6

    add-int v35, v0, v1

    move-object/from16 v36, v15

    add-int/lit8 v15, v35, 0x1

    .line 154
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v10, v0

    goto :goto_7

    :cond_6
    move-object/from16 v36, v15

    .line 156
    :goto_7
    aget v15, v10, v0

    add-int v15, v19, v15

    aget v15, v14, v15

    and-int v35, v15, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v17, 0x0

    .line 158
    aput v35, v12, v17

    and-int v35, v15, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    .line 159
    aput v35, v12, v16

    and-int/lit16 v15, v15, 0xff

    .line 160
    aput v15, v12, v20

    .line 162
    aget v15, v12, v17

    add-int v25, v25, v15

    .line 163
    aget v15, v12, v16

    add-int v26, v26, v15

    .line 164
    aget v12, v12, v20

    add-int v27, v27, v12

    add-int v22, v22, v25

    add-int v23, v23, v26

    add-int v24, v24, v27

    add-int/lit8 v5, v5, 0x1

    .line 170
    rem-int/2addr v5, v6

    .line 171
    rem-int v12, v5, v6

    aget-object v12, v2, v12

    const/4 v15, 0x0

    .line 173
    aget v17, v12, v15

    add-int v28, v28, v17

    const/16 v16, 0x1

    .line 174
    aget v17, v12, v16

    add-int v29, v29, v17

    .line 175
    aget v17, v12, v20

    add-int v30, v30, v17

    .line 177
    aget v35, v12, v15

    sub-int v25, v25, v35

    .line 178
    aget v15, v12, v16

    sub-int v26, v26, v15

    .line 179
    aget v12, v12, v20

    sub-int v27, v27, v12

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v36

    goto/16 :goto_6

    :cond_7
    move-object/from16 v36, v15

    add-int v19, v19, v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v21

    move/from16 v12, v33

    move/from16 v5, v34

    goto/16 :goto_3

    :cond_8
    move-object/from16 v21, v0

    move/from16 v34, v5

    move/from16 v33, v12

    move-object/from16 v36, v15

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_e

    neg-int v4, v1

    mul-int v5, v4, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_9
    if-gt v4, v1, :cond_b

    move-object/from16 v37, v10

    const/4 v10, 0x0

    .line 201
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v26, v17, v0

    add-int v17, v4, v1

    .line 203
    aget-object v27, v2, v17

    .line 205
    aget v17, v7, v26

    aput v17, v27, v10

    .line 206
    aget v10, v8, v26

    const/16 v16, 0x1

    aput v10, v27, v16

    .line 207
    aget v10, v9, v26

    aput v10, v27, v20

    .line 209
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v11, v10

    .line 211
    aget v28, v7, v26

    mul-int v28, v28, v10

    add-int v12, v12, v28

    .line 212
    aget v28, v8, v26

    mul-int v28, v28, v10

    add-int v13, v13, v28

    .line 213
    aget v26, v9, v26

    mul-int v26, v26, v10

    add-int v15, v15, v26

    if-lez v4, :cond_9

    const/4 v10, 0x0

    .line 216
    aget v17, v27, v10

    add-int v18, v18, v17

    const/16 v16, 0x1

    .line 217
    aget v17, v27, v16

    add-int v19, v19, v17

    .line 218
    aget v17, v27, v20

    add-int v22, v22, v17

    :goto_a
    move/from16 v10, v34

    goto :goto_b

    :cond_9
    const/4 v10, 0x0

    const/16 v16, 0x1

    .line 220
    aget v26, v27, v10

    add-int v23, v23, v26

    .line 221
    aget v10, v27, v16

    add-int v24, v24, v10

    .line 222
    aget v10, v27, v20

    add-int v25, v25, v10

    goto :goto_a

    :goto_b
    if-ge v4, v10, :cond_a

    add-int/2addr v5, v3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v34, v10

    move-object/from16 v10, v37

    goto :goto_9

    :cond_b
    move-object/from16 v37, v10

    move/from16 v10, v34

    move v5, v0

    move/from16 v26, v19

    move/from16 v27, v22

    const/4 v4, 0x0

    move/from16 v19, v1

    move/from16 v22, v18

    move/from16 v18, v15

    move v15, v13

    move v13, v12

    move/from16 v12, v33

    :goto_c
    if-ge v4, v12, :cond_d

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    const-wide v8, 0xff000000L

    long-to-int v8, v8

    .line 235
    aget v9, v14, v5

    and-int/2addr v8, v9

    aget v9, v36, v13

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v36, v15

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v36, v18

    or-int/2addr v8, v9

    aput v8, v14, v5

    sub-int v13, v13, v23

    sub-int v15, v15, v24

    sub-int v18, v18, v25

    sub-int v8, v19, v1

    add-int/2addr v8, v6

    .line 242
    rem-int/2addr v8, v6

    aget-object v8, v2, v8

    const/4 v9, 0x0

    .line 244
    aget v28, v8, v9

    sub-int v23, v23, v28

    const/4 v9, 0x1

    .line 245
    aget v28, v8, v9

    sub-int v24, v24, v28

    .line 246
    aget v9, v8, v20

    sub-int v25, v25, v9

    if-nez v0, :cond_c

    add-int v9, v4, v11

    .line 249
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int v9, v9, v3

    aput v9, v37, v4

    .line 251
    :cond_c
    aget v9, v37, v4

    add-int/2addr v9, v0

    .line 253
    aget v28, v7, v9

    const/16 v17, 0x0

    aput v28, v8, v17

    .line 254
    aget v28, v38, v9

    const/16 v16, 0x1

    aput v28, v8, v16

    .line 255
    aget v9, v39, v9

    aput v9, v8, v20

    .line 257
    aget v9, v8, v17

    add-int v22, v22, v9

    .line 258
    aget v9, v8, v16

    add-int v26, v26, v9

    .line 259
    aget v8, v8, v20

    add-int v27, v27, v8

    add-int v13, v13, v22

    add-int v15, v15, v26

    add-int v18, v18, v27

    add-int/lit8 v19, v19, 0x1

    .line 265
    rem-int v19, v19, v6

    .line 266
    aget-object v8, v2, v19

    const/4 v9, 0x0

    .line 268
    aget v17, v8, v9

    add-int v23, v23, v17

    const/16 v16, 0x1

    .line 269
    aget v17, v8, v16

    add-int v24, v24, v17

    .line 270
    aget v17, v8, v20

    add-int v25, v25, v17

    .line 272
    aget v17, v8, v9

    sub-int v22, v22, v17

    .line 273
    aget v17, v8, v16

    sub-int v26, v26, v17

    .line 274
    aget v8, v8, v20

    sub-int v27, v27, v8

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    goto/16 :goto_c

    :cond_d
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    const/4 v9, 0x0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v34, v10

    move/from16 v33, v12

    move-object/from16 v10, v37

    move-object/from16 v9, v39

    goto/16 :goto_8

    :cond_e
    move/from16 v12, v33

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v21

    move-object v5, v14

    move v7, v3

    move v10, v3

    move v11, v12

    .line 282
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method
