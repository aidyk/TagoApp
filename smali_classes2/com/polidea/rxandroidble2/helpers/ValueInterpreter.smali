.class public Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;
.super Ljava/lang/Object;
.source "ValueInterpreter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/helpers/ValueInterpreter$FloatFormatType;,
        Lcom/polidea/rxandroidble2/helpers/ValueInterpreter$IntFormatType;
    }
.end annotation


# static fields
.field public static final FORMAT_FLOAT:I = 0x34

.field public static final FORMAT_SFLOAT:I = 0x32

.field public static final FORMAT_SINT16:I = 0x22

.field public static final FORMAT_SINT32:I = 0x24

.field public static final FORMAT_SINT8:I = 0x21

.field public static final FORMAT_UINT16:I = 0x12

.field public static final FORMAT_UINT32:I = 0x14

.field public static final FORMAT_UINT8:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToFloat(BB)F
    .locals 4

    .line 208
    invoke-static {p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p0

    .line 209
    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p0, v0

    const/16 v0, 0xc

    .line 208
    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedToSigned(II)I

    move-result p0

    .line 210
    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    const/4 v0, 0x4

    shr-int/2addr p1, v0

    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedToSigned(II)I

    move-result p1

    int-to-double v0, p0

    int-to-double p0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 211
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private static bytesToFloat(BBBB)F
    .locals 2

    .line 218
    invoke-static {p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p0

    .line 219
    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    .line 220
    invoke-static {p2}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p0, p1

    const/16 p1, 0x18

    .line 218
    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedToSigned(II)I

    move-result p0

    int-to-double p0, p0

    int-to-double p2, p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 221
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-float p0, p0

    return p0
.end method

.method public static getFloatValue([BII)Ljava/lang/Float;
    .locals 5
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 137
    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "Float formatType (0x%x) is longer than remaining bytes (%d) - returning null"

    const/4 v1, 0x2

    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    array-length p0, p0

    sub-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    .line 138
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    const-string p0, "Passed an invalid float formatType (0x%x) - returning null"

    .line 152
    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-static {p0, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 149
    :cond_1
    aget-byte p1, p0, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->bytesToFloat(BBBB)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 146
    :cond_2
    aget-byte p1, p0, p2

    add-int/2addr p2, v4

    aget-byte p0, p0, p2

    invoke-static {p1, p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->bytesToFloat(BB)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static getIntValue([BII)Ljava/lang/Integer;
    .locals 5
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 95
    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "Int formatType (0x%x) is longer than remaining bytes (%d) - returning null"

    const/4 v1, 0x2

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    array-length p0, p0

    sub-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    .line 96
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const-string p0, "Passed an invalid integer formatType (0x%x) - returning null"

    .line 123
    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-static {p0, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 120
    :sswitch_0
    aget-byte p1, p0, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedBytesToInt(BBBB)I

    move-result p0

    const/16 p1, 0x20

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedToSigned(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 116
    :sswitch_1
    aget-byte p1, p0, p2

    add-int/2addr p2, v4

    aget-byte p0, p0, p2

    invoke-static {p1, p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedBytesToInt(BB)I

    move-result p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedToSigned(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 113
    :sswitch_2
    aget-byte p0, p0, p2

    invoke-static {p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p0

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedToSigned(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 110
    :sswitch_3
    aget-byte p1, p0, p2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedBytesToInt(BBBB)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 107
    :sswitch_4
    aget-byte p1, p0, p2

    add-int/2addr p2, v4

    aget-byte p0, p0, p2

    invoke-static {p1, p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedBytesToInt(BB)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 104
    :sswitch_5
    aget-byte p0, p0, p2

    invoke-static {p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x14 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getStringValue([BI)Ljava/lang/String;
    .locals 3
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 164
    array-length v0, p0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const-string p0, "Passed offset that exceeds the length of the byte array - returning null"

    .line 165
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 169
    :goto_0
    array-length v2, p0

    sub-int/2addr v2, p1

    if-eq v1, v2, :cond_1

    add-int v2, p1, v1

    .line 170
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private static getTypeLen(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static unsignedByteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static unsignedBytesToInt(BB)I
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p0

    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    return p0
.end method

.method private static unsignedBytesToInt(BBBB)I
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p0

    invoke-static {p1}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    .line 201
    invoke-static {p2}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p0, p1

    invoke-static {p3}, Lcom/polidea/rxandroidble2/helpers/ValueInterpreter;->unsignedByteToInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    add-int/2addr p0, p1

    return p0
.end method

.method private static unsignedToSigned(II)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    sub-int/2addr p1, p0

    mul-int/lit8 p0, p1, -0x1

    :cond_0
    return p0
.end method
