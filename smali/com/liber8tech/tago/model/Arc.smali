.class public final enum Lcom/liber8tech/tago/model/Arc;
.super Ljava/lang/Enum;
.source "Arc.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liber8tech/tago/model/Arc;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/liber8tech/tago/model/Arc;",
        "",
        "color",
        "",
        "(Ljava/lang/String;II)V",
        "getColor",
        "()I",
        "Gold",
        "Silver",
        "Black",
        "Unknown",
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
.field private static final synthetic $VALUES:[Lcom/liber8tech/tago/model/Arc;

.field public static final enum Black:Lcom/liber8tech/tago/model/Arc;

.field public static final enum Gold:Lcom/liber8tech/tago/model/Arc;

.field public static final enum Silver:Lcom/liber8tech/tago/model/Arc;

.field public static final enum Unknown:Lcom/liber8tech/tago/model/Arc;


# instance fields
.field private final color:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liber8tech/tago/model/Arc;

    new-instance v1, Lcom/liber8tech/tago/model/Arc;

    const-string v2, "Gold"

    .line 13
    sget-object v3, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v3}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f050064

    invoke-static {v3, v4}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/model/Arc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/model/Arc;->Gold:Lcom/liber8tech/tago/model/Arc;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/model/Arc;

    const-string v2, "Silver"

    .line 14
    sget-object v3, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v3}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f0500a7

    invoke-static {v3, v4}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/model/Arc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/model/Arc;->Silver:Lcom/liber8tech/tago/model/Arc;

    aput-object v1, v0, v4

    new-instance v1, Lcom/liber8tech/tago/model/Arc;

    const-string v2, "Black"

    const/4 v3, 0x2

    const/high16 v4, -0x1000000

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/model/Arc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/model/Arc;->Black:Lcom/liber8tech/tago/model/Arc;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/model/Arc;

    const-string v2, "Unknown"

    .line 16
    sget-object v3, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v3}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f05001b

    invoke-static {v3, v4}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/liber8tech/tago/model/Arc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/model/Arc;->Unknown:Lcom/liber8tech/tago/model/Arc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liber8tech/tago/model/Arc;->$VALUES:[Lcom/liber8tech/tago/model/Arc;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/liber8tech/tago/model/Arc;->color:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/model/Arc;
    .locals 1

    const-class v0, Lcom/liber8tech/tago/model/Arc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/model/Arc;

    return-object p0
.end method

.method public static values()[Lcom/liber8tech/tago/model/Arc;
    .locals 1

    sget-object v0, Lcom/liber8tech/tago/model/Arc;->$VALUES:[Lcom/liber8tech/tago/model/Arc;

    invoke-virtual {v0}, [Lcom/liber8tech/tago/model/Arc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liber8tech/tago/model/Arc;

    return-object v0
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/liber8tech/tago/model/Arc;->color:I

    return v0
.end method
