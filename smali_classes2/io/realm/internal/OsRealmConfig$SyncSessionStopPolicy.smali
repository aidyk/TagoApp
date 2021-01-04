.class public final enum Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
.super Ljava/lang/Enum;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncSessionStopPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field public static final enum AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field public static final enum IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field public static final enum LIVE_INDEFINITELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const-string v1, "IMMEDIATELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 65
    new-instance v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const-string v1, "LIVE_INDEFINITELY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->LIVE_INDEFINITELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 66
    new-instance v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const-string v1, "AFTER_CHANGES_UPLOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const/4 v0, 0x3

    .line 63
    new-array v0, v0, [Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->LIVE_INDEFINITELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->$VALUES:[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-byte p3, p0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .locals 1

    .line 63
    const-class v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .locals 1

    .line 63
    sget-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->$VALUES:[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()B
    .locals 1

    .line 75
    iget-byte v0, p0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->value:B

    return v0
.end method
