.class final Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$3;
.super Ljava/lang/Object;
.source "StoreActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/StoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012@\u0010\u0002\u001a<\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u0004 \u0006*\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lcom/liber8tech/tago/android/activity/StoreAdapterData;",
        "it",
        "",
        "",
        "Lcom/liber8tech/tago/model/Pack;",
        "kotlin.jvm.PlatformType",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/StoreAdapterData;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$3;->$adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Lcom/liber8tech/tago/android/activity/StoreAdapterData;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;>;)",
            "Lcom/liber8tech/tago/android/activity/StoreAdapterData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$3;->$adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/activity/StoreAdapterData;->setCategoryData(Ljava/util/List;)V

    .line 63
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$3;->$adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$3;->apply(Ljava/util/List;)Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    move-result-object p1

    return-object p1
.end method
