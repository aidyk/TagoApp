.class Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;

.field final synthetic val$newMediaSourceHolder:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;->val$newMediaSourceHolder:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1

    .line 287
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;->val$newMediaSourceHolder:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->access$000(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
