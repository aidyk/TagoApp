.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredTimeline"
.end annotation


# static fields
.field private static final DUMMY_ID:Ljava/lang/Object;

.field private static final period:Lcom/google/android/exoplayer2/Timeline$Period;


# instance fields
.field private final replacedID:Ljava/lang/Object;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 472
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    .line 473
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    const/4 v0, 0x0

    .line 479
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 480
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 485
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cloneWithNewTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
    .locals 4

    .line 489
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    .line 490
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    sget-object v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    .line 533
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 9

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 520
    sget-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    sget-object p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 524
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    if-ne p1, p3, :cond_3

    .line 525
    sget-object p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_3
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 18

    move-object/from16 v0, p0

    .line 505
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v2, p2

    .line 507
    invoke-virtual/range {v2 .. v17}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    .line 509
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    :goto_0
    return v0
.end method
