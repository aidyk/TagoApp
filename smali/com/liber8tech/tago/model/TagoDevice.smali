.class public Lcom/liber8tech/tago/model/TagoDevice;
.super Lio/realm/RealmObject;
.source "TagoDevice.kt"

# interfaces
.implements Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u001a\u001a\u00020\u001bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u000bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\t\"\u0004\u0008\u0019\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/liber8tech/tago/model/TagoDevice;",
        "Lio/realm/RealmObject;",
        "id",
        "",
        "name",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "()V",
        "color",
        "getColor",
        "()Ljava/lang/String;",
        "setColor",
        "(Ljava/lang/String;)V",
        "identifier",
        "getIdentifier",
        "setIdentifier",
        "lowBattery",
        "",
        "getLowBattery",
        "()Z",
        "setLowBattery",
        "(Z)V",
        "getName",
        "setName",
        "size",
        "getSize",
        "setSize",
        "getIcon",
        "Landroid/graphics/drawable/Drawable;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private color:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private identifier:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lowBattery:Z

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, ""

    .line 9
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$identifier(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/liber8tech/tago/model/TagoDevice;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$identifier(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$name(Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Lcom/liber8tech/tago/model/ArcKt;->getColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$color(Ljava/lang/String;)V

    .line 19
    invoke-static {p2}, Lcom/liber8tech/tago/model/ArcKt;->getSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$size(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$lowBattery(Z)V

    return-void
.end method


# virtual methods
.method public final getColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getUnknown()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gold"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getGold()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Silver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getSilver()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$color()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Black"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getBlack()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 31
    :cond_3
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getUnknown()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$identifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLowBattery()Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$lowBattery()Z

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/liber8tech/tago/model/TagoDevice;->realmGet$size()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$color()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/model/TagoDevice;->color:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$identifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/model/TagoDevice;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lowBattery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liber8tech/tago/model/TagoDevice;->lowBattery:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/model/TagoDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$size()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/model/TagoDevice;->size:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$color(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/model/TagoDevice;->color:Ljava/lang/String;

    return-void
.end method

.method public realmSet$identifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/model/TagoDevice;->identifier:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lowBattery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/liber8tech/tago/model/TagoDevice;->lowBattery:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/model/TagoDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$size(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/model/TagoDevice;->size:Ljava/lang/String;

    return-void
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$color(Ljava/lang/String;)V

    return-void
.end method

.method public final setIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$identifier(Ljava/lang/String;)V

    return-void
.end method

.method public final setLowBattery(Z)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$lowBattery(Z)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public final setSize(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/model/TagoDevice;->realmSet$size(Ljava/lang/String;)V

    return-void
.end method
