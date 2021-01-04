.class public final Lcom/liber8tech/tago/analytics/Metric;
.super Ljava/lang/Object;
.source "Metric.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/liber8tech/tago/analytics/Metric;",
        "",
        "index",
        "",
        "metric",
        "",
        "(IF)V",
        "getIndex",
        "()I",
        "getMetric",
        "()F",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final index:I

.field private final metric:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    iput p2, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/liber8tech/tago/analytics/Metric;IFILjava/lang/Object;)Lcom/liber8tech/tago/analytics/Metric;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/analytics/Metric;->copy(IF)Lcom/liber8tech/tago/analytics/Metric;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    return v0
.end method

.method public final copy(IF)Lcom/liber8tech/tago/analytics/Metric;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/liber8tech/tago/analytics/Metric;

    invoke-direct {v0, p1, p2}, Lcom/liber8tech/tago/analytics/Metric;-><init>(IF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/liber8tech/tago/analytics/Metric;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/liber8tech/tago/analytics/Metric;

    iget v1, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    iget v3, p1, Lcom/liber8tech/tago/analytics/Metric;->index:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    iget p1, p1, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    return v0
.end method

.method public final getMetric()F
    .locals 1

    .line 3
    iget v0, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metric(index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/liber8tech/tago/analytics/Metric;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", metric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/liber8tech/tago/analytics/Metric;->metric:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
