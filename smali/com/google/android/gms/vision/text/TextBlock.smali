.class public Lcom/google/android/gms/vision/text/TextBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field private cornerPoints:[Landroid/graphics/Point;

.field private zzev:[Lcom/google/android/gms/internal/vision/zzae;

.field private zzew:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/text/Line;",
            ">;"
        }
    .end annotation
.end field

.field private zzex:Ljava/lang/String;

.field private zzey:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/vision/zzae;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzae;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/zzae;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzey:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/google/android/gms/vision/text/zzc;->zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzey:Landroid/graphics/Rect;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzey:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzew:Ljava/util/List;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzew:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 92
    iget-object v4, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzew:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/vision/text/Line;

    invoke-direct {v5, v3}, Lcom/google/android/gms/vision/text/Line;-><init>(Lcom/google/android/gms/internal/vision/zzae;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzew:Ljava/util/List;

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 19

    move-object/from16 v0, p0

    .line 31
    iget-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    if-nez v1, :cond_4

    .line 33
    iget-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 34
    new-array v1, v2, [Landroid/graphics/Point;

    iput-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    goto/16 :goto_3

    :cond_0
    const/high16 v1, -0x80000000

    const v3, 0x7fffffff

    const/4 v1, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    .line 40
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v7, v7

    const/4 v10, 0x4

    if-ge v1, v7, :cond_2

    .line 41
    iget-object v7, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/google/android/gms/internal/vision/zzae;->zzfd:Lcom/google/android/gms/internal/vision/zzy;

    iget-object v12, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    aget-object v12, v12, v2

    iget-object v12, v12, Lcom/google/android/gms/internal/vision/zzae;->zzfd:Lcom/google/android/gms/internal/vision/zzy;

    .line 42
    iget v13, v12, Lcom/google/android/gms/internal/vision/zzy;->left:I

    neg-int v13, v13

    .line 43
    iget v14, v12, Lcom/google/android/gms/internal/vision/zzy;->top:I

    neg-int v14, v14

    .line 44
    iget v15, v12, Lcom/google/android/gms/internal/vision/zzy;->zzfb:F

    float-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 45
    iget v12, v12, Lcom/google/android/gms/internal/vision/zzy;->zzfb:F

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 46
    new-array v15, v10, [Landroid/graphics/Point;

    .line 47
    new-instance v10, Landroid/graphics/Point;

    iget v2, v7, Lcom/google/android/gms/internal/vision/zzy;->left:I

    move/from16 v16, v6

    iget v6, v7, Lcom/google/android/gms/internal/vision/zzy;->top:I

    invoke-direct {v10, v2, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x0

    aput-object v10, v15, v2

    .line 48
    aget-object v6, v15, v2

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Point;->offset(II)V

    .line 49
    aget-object v6, v15, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    aget-object v6, v15, v2

    iget v6, v6, Landroid/graphics/Point;->y:I

    move/from16 v17, v3

    int-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    add-double/2addr v13, v2

    double-to-int v2, v13

    const/4 v3, 0x0

    .line 50
    aget-object v6, v15, v3

    iget v6, v6, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    int-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    aget-object v6, v15, v3

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v11

    add-double/2addr v13, v8

    double-to-int v6, v13

    .line 51
    aget-object v8, v15, v3

    iput v2, v8, Landroid/graphics/Point;->x:I

    .line 52
    aget-object v8, v15, v3

    iput v6, v8, Landroid/graphics/Point;->y:I

    .line 53
    new-instance v3, Landroid/graphics/Point;

    iget v8, v7, Lcom/google/android/gms/internal/vision/zzy;->width:I

    add-int/2addr v8, v2

    invoke-direct {v3, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x1

    aput-object v3, v15, v8

    .line 54
    new-instance v3, Landroid/graphics/Point;

    iget v8, v7, Lcom/google/android/gms/internal/vision/zzy;->width:I

    add-int/2addr v8, v2

    iget v9, v7, Lcom/google/android/gms/internal/vision/zzy;->height:I

    add-int/2addr v9, v6

    invoke-direct {v3, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x2

    aput-object v3, v15, v8

    .line 55
    new-instance v3, Landroid/graphics/Point;

    iget v7, v7, Lcom/google/android/gms/internal/vision/zzy;->height:I

    add-int/2addr v6, v7

    invoke-direct {v3, v2, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x3

    aput-object v3, v15, v2

    move/from16 v6, v16

    move/from16 v3, v17

    const/4 v2, 0x0

    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_1

    .line 59
    aget-object v7, v15, v2

    .line 60
    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 61
    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 62
    iget v8, v7, Landroid/graphics/Point;->y:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 63
    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    move/from16 v17, v3

    move/from16 v16, v6

    .line 66
    iget-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzae;->zzfd:Lcom/google/android/gms/internal/vision/zzy;

    .line 67
    iget v2, v1, Lcom/google/android/gms/internal/vision/zzy;->left:I

    .line 68
    iget v3, v1, Lcom/google/android/gms/internal/vision/zzy;->top:I

    .line 69
    iget v6, v1, Lcom/google/android/gms/internal/vision/zzy;->zzfb:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 70
    iget v1, v1, Lcom/google/android/gms/internal/vision/zzy;->zzfb:F

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const/4 v1, 0x4

    .line 71
    new-array v10, v1, [Landroid/graphics/Point;

    .line 72
    new-instance v1, Landroid/graphics/Point;

    move/from16 v11, v17

    invoke-direct {v1, v11, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v12, 0x0

    aput-object v1, v10, v12

    .line 73
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v10, v4

    .line 74
    new-instance v1, Landroid/graphics/Point;

    move/from16 v4, v16

    invoke-direct {v1, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x2

    aput-object v1, v10, v5

    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v11, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    aput-object v1, v10, v4

    :goto_2
    const/4 v1, 0x4

    if-ge v12, v1, :cond_3

    .line 77
    aget-object v4, v10, v12

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    aget-object v11, v10, v12

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v6

    sub-double/2addr v4, v13

    double-to-int v4, v4

    .line 78
    aget-object v5, v10, v12

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v6

    aget-object v5, v10, v12

    iget v5, v5, Landroid/graphics/Point;->y:I

    move/from16 v18, v2

    int-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v8

    add-double/2addr v13, v1

    double-to-int v1, v13

    .line 79
    aget-object v2, v10, v12

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 80
    aget-object v2, v10, v12

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 81
    aget-object v1, v10, v12

    move/from16 v2, v18

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 84
    :cond_3
    iput-object v10, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    .line 85
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 12
    iget-object v6, v5, Lcom/google/android/gms/internal/vision/zzae;->zzex:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    iget-object v6, v5, Lcom/google/android/gms/internal/vision/zzae;->zzex:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 14
    :goto_1
    iget-object v5, v5, Lcom/google/android/gms/internal/vision/zzae;->zzex:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/vision/text/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/vision/text/zza;-><init>(Lcom/google/android/gms/vision/text/TextBlock;)V

    .line 18
    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "und"

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzex:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzae;->zzfg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, "\n"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzev:[Lcom/google/android/gms/internal/vision/zzae;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/vision/zzae;->zzfg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
