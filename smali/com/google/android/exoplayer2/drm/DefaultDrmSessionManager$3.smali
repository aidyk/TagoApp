.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$3;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    return-void
.end method
