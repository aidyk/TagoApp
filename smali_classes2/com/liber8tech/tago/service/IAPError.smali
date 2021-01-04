.class public final enum Lcom/liber8tech/tago/service/IAPError;
.super Ljava/lang/Enum;
.source "IAPService.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liber8tech/tago/service/IAPError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/IAPError;",
        "",
        "message",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "ERROR",
        "BILLING_UNAVAILABLE",
        "DEVELOPER_ERROR",
        "FEATURE_NOT_SUPPORTED",
        "ITEM_ALREADY_OWNED",
        "ITEM_NOT_OWNED",
        "ITEM_UNAVAILABLE",
        "SERVICE_DISCONNECTED",
        "SERVICE_UNAVAILABLE",
        "USER_CANCELED",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liber8tech/tago/service/IAPError;

.field public static final enum BILLING_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum DEVELOPER_ERROR:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum ERROR:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum ITEM_ALREADY_OWNED:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum ITEM_NOT_OWNED:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum ITEM_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum SERVICE_DISCONNECTED:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

.field public static final enum USER_CANCELED:Lcom/liber8tech/tago/service/IAPError;


# instance fields
.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/liber8tech/tago/service/IAPError;

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "ERROR"

    const-string v3, "ERROR"

    const/4 v4, 0x0

    .line 141
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->ERROR:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "BILLING_UNAVAILABLE"

    const-string v3, "BILLING_UNAVAILABLE"

    const/4 v4, 0x1

    .line 142
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->BILLING_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "DEVELOPER_ERROR"

    const-string v3, "DEVELOPER_ERROR"

    const/4 v4, 0x2

    .line 143
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->DEVELOPER_ERROR:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "FEATURE_NOT_SUPPORTED"

    const-string v3, "FEATURE_NOT_SUPPORTED"

    const/4 v4, 0x3

    .line 144
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->FEATURE_NOT_SUPPORTED:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "ITEM_ALREADY_OWNED"

    const-string v3, "ITEM_ALREADY_OWNED"

    const/4 v4, 0x4

    .line 145
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->ITEM_ALREADY_OWNED:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "ITEM_NOT_OWNED"

    const-string v3, "ITEM_NOT_OWNED"

    const/4 v4, 0x5

    .line 146
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->ITEM_NOT_OWNED:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "ITEM_UNAVAILABLE"

    const-string v3, "ITEM_UNAVAILABLE"

    const/4 v4, 0x6

    .line 147
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->ITEM_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "SERVICE_DISCONNECTED"

    const-string v3, "SERVICE_DISCONNECTED"

    const/4 v4, 0x7

    .line 148
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->SERVICE_DISCONNECTED:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "SERVICE_UNAVAILABLE"

    const-string v3, "SERVICE_UNAVAILABLE"

    const/16 v4, 0x8

    .line 149
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->SERVICE_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/service/IAPError;

    const-string v2, "USER_CANCELED"

    const-string v3, "USER_CANCELED"

    const/16 v4, 0x9

    .line 150
    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/service/IAPError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/liber8tech/tago/service/IAPError;->USER_CANCELED:Lcom/liber8tech/tago/service/IAPError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liber8tech/tago/service/IAPError;->$VALUES:[Lcom/liber8tech/tago/service/IAPError;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/liber8tech/tago/service/IAPError;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/service/IAPError;
    .locals 1

    const-class v0, Lcom/liber8tech/tago/service/IAPError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/service/IAPError;

    return-object p0
.end method

.method public static values()[Lcom/liber8tech/tago/service/IAPError;
    .locals 1

    sget-object v0, Lcom/liber8tech/tago/service/IAPError;->$VALUES:[Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {v0}, [Lcom/liber8tech/tago/service/IAPError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liber8tech/tago/service/IAPError;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPError;->message:Ljava/lang/String;

    return-object v0
.end method
