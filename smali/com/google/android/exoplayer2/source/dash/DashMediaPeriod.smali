.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private adaptationSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final elapsedRealtimeOffset:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final id:I

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private periodIndex:I

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

.field private final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 74
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 75
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 76
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 77
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 78
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 79
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 80
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 81
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 83
    new-instance p1, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    .line 84
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    .line 85
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 86
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 87
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    return-void
.end method

.method private buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 334
    new-array v1, v1, [I

    .line 335
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->hasEmbeddedEventMessageTrack:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x4

    aput v4, v1, v3

    const/4 v3, 0x1

    .line 339
    :cond_0
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->hasEmbeddedCea608Track:Z

    if-eqz v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x3

    .line 341
    aput v6, v1, v3

    move v3, v5

    .line 343
    :cond_1
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 344
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_2
    move-object v3, v1

    .line 346
    iget-object v11, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v12, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v13, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v14, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-wide v5, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move-object/from16 v16, p2

    move/from16 v17, v1

    move-wide/from16 v18, v5

    move/from16 v20, v2

    move/from16 v21, v4

    invoke-interface/range {v11 .. v21}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZ)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v4

    .line 350
    new-instance v11, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-object v5, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v8, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    iget-object v9, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object v0, v11

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p0

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v11
.end method

.method private static buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 234
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getGroupedAdaptationSetIndices(Ljava/util/List;)[[I

    move-result-object v1

    .line 236
    array-length v2, v1

    .line 237
    new-array v3, v2, [Z

    .line 238
    new-array v4, v2, [Z

    const/4 v5, 0x0

    move v7, v2

    const/4 v6, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v2, :cond_2

    .line 241
    aget-object v9, v1, v6

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Ljava/util/List;[I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 242
    aput-boolean v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    .line 245
    :cond_0
    aget-object v9, v1, v6

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Ljava/util/List;[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 246
    aput-boolean v8, v4, v6

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    :cond_2
    new-array v6, v7, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 252
    new-array v7, v7, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v9, v2, :cond_7

    .line 256
    aget-object v15, v1, v9

    .line 257
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 258
    array-length v11, v15

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_3

    aget v13, v15, v12

    .line 259
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 261
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/exoplayer2/Format;

    const/4 v12, 0x0

    .line 262
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_4

    .line 263
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v13, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 266
    :cond_4
    aget v10, v15, v5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 268
    aget-boolean v18, v3, v9

    .line 269
    aget-boolean v19, v4, v9

    .line 271
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v6, v17

    add-int/lit8 v20, v17, 0x1

    .line 272
    new-instance v21, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iget v11, v14, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/16 v16, 0x1

    move-object/from16 v10, v21

    move-object v12, v15

    move/from16 v13, v17

    move-object v5, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(I[IIZZZ)V

    aput-object v21, v7, v17

    const/4 v15, 0x0

    if-eqz v18, :cond_5

    .line 275
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":emsg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/x-emsg"

    const/4 v12, -0x1

    invoke-static {v10, v11, v15, v12, v15}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 277
    new-instance v11, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v12, v8, [Lcom/google/android/exoplayer2/Format;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v11, v6, v20

    add-int/lit8 v18, v20, 0x1

    .line 278
    new-instance v21, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v11, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move/from16 v13, v17

    move-object v8, v15

    move/from16 v15, v16

    move/from16 v16, v23

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(I[IIZZZ)V

    aput-object v21, v7, v20

    goto :goto_4

    :cond_5
    move-object v8, v15

    move/from16 v18, v20

    :goto_4
    if-eqz v19, :cond_6

    .line 282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":cea608"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "application/cea-608"

    const/4 v15, 0x0

    invoke-static {v5, v10, v15, v8}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 284
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v14, 0x1

    new-array v10, v14, [Lcom/google/android/exoplayer2/Format;

    aput-object v5, v10, v15

    invoke-direct {v8, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v6, v18

    add-int/lit8 v5, v18, 0x1

    .line 285
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v11, 0x3

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v10, v8

    move-object/from16 v12, v22

    move/from16 v13, v17

    const/16 v17, 0x1

    move/from16 v14, v16

    const/16 v21, 0x0

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(I[IIZZZ)V

    aput-object v8, v7, v18

    move/from16 v18, v5

    goto :goto_5

    :cond_6
    const/16 v17, 0x1

    const/16 v21, 0x0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v18

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 290
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 358
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v2, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 359
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getGroupedAdaptationSetIndices(Ljava/util/List;)[[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 294
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 295
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 297
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_0
    new-array v3, v0, [[I

    .line 301
    new-array v4, v0, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    .line 305
    aget-boolean v7, v4, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 309
    aput-boolean v7, v4, v5

    .line 311
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 310
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 313
    new-array v7, v7, [I

    aput v5, v7, v2

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_3

    .line 315
    :cond_2
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 316
    array-length v9, v8

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 317
    aput v5, v9, v2

    const/4 v10, 0x0

    .line 318
    :goto_2
    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 319
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 320
    aput-boolean v7, v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 321
    aput v11, v9, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 323
    aput-object v9, v3, v6

    move v6, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v6, v0, :cond_5

    .line 328
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [[I

    :cond_5
    return-object v3
.end method

.method private static hasCea608Track(Ljava/util/List;[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 382
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 383
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    const/4 v4, 0x0

    .line 384
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 385
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    .line 386
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static hasEventMessageTrack(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 368
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 369
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v4, 0x0

    .line 370
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 371
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 372
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 396
    new-array p0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 1

    .line 400
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 401
    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(J)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 191
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardEmbeddedTracksTo(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 111
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 104
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 218
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 9

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    .line 130
    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v3, :cond_2

    .line 132
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 133
    aget-object v6, p1, v2

    if-eqz v6, :cond_1

    aget-boolean v6, p2, v2

    if-nez v6, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 134
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 135
    aput-object v4, p3, v2

    .line 141
    :cond_2
    :goto_2
    aget-object v3, p3, v2

    if-nez v3, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    .line 142
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 143
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v4, v4, v3

    .line 144
    iget-boolean v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->isPrimary:Z

    if-eqz v6, :cond_3

    .line 145
    aget-object v6, p1, v2

    invoke-direct {p0, v4, v6, p5, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v4

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    aput-object v4, p3, v2

    .line 149
    aput-boolean v5, p4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 154
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_c

    .line 155
    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v3, :cond_5

    aget-object v3, p3, v2

    instance-of v3, v3, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-eqz v3, :cond_7

    :cond_5
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    aget-boolean v3, p2, v2

    if-nez v3, :cond_7

    .line 158
    :cond_6
    aget-object v3, p3, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 159
    aput-object v4, p3, v2

    .line 163
    :cond_7
    aget-object v3, p1, v2

    if-eqz v3, :cond_b

    .line 164
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 165
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v3, v6, v3

    .line 166
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->isPrimary:Z

    if-nez v6, :cond_b

    .line 167
    iget v6, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 167
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 169
    aget-object v7, p3, v2

    if-nez v6, :cond_8

    .line 170
    instance-of v8, v7, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    goto :goto_4

    :cond_8
    instance-of v8, v7, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v8, v6, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_b

    .line 174
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    if-nez v6, :cond_a

    .line 175
    new-instance v3, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    goto :goto_5

    :cond_a
    iget v3, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 176
    invoke-virtual {v6, p5, p6, v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v3

    :goto_5
    aput-object v3, p3, v2

    .line 177
    aput-boolean v5, p4, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    :cond_c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 183
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    new-instance p1, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    return-wide p5
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 4

    .line 91
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 92
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 93
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 96
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method
