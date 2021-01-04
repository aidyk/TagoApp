.class public final Lcom/google/android/gms/internal/vision/zzjk;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzacz:I

.field private final zzada:I

.field private zzadb:I

.field private zzadc:I

.field private zzadd:Lcom/google/android/gms/internal/vision/zzez;

.field private zzsf:I

.field private zzsg:I

.field private zzsh:I

.field private zzsl:I

.field private zzsn:I

.field private zzso:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 105
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    const/16 v0, 0x40

    .line 106
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsg:I

    const/high16 v0, 0x4000000

    .line 107
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsh:I

    .line 108
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->buffer:[B

    .line 109
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    add-int/2addr p3, p2

    .line 110
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    iput p3, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzada:I

    .line 111
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    return-void
.end method

.method private final zzap(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 174
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    if-gt v0, v1, :cond_1

    .line 177
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 178
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzht()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object p1

    throw p1

    .line 175
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzap(I)V

    .line 176
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzht()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object p1

    throw p1

    .line 173
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzhu()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object p1

    throw p1
.end method

.method private final zzdx()V
    .locals 2

    .line 139
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsl:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    .line 140
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    .line 141
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    if-le v0, v1, :cond_0

    .line 142
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsl:I

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsl:I

    return-void
.end method

.method private final zzdy()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    if-eq v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    aget-byte v0, v0, v1

    return v0

    .line 170
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzht()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object v0

    throw v0
.end method

.method public static zzk([BII)Lcom/google/android/gms/internal/vision/zzjk;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjk;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzjk;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final getPosition()I
    .locals 2

    .line 153
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 52
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    sget-object v4, Lcom/google/android/gms/internal/vision/zzjr;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 55
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    return-object v1

    .line 53
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzht()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object v0

    throw v0

    .line 51
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzhu()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzhq;)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(",
            "Lcom/google/android/gms/internal/vision/zzhq<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadd:Lcom/google/android/gms/internal/vision/zzez;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzada:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzez;->zze([BII)Lcom/google/android/gms/internal/vision/zzez;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadd:Lcom/google/android/gms/internal/vision/zzez;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadd:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    .line 117
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 122
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadd:Lcom/google/android/gms/internal/vision/zzez;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzez;->zzap(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadd:Lcom/google/android/gms/internal/vision/zzez;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsg:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsf:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzez;->zzam(I)I

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadd:Lcom/google/android/gms/internal/vision/zzez;

    .line 125
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfk;->zzel()Lcom/google/android/gms/internal/vision/zzfk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzhq;Lcom/google/android/gms/internal/vision/zzfk;)Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzfy;

    .line 126
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzal(I)Z

    return-object p1

    .line 119
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v2, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 121
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzgf; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/vision/zzjs;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    .line 58
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsf:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsg:I

    if-ge v1, v2, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzan(I)I

    move-result v0

    .line 62
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsf:I

    .line 63
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzjt;->zza(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzjt;

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzak(I)V

    .line 65
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsf:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsf:I

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzao(I)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjs;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1
.end method

.method public final zzak(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjs;
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    if-ne v0, p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjs;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public final zzal(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 46
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjs;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzal(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzak(I)V

    return v1

    .line 31
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzap(I)V

    return v1

    .line 22
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    return v1

    .line 19
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzan(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjs;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 132
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    add-int/2addr p1, v0

    .line 133
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    if-gt p1, v0, :cond_0

    .line 136
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    .line 137
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdx()V

    return v0

    .line 135
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzht()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object p1

    throw p1

    .line 131
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzhu()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object p1

    throw p1
.end method

.method public final zzao(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdx()V

    return-void
.end method

.method public final zzbt(I)V
    .locals 1

    .line 160
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzw(II)V

    return-void
.end method

.method public final zzcu()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzdq()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    return v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzjs;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/lang/String;)V

    .line 9
    throw v0
.end method

.method public final zzdt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 78
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzhv()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return v0
.end method

.method public final zzdu()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjs;->zzhv()Lcom/google/android/gms/internal/vision/zzjs;

    move-result-object v0

    throw v0
.end method

.method public final zzdv()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v0

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v1

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v2

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjk;->zzdy()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzhq()I
    .locals 2

    .line 149
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    .line 152
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzso:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final zzv(II)[B
    .locals 3

    if-nez p2, :cond_0

    .line 155
    sget-object p1, Lcom/google/android/gms/internal/vision/zzjw;->zzaea:[B

    return-object p1

    .line 156
    :cond_0
    new-array v0, p2, [B

    .line 157
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    add-int/2addr v1, p1

    .line 158
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzjk;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method final zzw(II)V
    .locals 3

    .line 162
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 166
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    .line 167
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzsn:I

    return-void

    .line 165
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 163
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzadc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzjk;->zzacz:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
