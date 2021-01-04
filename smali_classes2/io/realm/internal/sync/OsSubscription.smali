.class public Lio/realm/internal/sync/OsSubscription;
.super Ljava/lang/Object;
.source "OsSubscription.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/sync/OsSubscription$Callback;,
        Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;,
        Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field protected final observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    invoke-static {}, Lio/realm/internal/sync/OsSubscription;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/sync/OsSubscription;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 77
    invoke-virtual {p1}, Lio/realm/internal/OsResults;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/realm/internal/sync/OsSubscription;->nativeCreate(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    return-void
.end method

.method private static native nativeCreate(JLjava/lang/String;)J
.end method

.method private static native nativeGetError(J)Ljava/lang/Object;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetState(J)I
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners()V
    .locals 3
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .line 116
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/sync/OsSubscription$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/realm/internal/sync/OsSubscription$Callback;-><init>(Lio/realm/internal/sync/OsSubscription$1;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/sync/OsSubscription;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeStartListening(J)V

    .line 103
    :cond_0
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;

    invoke-direct {v1, p0, p1}, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;-><init>(Lio/realm/internal/sync/OsSubscription;Lio/realm/RealmChangeListener;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeGetError(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 87
    sget-wide v0, Lio/realm/internal/sync/OsSubscription;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    return-wide v0
.end method

.method public getState()Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .locals 2

    .line 91
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeGetState(J)I

    move-result v0

    invoke-static {v0}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->fromInternalValue(I)Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/sync/OsSubscription;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeStopListening(J)V

    :cond_0
    return-void
.end method
