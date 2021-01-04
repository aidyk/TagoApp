.class Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$3;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->notUnsubscribed(Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)Lio/reactivex/functions/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;

.field final synthetic val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$3;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$3;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$3;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->isWrappedEmitterUnsubscribed()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
