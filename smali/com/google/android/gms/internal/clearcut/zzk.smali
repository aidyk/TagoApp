.class public final Lcom/google/android/gms/internal/clearcut/zzk;
.super Ljava/lang/Object;


# direct methods
.method private static zza([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static zza(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    return-wide p0
.end method

.method public static zza([B)J
    .locals 28

    move-object/from16 v7, p0

    array-length v0, v7

    if-ltz v0, :cond_7

    array-length v1, v7

    if-gt v0, v1, :cond_7

    const/16 v8, 0x25

    const/4 v1, 0x2

    const/16 v4, 0x2b

    const/16 v5, 0x20

    const-wide v9, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const/16 v11, 0x10

    const/16 v6, 0x8

    const-wide v12, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    const/4 v14, 0x0

    if-gt v0, v5, :cond_4

    if-gt v0, v11, :cond_3

    if-lt v0, v6, :cond_0

    shl-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    add-long v19, v1, v12

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v1

    add-long/2addr v1, v12

    add-int/2addr v0, v14

    sub-int/2addr v0, v6

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v3

    invoke-static {v3, v4, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    mul-long v5, v5, v19

    add-long v15, v5, v1

    const/16 v0, 0x19

    invoke-static {v1, v2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, v3

    mul-long v17, v0, v19

    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    shl-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    add-long/2addr v1, v12

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/clearcut/zzk;->zza([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    int-to-long v5, v0

    const/4 v8, 0x3

    shl-long/2addr v3, v8

    add-long/2addr v3, v5

    add-int/2addr v0, v14

    add-int/lit8 v0, v0, -0x4

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zza([BI)I

    move-result v0

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    move-wide v7, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-lez v0, :cond_2

    aget-byte v2, v7, v14

    shr-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v14

    aget-byte v3, v7, v3

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v4, v14

    aget-byte v4, v7, v4

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    add-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    int-to-long v1, v2

    mul-long v1, v1, v12

    int-to-long v3, v0

    const-wide v5, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long v3, v3, v5

    xor-long/2addr v1, v3

    const/16 v0, 0x2f

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    mul-long v1, v1, v12

    return-wide v1

    :cond_2
    return-wide v12

    :cond_3
    shl-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    add-long v19, v2, v12

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v1

    mul-long v1, v1, v9

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v5

    add-int/2addr v0, v14

    add-int/lit8 v3, v0, -0x8

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v8

    mul-long v8, v8, v19

    sub-int/2addr v0, v11

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v10

    mul-long v10, v10, v12

    add-long v14, v1, v5

    invoke-static {v14, v15, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const/16 v0, 0x1e

    invoke-static {v8, v9, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    add-long/2addr v3, v14

    add-long v15, v3, v10

    add-long/2addr v5, v12

    const/16 v0, 0x12

    invoke-static {v5, v6, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-long v17, v1, v8

    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const/16 v15, 0x40

    if-gt v0, v15, :cond_5

    shl-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    add-long/2addr v1, v12

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v8

    mul-long v8, v8, v12

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v5

    add-int/2addr v0, v14

    add-int/lit8 v3, v0, -0x8

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v14

    mul-long v14, v14, v1

    add-int/lit8 v3, v0, -0x10

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v16

    mul-long v16, v16, v12

    add-long v11, v8, v5

    invoke-static {v11, v12, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    const/16 v3, 0x1e

    invoke-static {v14, v15, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    add-long/2addr v10, v12

    add-long v10, v10, v16

    const-wide v12, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v5, v12

    const/16 v3, 0x12

    invoke-static {v5, v6, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    add-long/2addr v5, v8

    add-long v17, v5, v14

    move-wide v15, v10

    move-wide/from16 v19, v1

    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v5

    const/16 v3, 0x10

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v12

    mul-long v12, v12, v1

    const/16 v3, 0x18

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v14

    add-int/lit8 v4, v0, -0x20

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v16

    add-long v10, v10, v16

    mul-long v10, v10, v1

    sub-int/2addr v0, v3

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v3

    add-long/2addr v5, v3

    mul-long v5, v5, v1

    add-long v3, v12, v14

    const/16 v0, 0x2b

    invoke-static {v3, v4, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const/16 v0, 0x1e

    invoke-static {v10, v11, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v16

    add-long v3, v3, v16

    add-long/2addr v3, v5

    add-long/2addr v14, v8

    const/16 v0, 0x12

    invoke-static {v14, v15, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    add-long/2addr v12, v5

    add-long v17, v12, v10

    move-wide v15, v3

    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const-wide v2, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    const-wide v4, 0x134a747f856d0526L    # 9.592726139023731E-216

    new-array v11, v1, [J

    new-array v12, v1, [J

    const-wide v16, 0x1529cba0ca458ffL

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v18

    add-long v18, v18, v16

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    div-int/lit8 v1, v0, 0x40

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v6, v1, 0x0

    and-int/lit8 v1, v0, 0x3f

    add-int v0, v6, v1

    add-int/lit8 v16, v0, -0x3f

    const/16 v17, 0x0

    :goto_0
    const/4 v0, 0x0

    add-long v18, v18, v2

    aget-wide v20, v11, v14

    add-long v18, v18, v20

    add-int/lit8 v0, v17, 0x8

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v20

    add-long v14, v18, v20

    invoke-static {v14, v15, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    mul-long v14, v14, v9

    aget-wide v18, v11, v13

    add-long v2, v2, v18

    add-int/lit8 v0, v17, 0x30

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v18

    add-long v2, v2, v18

    const/16 v0, 0x2a

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v9

    aget-wide v18, v12, v13

    xor-long v14, v14, v18

    const/4 v0, 0x0

    aget-wide v18, v11, v0

    add-int/lit8 v8, v17, 0x28

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v20

    add-long v18, v18, v20

    add-long v18, v2, v18

    aget-wide v2, v12, v0

    add-long/2addr v4, v2

    const/16 v2, 0x21

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v20, v2, v9

    aget-wide v2, v11, v13

    mul-long v2, v2, v9

    aget-wide v4, v12, v0

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    move v8, v1

    move/from16 v1, v17

    move v9, v6

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzk;->zza([BIJJ[J)V

    add-int/lit8 v1, v17, 0x20

    aget-wide v2, v12, v13

    add-long v2, v20, v2

    add-int/lit8 v0, v17, 0x10

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v4

    add-long v4, v18, v4

    move-object/from16 v0, p0

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzk;->zza([BIJJ[J)V

    const/16 v1, 0x40

    add-int/lit8 v0, v17, 0x40

    if-ne v0, v9, :cond_6

    const-wide/16 v0, 0xff

    and-long/2addr v0, v14

    shl-long/2addr v0, v13

    const-wide v2, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    add-long v9, v0, v2

    const/4 v0, 0x0

    aget-wide v1, v12, v0

    int-to-long v3, v8

    add-long/2addr v1, v3

    aput-wide v1, v12, v0

    aget-wide v1, v11, v0

    aget-wide v3, v12, v0

    add-long/2addr v1, v3

    aput-wide v1, v11, v0

    aget-wide v1, v12, v0

    aget-wide v3, v11, v0

    add-long/2addr v1, v3

    aput-wide v1, v12, v0

    add-long v20, v20, v18

    aget-wide v1, v11, v0

    add-long v20, v20, v1

    add-int/lit8 v0, v16, 0x8

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v0

    add-long v0, v20, v0

    const/16 v4, 0x25

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v9

    aget-wide v2, v11, v13

    add-long v18, v18, v2

    add-int/lit8 v2, v16, 0x30

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v2

    add-long v2, v18, v2

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v9

    aget-wide v4, v12, v13

    const-wide/16 v17, 0x9

    mul-long v4, v4, v17

    xor-long v17, v0, v4

    const/4 v0, 0x0

    aget-wide v4, v11, v0

    const-wide/16 v19, 0x9

    mul-long v4, v4, v19

    add-int/lit8 v1, v16, 0x28

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v19

    add-long v4, v4, v19

    add-long v19, v2, v4

    aget-wide v1, v12, v0

    add-long/2addr v14, v1

    const/16 v1, 0x21

    invoke-static {v14, v15, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    mul-long v14, v1, v9

    aget-wide v1, v11, v13

    mul-long v2, v1, v9

    aget-wide v4, v12, v0

    add-long v4, v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzk;->zza([BIJJ[J)V

    add-int/lit8 v1, v16, 0x20

    aget-wide v2, v12, v13

    add-long/2addr v2, v14

    const/16 v5, 0x10

    add-int/lit8 v0, v16, 0x10

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v4

    add-long v4, v19, v4

    move-object/from16 v0, p0

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzk;->zza([BIJJ[J)V

    const/4 v6, 0x0

    aget-wide v22, v11, v6

    aget-wide v24, v12, v6

    move-wide/from16 v26, v9

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v0

    const/16 v2, 0x2f

    ushr-long v2, v19, v2

    xor-long v2, v19, v2

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    add-long v0, v0, v17

    aget-wide v22, v11, v13

    aget-wide v24, v12, v13

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v2

    add-long v24, v2, v14

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/clearcut/zzk;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    move/from16 v17, v0

    move v1, v8

    move v6, v9

    move-wide v4, v14

    move-wide/from16 v2, v18

    move-wide/from16 v18, v20

    const/16 v8, 0x25

    const-wide v9, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const/4 v14, 0x0

    const/16 v15, 0x40

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const/16 v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of bound index with offput: 0 and length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zza([BIJJ[J)V
    .locals 6

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide v4

    add-int/lit8 p1, p1, 0x18

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzk;->zzb([BI)J

    move-result-wide p0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x2c

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr p4, v0

    add-long/2addr v2, p0

    const/4 p0, 0x0

    aput-wide v2, p6, p0

    add-long/2addr p4, p2

    const/4 p0, 0x1

    aput-wide p4, p6, p0

    return-void
.end method

.method private static zzb([BI)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method
