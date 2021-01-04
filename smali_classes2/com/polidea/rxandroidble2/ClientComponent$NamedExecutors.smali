.class public Lcom/polidea/rxandroidble2/ClientComponent$NamedExecutors;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedExecutors"
.end annotation


# static fields
.field public static final BLUETOOTH_CALLBACKS:Ljava/lang/String; = "executor_bluetooth_callbacks"

.field public static final BLUETOOTH_INTERACTION:Ljava/lang/String; = "executor_bluetooth_interaction"

.field public static final CONNECTION_QUEUE:Ljava/lang/String; = "executor_connection_queue"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
