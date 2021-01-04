.class public Lio/realm/internal/sync/SubscriptionAction;
.super Ljava/lang/Object;
.source "SubscriptionAction.java"


# static fields
.field public static final ANONYMOUS_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

.field public static final NO_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;


# instance fields
.field private final subscriptionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lio/realm/internal/sync/SubscriptionAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/sync/SubscriptionAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/realm/internal/sync/SubscriptionAction;->NO_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    .line 24
    new-instance v0, Lio/realm/internal/sync/SubscriptionAction;

    const-string v1, ""

    invoke-direct {v0, v1}, Lio/realm/internal/sync/SubscriptionAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/realm/internal/sync/SubscriptionAction;->ANONYMOUS_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/realm/internal/sync/SubscriptionAction;->subscriptionName:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/realm/internal/sync/SubscriptionAction;
    .locals 1

    .line 27
    new-instance v0, Lio/realm/internal/sync/SubscriptionAction;

    invoke-direct {v0, p0}, Lio/realm/internal/sync/SubscriptionAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/realm/internal/sync/SubscriptionAction;->subscriptionName:Ljava/lang/String;

    return-object v0
.end method

.method public shouldCreateSubscriptions()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lio/realm/internal/sync/SubscriptionAction;->subscriptionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
