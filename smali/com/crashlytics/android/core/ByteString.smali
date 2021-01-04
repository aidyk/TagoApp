.class final Lcom/crashlytics/android/core/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ByteString$CodedBuilder;,
        Lcom/crashlytics/android/core/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/crashlytics/android/core/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    sput-object v0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 53
    iput-object p1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/crashlytics/android/core/ByteString$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/core/ByteString;
    .locals 1

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/crashlytics/android/core/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/crashlytics/android/core/ByteString;
    .locals 0

    .line 109
    new-array p1, p1, [B

    .line 110
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    new-instance p0, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom(Ljava/util/List;)Lcom/crashlytics/android/core/ByteString;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/crashlytics/android/core/ByteString;",
            ">;)",
            "Lcom/crashlytics/android/core/ByteString;"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget-object p0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-object p0

    .line 154
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 155
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/crashlytics/android/core/ByteString;

    return-object p0

    .line 159
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/crashlytics/android/core/ByteString;

    .line 160
    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 162
    :cond_2
    new-array v0, v1, [B

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/crashlytics/android/core/ByteString;

    .line 165
    iget-object v4, v3, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v5

    invoke-static {v4, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 168
    :cond_3
    new-instance p0, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom([B)Lcom/crashlytics/android/core/ByteString;
    .locals 2

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom([BII)Lcom/crashlytics/android/core/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Lcom/crashlytics/android/core/ByteString;
    .locals 2

    .line 92
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance p0, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .locals 2

    .line 137
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static newCodedBuilder(I)Lcom/crashlytics/android/core/ByteString$CodedBuilder;
    .locals 2

    .line 368
    new-instance v0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/ByteString$CodedBuilder;-><init>(ILcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/crashlytics/android/core/ByteString$Output;
    .locals 1

    const/16 v0, 0x20

    .line 327
    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->newOutput(I)Lcom/crashlytics/android/core/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/crashlytics/android/core/ByteString$Output;
    .locals 2

    .line 320
    new-instance v0, Lcom/crashlytics/android/core/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/crashlytics/android/core/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public copyTo([BI)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyTo([BIII)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Lcom/crashlytics/android/core/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 262
    :cond_1
    check-cast p1, Lcom/crashlytics/android/core/ByteString;

    .line 263
    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    .line 264
    iget-object v3, p1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v3, v3

    if-eq v1, v3, :cond_2

    return v2

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 269
    iget-object p1, p1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 271
    aget-byte v5, v3, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 283
    iget v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 287
    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 291
    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 297
    :goto_1
    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 2

    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    .line 215
    new-array v1, v0, [B

    .line 216
    iget-object v2, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .locals 3

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
