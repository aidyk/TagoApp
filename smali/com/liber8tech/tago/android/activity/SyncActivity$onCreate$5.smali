.class final Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;
.super Ljava/lang/Object;
.source "SyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $pattern:Lcom/liber8tech/tago/model/Pattern;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;->$pattern:Lcom/liber8tech/tago/model/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;->$pattern:Lcom/liber8tech/tago/model/Pattern;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/liber8tech/tago/android/activity/SyncActivity;->startPatternSync$default(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;JILjava/lang/Object;)V

    return-void
.end method
