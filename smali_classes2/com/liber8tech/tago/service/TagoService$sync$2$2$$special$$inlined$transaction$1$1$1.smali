.class public final Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transaction$1$1$1\n+ 2 TagoService.kt\ncom/liber8tech/tago/service/TagoService$sync$2$2\n*L\n1#1,80:1\n53#2,2:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/realm/Realm;",
        "kotlin.jvm.PlatformType",
        "execute",
        "com/liber8tech/tago/util/RxRealm$transaction$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$1;->this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    const-string v0, "it"

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$1;->this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;

    iget-object v0, v0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;->$it$inlined:Lcom/liber8tech/tago/model/TagoDevice;

    check-cast v0, Lio/realm/RealmModel;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    return-void
.end method
