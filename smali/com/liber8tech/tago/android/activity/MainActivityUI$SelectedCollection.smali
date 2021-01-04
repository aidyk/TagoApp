.class public final enum Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;
.super Ljava/lang/Enum;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/android/activity/MainActivityUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "PURCHASED",
        "CREATED",
        "STARTER",
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
.field private static final synthetic $VALUES:[Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

.field public static final enum CREATED:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

.field public static final enum PURCHASED:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

.field public static final enum STARTER:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    new-instance v1, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    const-string v2, "PURCHASED"

    const/4 v3, 0x0

    const v4, 0x7f0f00d4

    .line 622
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->PURCHASED:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    const-string v2, "CREATED"

    const/4 v3, 0x1

    const v4, 0x7f0f0084

    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->CREATED:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    const-string v2, "STARTER"

    const/4 v3, 0x2

    const v4, 0x7f0f00ea

    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->STARTER:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->$VALUES:[Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 621
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;
    .locals 1

    const-class v0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    return-object p0
.end method

.method public static values()[Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;
    .locals 1

    sget-object v0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->$VALUES:[Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    invoke-virtual {v0}, [Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->type:I

    return v0
.end method
