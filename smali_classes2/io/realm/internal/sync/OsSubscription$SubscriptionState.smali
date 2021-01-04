.class public final enum Lio/realm/internal/sync/OsSubscription$SubscriptionState;
.super Ljava/lang/Enum;
.source "OsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/sync/OsSubscription$SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum CREATING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum INVALIDATED:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum PENDING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 34
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "CREATING"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->CREATING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 35
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3, v2}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->PENDING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 36
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 37
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "INVALIDATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->INVALIDATED:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->CREATING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->PENDING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->INVALIDATED:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->$VALUES:[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->val:I

    return-void
.end method

.method public static fromInternalValue(I)Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .locals 5

    .line 46
    invoke-static {}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->values()[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    iget v4, v3, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->val:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .locals 1

    .line 32
    const-class v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .locals 1

    .line 32
    sget-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->$VALUES:[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    invoke-virtual {v0}, [Lio/realm/internal/sync/OsSubscription$SubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    return-object v0
.end method
