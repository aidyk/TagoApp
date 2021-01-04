.class public final enum Lcom/liber8tech/tago/android/view/TagoColor;
.super Ljava/lang/Enum;
.source "TagoRowItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liber8tech/tago/android/view/TagoColor;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/view/TagoColor;",
        "",
        "(Ljava/lang/String;I)V",
        "BLANK",
        "SILVER",
        "GOLD",
        "BLACK",
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
.field private static final synthetic $VALUES:[Lcom/liber8tech/tago/android/view/TagoColor;

.field public static final enum BLACK:Lcom/liber8tech/tago/android/view/TagoColor;

.field public static final enum BLANK:Lcom/liber8tech/tago/android/view/TagoColor;

.field public static final enum GOLD:Lcom/liber8tech/tago/android/view/TagoColor;

.field public static final enum SILVER:Lcom/liber8tech/tago/android/view/TagoColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liber8tech/tago/android/view/TagoColor;

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoColor;

    const-string v2, "BLANK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoColor;->BLANK:Lcom/liber8tech/tago/android/view/TagoColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoColor;

    const-string v2, "SILVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoColor;->SILVER:Lcom/liber8tech/tago/android/view/TagoColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoColor;

    const-string v2, "GOLD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoColor;->GOLD:Lcom/liber8tech/tago/android/view/TagoColor;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/view/TagoColor;

    const-string v2, "BLACK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/liber8tech/tago/android/view/TagoColor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liber8tech/tago/android/view/TagoColor;->BLACK:Lcom/liber8tech/tago/android/view/TagoColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liber8tech/tago/android/view/TagoColor;->$VALUES:[Lcom/liber8tech/tago/android/view/TagoColor;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/android/view/TagoColor;
    .locals 1

    const-class v0, Lcom/liber8tech/tago/android/view/TagoColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/android/view/TagoColor;

    return-object p0
.end method

.method public static values()[Lcom/liber8tech/tago/android/view/TagoColor;
    .locals 1

    sget-object v0, Lcom/liber8tech/tago/android/view/TagoColor;->$VALUES:[Lcom/liber8tech/tago/android/view/TagoColor;

    invoke-virtual {v0}, [Lcom/liber8tech/tago/android/view/TagoColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liber8tech/tago/android/view/TagoColor;

    return-object v0
.end method
