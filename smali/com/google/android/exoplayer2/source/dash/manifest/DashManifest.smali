.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
.super Ljava/lang/Object;
.source "DashManifest.java"


# instance fields
.field public final availabilityStartTime:J

.field public final duration:J

.field public final dynamic:Z

.field public final location:Landroid/net/Uri;

.field public final minBufferTime:J

.field public final minUpdatePeriod:J

.field private final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final suggestedPresentationDelay:J

.field public final timeShiftBufferDepth:J

.field public final utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;


# direct methods
.method public constructor <init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 54
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-wide v1, p3

    .line 55
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    move-wide v1, p5

    .line 56
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTime:J

    move v1, p7

    .line 57
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    move-wide v1, p8

    .line 58
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    move-wide v1, p10

    .line 59
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-wide v1, p12

    .line 60
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-object/from16 v1, p14

    .line 61
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v1, p15

    .line 62
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-nez p16, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p16

    :goto_0
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    return-void
.end method

.method private static copyAdaptationSets(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    .line 122
    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :cond_0
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    .line 126
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 128
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 129
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 132
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    .line 134
    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    if-ne v6, v1, :cond_2

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    if-eq v6, v3, :cond_1

    .line 136
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v7, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    iget v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    iget-object v10, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    if-eq v3, v1, :cond_0

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 93
    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 99
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_2

    .line 100
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    iget v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    if-eq v6, v5, :cond_0

    .line 102
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_1

    add-long/2addr v3, v9

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v6

    .line 108
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 109
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->copyAdaptationSets(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 110
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-object v9, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    iget-wide v10, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v10, v3

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    sub-long/2addr v5, v3

    move-wide v7, v5

    .line 114
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v4, v1

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTime:J

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-object/from16 v21, v4

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-wide/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v4, v21

    invoke-direct/range {v4 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v1
.end method

.method public final getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    return-object p1
.end method

.method public final getPeriodCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPeriodDurationMs(I)J
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p1, v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    move-wide v0, v1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 76
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final getPeriodDurationUs(I)J
    .locals 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method
