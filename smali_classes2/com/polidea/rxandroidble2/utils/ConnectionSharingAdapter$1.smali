.class Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter$1;
.super Ljava/lang/Object;
.source "ConnectionSharingAdapter.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter$1;->this$0:Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter$1;->this$0:Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->access$000(Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
