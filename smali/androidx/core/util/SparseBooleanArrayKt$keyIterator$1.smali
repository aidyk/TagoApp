.class public final Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;
.super Lkotlin/collections/IntIterator;
.source "SparseBooleanArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/util/SparseBooleanArrayKt;->keyIterator(Landroid/util/SparseBooleanArray;)Lkotlin/collections/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/core/util/SparseBooleanArrayKt$keyIterator$1",
        "Lkotlin/collections/IntIterator;",
        "(Landroid/util/SparseBooleanArray;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "nextInt",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic receiver$0:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->receiver$0:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 82
    iget v0, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->index:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 83
    iget v0, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->index:I

    iget-object v1, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->receiver$0:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->receiver$0:Landroid/util/SparseBooleanArray;

    iget v1, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 82
    iput p1, p0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;->index:I

    return-void
.end method
