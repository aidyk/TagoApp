.class public Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;
.super Lcom/liber8tech/tago/model/TagoDevice;
.source "com_liber8tech_tago_model_TagoDeviceRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$ClassNameHelper;,
        Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/liber8tech/tago/model/TagoDevice;-><init>()V

    .line 82
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/liber8tech/tago/model/TagoDevice;ZLjava/util/Map;)Lcom/liber8tech/tago/model/TagoDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/liber8tech/tago/model/TagoDevice;"
        }
    .end annotation

    .line 385
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz p2, :cond_0

    .line 387
    check-cast p2, Lcom/liber8tech/tago/model/TagoDevice;

    return-object p2

    .line 391
    :cond_0
    const-class p2, Lcom/liber8tech/tago/model/TagoDevice;

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/model/TagoDevice;

    .line 392
    move-object p2, p0

    check-cast p2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    check-cast p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    .line 395
    move-object p2, p0

    check-cast p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    .line 397
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$identifier()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$identifier(Ljava/lang/String;)V

    .line 398
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$color()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$color(Ljava/lang/String;)V

    .line 399
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$size()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$size(Ljava/lang/String;)V

    .line 400
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 401
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$lowBattery()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$lowBattery(Z)V

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/liber8tech/tago/model/TagoDevice;ZLjava/util/Map;)Lcom/liber8tech/tago/model/TagoDevice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/liber8tech/tago/model/TagoDevice;"
        }
    .end annotation

    .line 366
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 367
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 368
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 371
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 369
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 376
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 378
    check-cast v0, Lcom/liber8tech/tago/model/TagoDevice;

    return-object v0

    .line 381
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->copy(Lio/realm/Realm;Lcom/liber8tech/tago/model/TagoDevice;ZLjava/util/Map;)Lcom/liber8tech/tago/model/TagoDevice;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;
    .locals 1

    .line 256
    new-instance v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/liber8tech/tago/model/TagoDevice;IILjava/util/Map;)Lcom/liber8tech/tago/model/TagoDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/liber8tech/tago/model/TagoDevice;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 555
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 558
    new-instance p2, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-direct {p2}, Lcom/liber8tech/tago/model/TagoDevice;-><init>()V

    .line 559
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 562
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 563
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/liber8tech/tago/model/TagoDevice;

    return-object p0

    .line 565
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/liber8tech/tago/model/TagoDevice;

    .line 566
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 568
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    .line 569
    check-cast p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    .line 570
    invoke-interface {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$identifier()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$identifier(Ljava/lang/String;)V

    .line 571
    invoke-interface {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$color()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$color(Ljava/lang/String;)V

    .line 572
    invoke-interface {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$size()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$size(Ljava/lang/String;)V

    .line 573
    invoke-interface {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 574
    invoke-interface {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$lowBattery()Z

    move-result p0

    invoke-interface {p1, p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$lowBattery(Z)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 242
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "TagoDevice"

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    const-string v1, "identifier"

    .line 243
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "color"

    .line 244
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "size"

    .line 245
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "name"

    .line 246
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "lowBattery"

    .line 247
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 248
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/liber8tech/tago/model/TagoDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 271
    const-class v0, Lcom/liber8tech/tago/model/TagoDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/model/TagoDevice;

    .line 273
    move-object p2, p0

    check-cast p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    const-string v0, "identifier"

    .line 274
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "identifier"

    .line 275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {p2, v1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$identifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "identifier"

    .line 278
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$identifier(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "color"

    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "color"

    .line 282
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-interface {p2, v1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$color(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "color"

    .line 285
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$color(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v0, "size"

    .line 288
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "size"

    .line 289
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    invoke-interface {p2, v1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$size(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "size"

    .line 292
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$size(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string v0, "name"

    .line 295
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "name"

    .line 296
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    invoke-interface {p2, v1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "name"

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v0, "lowBattery"

    .line 302
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "lowBattery"

    .line 303
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "lowBattery"

    .line 306
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$lowBattery(Z)V

    goto :goto_4

    .line 304
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'lowBattery\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/liber8tech/tago/model/TagoDevice;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-direct {v0}, Lcom/liber8tech/tago/model/TagoDevice;-><init>()V

    .line 317
    move-object v1, v0

    check-cast v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    .line 318
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 319
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$identifier(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 327
    invoke-interface {v1, v4}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$identifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "color"

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    .line 331
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$color(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 334
    invoke-interface {v1, v4}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$color(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "size"

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 337
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_4

    .line 338
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$size(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 341
    invoke-interface {v1, v4}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$size(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "name"

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 344
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_6

    .line 345
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 348
    invoke-interface {v1, v4}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "lowBattery"

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 351
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_8

    .line 352
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmSet$lowBattery(Z)V

    goto/16 :goto_0

    .line 354
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 355
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'lowBattery\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 361
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 362
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/model/TagoDevice;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 252
    sget-object v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "TagoDevice"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/liber8tech/tago/model/TagoDevice;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 406
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p0

    invoke-interface {p0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide p0

    return-wide p0

    .line 409
    :cond_0
    const-class v0, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v9

    .line 411
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    check-cast p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 412
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 413
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    check-cast p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$identifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 416
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 418
    :cond_1
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$color()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 420
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 422
    :cond_2
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$size()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 424
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 426
    :cond_3
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 428
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 430
    :cond_4
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$lowBattery()Z

    move-result v7

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-wide v11
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 435
    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 437
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 439
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 440
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liber8tech/tago/model/TagoDevice;

    .line 441
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 449
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object/from16 v16, v3

    check-cast v16, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$identifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 452
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 454
    :cond_2
    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$color()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 456
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 458
    :cond_3
    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$size()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 460
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 462
    :cond_4
    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 464
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 466
    :cond_5
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$lowBattery()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/liber8tech/tago/model/TagoDevice;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 471
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p0

    invoke-interface {p0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide p0

    return-wide p0

    .line 474
    :cond_0
    const-class v0, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v9

    .line 476
    invoke-virtual {p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p0

    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object p0

    check-cast p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 477
    invoke-static {v0}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 478
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    check-cast p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$identifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 481
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 483
    :cond_1
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 485
    :goto_0
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$color()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 487
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 489
    :cond_2
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 491
    :goto_1
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$size()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 493
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 495
    :cond_3
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 497
    :goto_2
    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 499
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 501
    :cond_4
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 503
    :goto_3
    iget-wide v3, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface {p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$lowBattery()Z

    move-result v7

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-wide v11
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 508
    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 510
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 512
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 513
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liber8tech/tago/model/TagoDevice;

    .line 514
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 522
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-object/from16 v16, v3

    check-cast v16, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;

    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$identifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 525
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 527
    :cond_2
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 529
    :goto_1
    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$color()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 531
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 533
    :cond_3
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 535
    :goto_2
    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$size()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 537
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 539
    :cond_4
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 541
    :goto_3
    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 543
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 545
    :cond_5
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 547
    :goto_4
    iget-wide v5, v13, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface/range {v16 .. v16}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;->realmGet$lowBattery()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 630
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 631
    :cond_1
    check-cast p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;

    .line 633
    iget-object v2, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 634
    iget-object v3, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 637
    :cond_3
    iget-object v2, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 638
    iget-object v3, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 639
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 641
    :cond_5
    iget-object v2, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 616
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 618
    iget-object v2, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 622
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v5, v0

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 87
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 91
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iput-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 92
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 93
    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 94
    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 95
    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 96
    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$color()Ljava/lang/String;
    .locals 3

    .line 132
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 133
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$identifier()Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 103
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lowBattery()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 223
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 192
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 193
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$size()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 163
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$color(Ljava/lang/String;)V
    .locals 14

    .line 138
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 144
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v2, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 147
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v8, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 153
    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v0, v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$identifier(Ljava/lang/String;)V
    .locals 14

    .line 108
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 114
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v2, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 117
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v8, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 123
    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v0, v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 126
    :cond_3
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lowBattery(Z)V
    .locals 8

    .line 228
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v2, v2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 238
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 14

    .line 198
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 204
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v2, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 207
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v8, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 213
    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v0, v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 216
    :cond_3
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$size(Ljava/lang/String;)V
    .locals 14

    .line 168
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 174
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v2, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 177
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v8, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 183
    iget-object p1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v0, v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 186
    :cond_3
    iget-object v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->columnInfo:Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    iget-wide v1, v1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TagoDevice = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{identifier:"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$identifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$identifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{color:"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$color()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$color()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{size:"

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$size()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$size()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{name:"

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "null"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{lowBattery:"

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;->realmGet$lowBattery()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
