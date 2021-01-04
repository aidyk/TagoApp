.class final Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1$onConnected$1;
.super Ljava/lang/Object;
.source "SelectTagoActivity.kt"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        "onResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1$onConnected$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 152
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1$onConnected$1;->onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method

.method public final onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/location/LocationSettingsResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult | result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v0, "status"

    .line 165
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1$onConnected$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getREQUEST_LOCATION$cp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
