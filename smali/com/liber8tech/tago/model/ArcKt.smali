.class public final Lcom/liber8tech/tago/model/ArcKt;
.super Ljava/lang/Object;
.source "Arc.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArc.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arc.kt\ncom/liber8tech/tago/model/ArcKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1288#2:50\n1357#2,3:51\n*E\n*S KotlinDebug\n*F\n+ 1 Arc.kt\ncom/liber8tech/tago/model/ArcKt\n*L\n45#1:50\n45#1,3:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "getColor",
        "",
        "getCustomName",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "getSize",
        "preview",
        "Landroid/graphics/drawable/Drawable;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final getColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "gold"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Gold"

    return-object p0

    :cond_0
    const-string v0, "silver"

    .line 30
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Silver"

    return-object p0

    :cond_1
    const-string v0, "black"

    .line 31
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Black"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static final getCustomName(Lcom/polidea/rxandroidble2/RxBleDevice;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 44
    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "realm.where(TagoDevice::class.java).findAll()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 51
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 52
    check-cast v3, Lcom/liber8tech/tago/model/TagoDevice;

    .line 45
    check-cast v3, Lio/realm/RealmModel;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 46
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v2}, Lcom/liber8tech/tago/model/TagoDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/liber8tech/tago/model/TagoDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/liber8tech/tago/model/TagoDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "empty"

    :goto_3
    return-object v0
.end method

.method public static final getSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "L"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "L"

    return-object p0

    :cond_0
    const-string v0, "M"

    .line 37
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "M"

    return-object p0

    :cond_1
    const-string v0, "XL"

    .line 38
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "XL"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static final preview(Lcom/polidea/rxandroidble2/RxBleDevice;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getUnknown()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    const-string v0, "name ?: \"\""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "gold"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getGold()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_2
    const-string v0, "silver"

    .line 23
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getSilver()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3
    const-string v0, "black"

    .line 24
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getBlack()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 25
    :cond_4
    sget-object p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->getUnknown()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
