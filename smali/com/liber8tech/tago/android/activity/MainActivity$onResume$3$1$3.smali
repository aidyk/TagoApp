.class final Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$3;
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
        "Lio/reactivex/ObservableSource<",
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "it",
        "Lcom/liber8tech/tago/model/Pattern;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/liber8tech/tago/model/Pattern;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/liber8tech/tago/model/Pattern;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/model/Pattern;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/MainActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/Pattern;->getSrc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "BitmapFactory.decodeFile(it.src)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/ImageEditorService;->uploadBitmap(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/liber8tech/tago/model/Pattern;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$3;->apply(Lcom/liber8tech/tago/model/Pattern;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
