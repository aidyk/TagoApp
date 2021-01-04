.class final Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V
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
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Single;",
        "",
        "Lcom/liber8tech/tago/model/Pattern;",
        "it",
        "",
        "apply",
        "(Lkotlin/Unit;)Lio/reactivex/Single;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Unit;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pattern;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/ImageEditorService;->getCreatedPatternList()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$1;->apply(Lkotlin/Unit;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
