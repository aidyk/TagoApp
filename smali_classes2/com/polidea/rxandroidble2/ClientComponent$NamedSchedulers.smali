.class public Lcom/polidea/rxandroidble2/ClientComponent$NamedSchedulers;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedSchedulers"
.end annotation


# static fields
.field public static final BLUETOOTH_CALLBACKS:Ljava/lang/String; = "bluetooth_callbacks"

.field public static final BLUETOOTH_INTERACTION:Ljava/lang/String; = "bluetooth_interaction"

.field public static final COMPUTATION:Ljava/lang/String; = "computation"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
