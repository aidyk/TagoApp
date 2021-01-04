.class public final enum Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
.super Ljava/lang/Enum;
.source "RxBleConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/RxBleConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RxBleConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

.field public static final enum CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

.field public static final enum CONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

.field public static final enum DISCONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

.field public static final enum DISCONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 82
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    const-string v1, "CONNECTING"

    const-string v2, "CONNECTING"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    const-string v1, "CONNECTED"

    const-string v2, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    const-string v1, "DISCONNECTED"

    const-string v2, "DISCONNECTED"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    const-string v1, "DISCONNECTING"

    const-string v2, "DISCONNECTING"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    const/4 v0, 0x4

    .line 81
    new-array v0, v0, [Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->$VALUES:[Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
    .locals 1

    .line 81
    const-class v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
    .locals 1

    .line 81
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->$VALUES:[Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-virtual {v0}, [Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RxBleConnectionState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
