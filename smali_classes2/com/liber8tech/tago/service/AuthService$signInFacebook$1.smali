.class final Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;
.super Ljava/lang/Object;
.source "AuthService.kt"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/AuthService;->signInFacebook(Landroid/app/Activity;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthService.kt\ncom/liber8tech/tago/service/AuthService$signInFacebook$1\n*L\n1#1,138:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "emitter",
        "Lio/reactivex/SingleEmitter;",
        "",
        "kotlin.jvm.PlatformType",
        "subscribe"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $source:Landroid/app/Activity;

.field final synthetic this$0:Lcom/liber8tech/tago/service/AuthService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/AuthService;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;->this$0:Lcom/liber8tech/tago/service/AuthService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;->$source:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 5
    .param p1    # Lio/reactivex/SingleEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;->$source:Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "email"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "user_birthday"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "user_location"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 55
    iget-object v1, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;->this$0:Lcom/liber8tech/tago/service/AuthService;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/AuthService;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v1

    new-instance v2, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1$$special$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1$$special$$inlined$apply$lambda$1;-><init>(Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;Lio/reactivex/SingleEmitter;)V

    check-cast v2, Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method
