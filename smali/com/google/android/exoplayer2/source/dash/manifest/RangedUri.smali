.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 52
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    return-void
.end method


# virtual methods
.method public attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 8

    .line 89
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long p2, v2, v6

    if-nez p2, :cond_2

    .line 93
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v4, v6

    :goto_0
    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    .line 95
    :cond_2
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v2, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long p2, v2, v6

    if-nez p2, :cond_4

    .line 96
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v4, v6

    :goto_1
    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 124
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 126
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 107
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    .line 112
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    return v0
.end method

.method public resolveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public resolveUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
