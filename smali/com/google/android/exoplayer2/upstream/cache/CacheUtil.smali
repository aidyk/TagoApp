.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 p2, 0x20000

    new-array v3, p2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p6

    .line 144
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {v10, v11, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 152
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    goto :goto_0

    .line 155
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v13

    .line 156
    iget-wide v0, v10, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 157
    iget-wide v2, v10, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v14, -0x1

    cmp-long v4, v2, v14

    if-eqz v4, :cond_1

    iget-wide v2, v10, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_2

    :cond_1
    invoke-interface {v11, v13}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2
    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v0, v16, v20

    if-eqz v0, :cond_7

    cmp-long v0, v16, v14

    if-eqz v0, :cond_2

    move-wide/from16 v4, v16

    goto :goto_4

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    :goto_4
    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v2, v18

    .line 159
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v20

    if-lez v2, :cond_3

    move-wide/from16 v22, v0

    goto :goto_5

    :cond_3
    neg-long v8, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide v3, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v22, v8

    move/from16 v8, p5

    move-object v9, v12

    .line 166
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J

    move-result-wide v0

    cmp-long v2, v0, v22

    if-gez v2, :cond_5

    if-eqz p7, :cond_7

    cmp-long v0, v16, v14

    if-nez v0, :cond_4

    goto :goto_7

    .line 171
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    :goto_5
    const/4 v1, 0x0

    add-long v18, v18, v22

    cmp-long v1, v16, v14

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v20, v22

    :goto_6
    const/4 v1, 0x0

    sub-long v16, v16, v20

    goto :goto_3

    :cond_7
    :goto_7
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v8

    .line 85
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 86
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v6, v4, v9

    if-eqz v6, :cond_0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    .line 87
    :goto_0
    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v11, 0x0

    .line 88
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 89
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-wide v15, v2

    move-wide v13, v4

    :goto_1
    cmp-long v2, v13, v11

    if-eqz v2, :cond_5

    const-wide v17, 0x7fffffffffffffffL

    cmp-long v2, v13, v9

    if-eqz v2, :cond_1

    move-wide v6, v13

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v17

    :goto_2
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v15

    .line 91
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-lez v4, :cond_2

    .line 94
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    goto :goto_3

    :cond_2
    neg-long v2, v2

    cmp-long v4, v2, v17

    if-nez v4, :cond_3

    return-void

    :cond_3
    :goto_3
    const/4 v4, 0x0

    add-long/2addr v15, v2

    cmp-long v4, v13, v9

    if-nez v4, :cond_4

    move-wide v2, v11

    :cond_4
    const/4 v4, 0x0

    sub-long/2addr v13, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p0

    :goto_0
    if-eqz p7, :cond_0

    .line 203
    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 206
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_6

    .line 211
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v8, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    const/4 v6, 0x0

    add-long v9, v9, p1

    iget-wide v11, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v6, 0x0

    sub-long v11, v9, v11

    const-wide/16 v13, -0x1

    iget-object v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    or-int/lit8 v16, v6, 0x2

    move-object v6, v5

    move-object v15, v9

    move-wide/from16 v9, p1

    invoke-direct/range {v6 .. v16}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    .line 216
    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1

    .line 217
    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v4, 0x0

    add-long/2addr v8, v6

    iput-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    cmp-long v4, v6, p3

    if-eqz v4, :cond_5

    .line 221
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    cmp-long v8, p3, v10

    if-eqz v8, :cond_2

    .line 224
    array-length v8, v2

    int-to-long v8, v8

    sub-long v12, p3, v6

    .line 225
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    goto :goto_2

    :cond_2
    array-length v8, v2

    .line 224
    :goto_2
    invoke-interface {v1, v2, v4, v8}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 228
    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_5

    .line 229
    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v4, 0x0

    add-long/2addr v8, v6

    iput-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    goto :goto_3

    :cond_3
    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 234
    iget-wide v12, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    const/4 v4, 0x0

    add-long/2addr v12, v8

    iput-wide v12, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    goto :goto_1

    .line 222
    :cond_4
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :cond_5
    :goto_3
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v6

    :catch_0
    move-object v4, v5

    goto :goto_4

    .line 207
    :cond_6
    :try_start_2
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_2
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 240
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :catch_1
    :goto_4
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 253
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
