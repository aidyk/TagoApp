.class public final enum Lcom/liber8tech/tago/android/view/TagoButtonColor;
.super Ljava/lang/Enum;
.source "TagoButton.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liber8tech/tago/android/view/TagoButtonColor;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/view/TagoButtonColor;",
        "",
        "(Ljava/lang/String;I)V",
        "GOLD",
        "SILVER",
        "RED",
        "GREEN",
        "FACEBOOK",
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
.field private static final synthetic $VALUES:[Lcom/liber8tech/tago/android/view/TagoButtonColor;

.field public static final enum FACEBOOK:Lcom/liber8tech/tago/android/view/TagoButtonColor;

.field public static final enum GOLD:Lcom/liber8tech/tago/android/view/TagoButtonColor;

.field public static final enum GREEN:Lcom/liber8tech/tago/android/view/TagoButtonColor;

.field public static final enum RED:Lcom/liber8tech/tago/android/view/TagoButtonColor;

.field public static final enum SILVER:Lcom/liber8tech/tago/android/view/TagoButtonColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liber8tech/tago/android/view/TagoButtonColor;

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    const-string v2, "GOLD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GOLD:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    const-string v2, "SILVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->SILVER:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    const-string v2, "RED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->RED:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    const-string v2, "GREEN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GREEN:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    const-string v2, "FACEBOOK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->FACEBOOK:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liber8tech/tago/android/view/TagoButtonColor;->$VALUES:[Lcom/liber8tech/tago/android/view/TagoButtonColor;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/android/view/TagoButtonColor;
    .locals 1

    const-class v0, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/android/view/TagoButtonColor;

    return-object p0
.end method

.method public static values()[Lcom/liber8tech/tago/android/view/TagoButtonColor;
    .locals 1

    sget-object v0, Lcom/liber8tech/tago/android/view/TagoButtonColor;->$VALUES:[Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v0}, [Lcom/liber8tech/tago/android/view/TagoButtonColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liber8tech/tago/android/view/TagoButtonColor;

    return-object v0
.end method
