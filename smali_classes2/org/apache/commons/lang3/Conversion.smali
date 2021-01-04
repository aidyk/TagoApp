.class public Lorg/apache/commons/lang3/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .locals 1

    const/4 v0, 0x0

    .line 494
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .locals 4

    .line 514
    array-length v0, p0

    if-eqz v0, :cond_f

    .line 517
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    const/4 p1, 0x4

    .line 518
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 519
    new-array v3, p1, [Z

    sub-int/2addr v0, v2

    sub-int/2addr p1, v2

    .line 520
    invoke-static {p0, v0, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    .line 523
    aget-boolean p0, v3, p0

    const/4 p1, 0x2

    const/4 v0, 0x3

    if-eqz p0, :cond_7

    .line 524
    array-length p0, v3

    if-le p0, v1, :cond_3

    aget-boolean p0, v3, v1

    if-eqz p0, :cond_3

    .line 525
    array-length p0, v3

    if-le p0, p1, :cond_1

    aget-boolean p0, v3, p1

    if-eqz p0, :cond_1

    .line 526
    array-length p0, v3

    if-le p0, v0, :cond_0

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    return p0

    :cond_0
    const/16 p0, 0x65

    return p0

    .line 532
    :cond_1
    array-length p0, v3

    if-le p0, v0, :cond_2

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_2

    const/16 p0, 0x64

    return p0

    :cond_2
    const/16 p0, 0x63

    return p0

    .line 539
    :cond_3
    array-length p0, v3

    if-le p0, p1, :cond_5

    aget-boolean p0, v3, p1

    if-eqz p0, :cond_5

    .line 540
    array-length p0, v3

    if-le p0, v0, :cond_4

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_4

    const/16 p0, 0x62

    return p0

    :cond_4
    const/16 p0, 0x61

    return p0

    .line 546
    :cond_5
    array-length p0, v3

    if-le p0, v0, :cond_6

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_6

    const/16 p0, 0x39

    return p0

    :cond_6
    const/16 p0, 0x38

    return p0

    .line 554
    :cond_7
    array-length p0, v3

    if-le p0, v1, :cond_b

    aget-boolean p0, v3, v1

    if-eqz p0, :cond_b

    .line 555
    array-length p0, v3

    if-le p0, p1, :cond_9

    aget-boolean p0, v3, p1

    if-eqz p0, :cond_9

    .line 556
    array-length p0, v3

    if-le p0, v0, :cond_8

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_8

    const/16 p0, 0x37

    return p0

    :cond_8
    const/16 p0, 0x36

    return p0

    .line 562
    :cond_9
    array-length p0, v3

    if-le p0, v0, :cond_a

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_a

    const/16 p0, 0x35

    return p0

    :cond_a
    const/16 p0, 0x34

    return p0

    .line 569
    :cond_b
    array-length p0, v3

    if-le p0, p1, :cond_d

    aget-boolean p0, v3, p1

    if-eqz p0, :cond_d

    .line 570
    array-length p0, v3

    if-le p0, v0, :cond_c

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_c

    const/16 p0, 0x33

    return p0

    :cond_c
    const/16 p0, 0x32

    return p0

    .line 576
    :cond_d
    array-length p0, v3

    if-le p0, v0, :cond_e

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_e

    const/16 p0, 0x31

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0

    .line 515
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot convert an empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToByte([ZIBII)B
    .locals 4

    .line 1154
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    mul-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 1164
    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 1158
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greather or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToHexDigit([Z)C
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigit([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryToHexDigit([ZI)C
    .locals 2

    .line 303
    array-length v0, p0

    if-eqz v0, :cond_f

    .line 306
    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_7

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_7

    .line 307
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_3

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_3

    .line 308
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_1

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_1

    .line 309
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    return p0

    :cond_0
    const/16 p0, 0x65

    return p0

    .line 315
    :cond_1
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    const/16 p0, 0x64

    return p0

    :cond_2
    const/16 p0, 0x63

    return p0

    .line 322
    :cond_3
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_5

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_5

    .line 323
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4

    const/16 p0, 0x62

    return p0

    :cond_4
    const/16 p0, 0x61

    return p0

    .line 329
    :cond_5
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_6

    const/16 p0, 0x39

    return p0

    :cond_6
    const/16 p0, 0x38

    return p0

    .line 337
    :cond_7
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_b

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_b

    .line 338
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_9

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_9

    .line 339
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_8

    const/16 p0, 0x37

    return p0

    :cond_8
    const/16 p0, 0x36

    return p0

    .line 345
    :cond_9
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_a

    const/16 p0, 0x35

    return p0

    :cond_a
    const/16 p0, 0x34

    return p0

    .line 352
    :cond_b
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_d

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_d

    .line 353
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_c

    const/16 p0, 0x33

    return p0

    :cond_c
    const/16 p0, 0x32

    return p0

    .line 359
    :cond_d
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_e

    const/16 p0, 0x31

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0

    .line 304
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot convert an empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .locals 3

    .line 406
    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_10

    .line 409
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    add-int/lit8 v0, p1, 0x3

    .line 415
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p1, 0x2

    .line 416
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 417
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_1

    .line 418
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    return p0

    :cond_0
    const/16 p0, 0x37

    return p0

    .line 424
    :cond_1
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    const/16 p0, 0x62

    return p0

    :cond_2
    const/16 p0, 0x33

    return p0

    :cond_3
    add-int/lit8 v0, p1, 0x1

    .line 431
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_5

    .line 432
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4

    const/16 p0, 0x64

    return p0

    :cond_4
    const/16 p0, 0x35

    return p0

    .line 438
    :cond_5
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_6

    const/16 p0, 0x39

    return p0

    :cond_6
    const/16 p0, 0x31

    return p0

    :cond_7
    add-int/lit8 v0, p1, 0x2

    .line 446
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p1, 0x1

    .line 447
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9

    .line 448
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_8

    const/16 p0, 0x65

    return p0

    :cond_8
    const/16 p0, 0x36

    return p0

    .line 454
    :cond_9
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_a

    const/16 p0, 0x61

    return p0

    :cond_a
    const/16 p0, 0x32

    return p0

    :cond_b
    add-int/lit8 v0, p1, 0x1

    .line 461
    aget-boolean v0, p0, v0

    if-eqz v0, :cond_d

    .line 462
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_c

    const/16 p0, 0x63

    return p0

    :cond_c
    const/16 p0, 0x34

    return p0

    .line 468
    :cond_d
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_e

    const/16 p0, 0x38

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0

    .line 410
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length-srcPos<4: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", srcPos="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src.length>8: src.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static binaryToInt([ZIIII)I
    .locals 4

    .line 1080
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    mul-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 1091
    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 1084
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToLong([ZIJII)J
    .locals 7

    .line 1044
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_4

    mul-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p4

    add-int v2, v0, p1

    .line 1055
    aget-boolean v2, p0, v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    :goto_1
    shl-long/2addr v5, v1

    shl-long v1, v3, v1

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    and-long/2addr p2, v1

    or-long/2addr p2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-wide p2

    .line 1048
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToShort([ZISII)S
    .locals 4

    .line 1117
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    mul-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 1128
    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 1121
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greather or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToInt([BIIII)I
    .locals 4

    .line 834
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 845
    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 838
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToLong([BIJII)J
    .locals 8

    .line 798
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p4

    add-int v2, v0, p1

    .line 809
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p2

    .line 802
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToShort([BISII)S
    .locals 4

    .line 871
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 882
    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 875
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greather or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .locals 9

    .line 1713
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1716
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v1

    add-int/lit8 v4, p1, 0x8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0

    .line 1714
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need at least 16 bytes for UUID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToBinary(BI[ZII)[Z
    .locals 5

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    mul-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1664
    :goto_1
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 1659
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greather or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .locals 4

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1525
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1527
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1514
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greather or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .locals 3

    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :pswitch_0
    new-array p0, v0, [Z

    fill-array-data p0, :array_0

    return-object p0

    .line 258
    :pswitch_1
    new-array p0, v0, [Z

    fill-array-data p0, :array_1

    return-object p0

    .line 255
    :pswitch_2
    new-array p0, v0, [Z

    fill-array-data p0, :array_2

    return-object p0

    .line 252
    :pswitch_3
    new-array p0, v0, [Z

    fill-array-data p0, :array_3

    return-object p0

    .line 249
    :pswitch_4
    new-array p0, v0, [Z

    fill-array-data p0, :array_4

    return-object p0

    .line 246
    :pswitch_5
    new-array p0, v0, [Z

    fill-array-data p0, :array_5

    return-object p0

    .line 243
    :pswitch_6
    new-array p0, v0, [Z

    fill-array-data p0, :array_6

    return-object p0

    .line 241
    :pswitch_7
    new-array p0, v0, [Z

    fill-array-data p0, :array_7

    return-object p0

    .line 239
    :pswitch_8
    new-array p0, v0, [Z

    fill-array-data p0, :array_8

    return-object p0

    .line 237
    :pswitch_9
    new-array p0, v0, [Z

    fill-array-data p0, :array_9

    return-object p0

    .line 235
    :pswitch_a
    new-array p0, v0, [Z

    fill-array-data p0, :array_a

    return-object p0

    .line 233
    :pswitch_b
    new-array p0, v0, [Z

    fill-array-data p0, :array_b

    return-object p0

    .line 231
    :pswitch_c
    new-array p0, v0, [Z

    fill-array-data p0, :array_c

    return-object p0

    .line 229
    :pswitch_d
    new-array p0, v0, [Z

    fill-array-data p0, :array_d

    return-object p0

    .line 227
    :pswitch_e
    new-array p0, v0, [Z

    fill-array-data p0, :array_e

    return-object p0

    .line 225
    :pswitch_f
    new-array p0, v0, [Z

    fill-array-data p0, :array_f

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static hexDigitMsb0ToInt(C)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/16 p0, 0xd

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .locals 3

    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_0
    new-array p0, v0, [Z

    fill-array-data p0, :array_0

    return-object p0

    .line 198
    :pswitch_1
    new-array p0, v0, [Z

    fill-array-data p0, :array_1

    return-object p0

    .line 195
    :pswitch_2
    new-array p0, v0, [Z

    fill-array-data p0, :array_2

    return-object p0

    .line 192
    :pswitch_3
    new-array p0, v0, [Z

    fill-array-data p0, :array_3

    return-object p0

    .line 189
    :pswitch_4
    new-array p0, v0, [Z

    fill-array-data p0, :array_4

    return-object p0

    .line 186
    :pswitch_5
    new-array p0, v0, [Z

    fill-array-data p0, :array_5

    return-object p0

    .line 183
    :pswitch_6
    new-array p0, v0, [Z

    fill-array-data p0, :array_6

    return-object p0

    .line 181
    :pswitch_7
    new-array p0, v0, [Z

    fill-array-data p0, :array_7

    return-object p0

    .line 179
    :pswitch_8
    new-array p0, v0, [Z

    fill-array-data p0, :array_8

    return-object p0

    .line 177
    :pswitch_9
    new-array p0, v0, [Z

    fill-array-data p0, :array_9

    return-object p0

    .line 175
    :pswitch_a
    new-array p0, v0, [Z

    fill-array-data p0, :array_a

    return-object p0

    .line 173
    :pswitch_b
    new-array p0, v0, [Z

    fill-array-data p0, :array_b

    return-object p0

    .line 171
    :pswitch_c
    new-array p0, v0, [Z

    fill-array-data p0, :array_c

    return-object p0

    .line 169
    :pswitch_d
    new-array p0, v0, [Z

    fill-array-data p0, :array_d

    return-object p0

    .line 167
    :pswitch_e
    new-array p0, v0, [Z

    fill-array-data p0, :array_e

    return-object p0

    .line 165
    :pswitch_f
    new-array p0, v0, [Z

    fill-array-data p0, :array_f

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static hexDigitToInt(C)I
    .locals 3

    const/16 v0, 0x10

    .line 81
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .locals 4

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 1018
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2

    .line 1011
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greather or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .locals 4

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 950
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2

    .line 943
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .locals 8

    if-nez p5, :cond_0

    return-wide p2

    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p4

    add-int v2, v0, p1

    .line 916
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p2

    .line 909
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .locals 4

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 984
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2

    .line 977
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greather or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intArrayToLong([IIJII)J
    .locals 8

    .line 687
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    mul-int/lit8 v1, v0, 0x20

    add-int/2addr v1, p4

    add-int v2, v0, p1

    .line 698
    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p2

    .line 691
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nInts-1)*32+dstPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToBinary(II[ZII)[Z
    .locals 5

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    mul-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1596
    :goto_1
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 1590
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToByteArray(II[BII)[B
    .locals 3

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p1

    add-int v2, p3, v0

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1334
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 1328
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .locals 4

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1445
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1447
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1450
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1434
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHexDigit(I)C
    .locals 3

    const/16 v0, 0x10

    .line 605
    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHexDigitMsb0(I)C
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x66

    return p0

    :pswitch_1
    const/16 p0, 0x37

    return p0

    :pswitch_2
    const/16 p0, 0x62

    return p0

    :pswitch_3
    const/16 p0, 0x33

    return p0

    :pswitch_4
    const/16 p0, 0x64

    return p0

    :pswitch_5
    const/16 p0, 0x35

    return p0

    :pswitch_6
    const/16 p0, 0x39

    return p0

    :pswitch_7
    const/16 p0, 0x31

    return p0

    :pswitch_8
    const/16 p0, 0x65

    return p0

    :pswitch_9
    const/16 p0, 0x36

    return p0

    :pswitch_a
    const/16 p0, 0x61

    return p0

    :pswitch_b
    const/16 p0, 0x32

    return p0

    :pswitch_c
    const/16 p0, 0x63

    return p0

    :pswitch_d
    const/16 p0, 0x34

    return p0

    :pswitch_e
    const/16 p0, 0x38

    return p0

    :pswitch_f
    const/16 p0, 0x30

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static intToShortArray(II[SII)[S
    .locals 4

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p1

    add-int v2, p3, v0

    const v3, 0xffff

    shr-int v1, p0, v1

    and-int/2addr v1, v3

    int-to-short v1, v1

    .line 1267
    aput-short v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 1261
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+srcPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToBinary(JI[ZII)[Z
    .locals 8

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    mul-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p2

    add-int v3, p4, v1

    const-wide/16 v4, 0x1

    shr-long v6, p0, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1562
    :goto_1
    aput-boolean v2, p3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p3

    .line 1556
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToByteArray(JI[BII)[B
    .locals 7

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/16 v3, 0xff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    .line 1301
    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    .line 1295
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .locals 7

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    const-wide/16 v3, 0xf

    shr-long v5, p0, v2

    and-long/2addr v3, v5

    long-to-int v2, v3

    add-int v3, p4, v1

    if-ne v3, p3, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1405
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1407
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1394
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToIntArray(JI[III)[I
    .locals 7

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    mul-int/lit8 v1, v0, 0x20

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/16 v3, -0x1

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    .line 1199
    aput v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    .line 1193
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nInts-1)*32+srcPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToShortArray(JI[SII)[S
    .locals 7

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/32 v3, 0xffff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-short v1, v1

    .line 1233
    aput-short v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    .line 1227
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+srcPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortArrayToInt([SIIII)I
    .locals 4

    .line 761
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 772
    aget-short v2, p0, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    .line 765
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+dstPos is greather or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortArrayToLong([SIJII)J
    .locals 8

    .line 724
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p4

    add-int v2, v0, p1

    .line 735
    aget-short v2, p0, v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p2

    .line 728
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+dstPos is greather or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToBinary(SI[ZII)[Z
    .locals 5

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    mul-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1631
    :goto_1
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 1624
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greather or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToByteArray(SI[BII)[B
    .locals 3

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p1

    add-int v2, p3, v0

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1368
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 1362
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greather or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .locals 4

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1485
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1487
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1490
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1474
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greather or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .locals 7

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    const/16 v0, 0x10

    if-gt p3, v0, :cond_3

    .line 1692
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v6, 0x8

    if-le p3, v6, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    move v5, p3

    :goto_0
    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    if-lt p3, v6, :cond_2

    .line 1694
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    :cond_2
    return-object p1

    .line 1690
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greather than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
