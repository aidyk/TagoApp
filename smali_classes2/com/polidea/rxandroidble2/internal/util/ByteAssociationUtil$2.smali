.class final Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$2;
.super Ljava/lang/Object;
.source "ByteAssociationUtil.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->getBytesFromAssociation()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
        "*>;[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$2;->apply(Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;)[B

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "*>;)[B"
        }
    .end annotation

    .line 28
    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;->second:[B

    return-object p1
.end method
