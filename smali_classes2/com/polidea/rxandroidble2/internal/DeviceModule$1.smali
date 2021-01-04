.class final Lcom/polidea/rxandroidble2/internal/DeviceModule$1;
.super Ljava/lang/Object;
.source "DeviceModule.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectionStateBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxrelay2/BehaviorRelay;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule$1;->val$connectionStateBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule$1;->val$connectionStateBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method
