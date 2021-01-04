.class public Lio/realm/internal/OsRealmConfig;
.super Ljava/lang/Object;
.source "OsRealmConfig.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsRealmConfig$Builder;,
        Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;,
        Lio/realm/internal/OsRealmConfig$SchemaMode;,
        Lio/realm/internal/OsRealmConfig$Durability;
    }
.end annotation


# static fields
.field private static final SCHEMA_MODE_VALUE_ADDITIVE:B = 0x4t

.field private static final SCHEMA_MODE_VALUE_AUTOMATIC:B = 0x0t

.field private static final SCHEMA_MODE_VALUE_IMMUTABLE:B = 0x1t

.field private static final SCHEMA_MODE_VALUE_MANUAL:B = 0x5t

.field private static final SCHEMA_MODE_VALUE_READONLY:B = 0x2t

.field private static final SCHEMA_MODE_VALUE_RESET_FILE:B = 0x3t

.field private static final SYNCSESSION_STOP_POLICY_VALUE_AFTER_CHANGES_UPLOADED:B = 0x2t

.field private static final SYNCSESSION_STOP_POLICY_VALUE_IMMEDIATELY:B = 0x0t

.field private static final SYNCSESSION_STOP_POLICY_VALUE_LIVE_INDEFINETELY:B = 0x1t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

.field private final context:Lio/realm/internal/NativeContext;

.field private final initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field private final migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field private final nativePtr:J

.field private final realmConfiguration:Lio/realm/RealmConfiguration;

.field private final resolvedRealmURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    invoke-static {}, Lio/realm/internal/OsRealmConfig;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .locals 21
    .param p3    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/realm/internal/OsSharedRealm$InitializationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v10, p0

    move-object/from16 v0, p5

    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v1, Lio/realm/internal/NativeContext;

    invoke-direct {v1}, Lio/realm/internal/NativeContext;-><init>()V

    iput-object v1, v10, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    move-object/from16 v11, p1

    .line 187
    iput-object v11, v10, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    .line 188
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v12, 0x0

    invoke-static {v1, v12, v2}, Lio/realm/internal/OsRealmConfig;->nativeCreate(Ljava/lang/String;ZZ)J

    move-result-wide v3

    iput-wide v3, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 189
    sget-object v1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {v1, v10}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 192
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v1

    iget-object v3, v10, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1, v3}, Lio/realm/internal/ObjectServerFacade;->getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;

    move-result-object v1

    .line 193
    aget-object v3, v1, v12

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    .line 194
    aget-object v3, v1, v2

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const/4 v3, 0x2

    .line 195
    aget-object v3, v1, v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    const/4 v3, 0x3

    .line 196
    aget-object v3, v1, v3

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    .line 197
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v3, 0x5

    .line 198
    aget-object v3, v1, v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    const/4 v3, 0x6

    .line 199
    aget-object v3, v1, v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/Byte;

    .line 200
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 203
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-wide v3, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v3, v4, v1}, Lio/realm/internal/OsRealmConfig;->nativeSetEncryptionKey(J[B)V

    .line 209
    :cond_0
    iget-wide v3, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/OsRealmConfig$Durability;

    move-result-object v1

    sget-object v5, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v3, v4, v2}, Lio/realm/internal/OsRealmConfig;->nativeSetInMemory(JZ)V

    .line 212
    iget-wide v1, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move/from16 v3, p2

    invoke-static {v1, v2, v3}, Lio/realm/internal/OsRealmConfig;->nativeEnableChangeNotification(JZ)V

    .line 215
    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 216
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->isRecoveryConfiguration()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_1

    :cond_3
    if-eqz v15, :cond_4

    .line 221
    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_1

    .line 222
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->shouldDeleteRealmIfMigrationNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 223
    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 225
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v5

    if-nez p3, :cond_6

    const-wide/16 v2, 0x0

    :goto_2
    move-object/from16 v9, p4

    move-wide v7, v2

    goto :goto_3

    .line 226
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lio/realm/internal/OsSchemaInfo;->getNativePtr()J

    move-result-wide v2

    goto :goto_2

    .line 227
    :goto_3
    iput-object v9, v10, Lio/realm/internal/OsRealmConfig;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 228
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual {v1}, Lio/realm/internal/OsRealmConfig$SchemaMode;->getNativeValue()B

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/OsRealmConfig;->nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getCompactOnLaunchCallback()Lio/realm/CompactOnLaunchCallback;

    move-result-object v1

    iput-object v1, v10, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    .line 232
    iget-object v1, v10, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    if-eqz v1, :cond_7

    .line 233
    iget-wide v1, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    iget-object v3, v10, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    invoke-static {v1, v2, v3}, Lio/realm/internal/OsRealmConfig;->nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V

    .line 237
    :cond_7
    iput-object v0, v10, Lio/realm/internal/OsRealmConfig;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    if-eqz v0, :cond_8

    .line 239
    iget-wide v1, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-direct {v10, v1, v2, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V

    :cond_8
    const/4 v1, 0x0

    if-eqz v15, :cond_9

    .line 245
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 246
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    move v4, v13

    move-object v5, v14

    move-wide v13, v2

    move/from16 v19, v20

    move/from16 v20, v0

    .line 245
    invoke-static/range {v13 .. v20}, Lio/realm/internal/OsRealmConfig;->nativeCreateAndSetSyncConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)Ljava/lang/String;

    move-result-object v0

    .line 248
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "Cannot create a URI from the Realm URL address"

    .line 250
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :goto_4
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V

    .line 254
    :cond_9
    iput-object v1, v10, Lio/realm/internal/OsRealmConfig;->resolvedRealmURI:Ljava/net/URI;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V

    return-void
.end method

.method private static native nativeCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeCreateAndSetSyncConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)Ljava/lang/String;
.end method

.method private static native nativeEnableChangeNotification(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V
.end method

.method private static native nativeSetEncryptionKey(J[B)V
.end method

.method private static native nativeSetInMemory(JZ)V
.end method

.method private native nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V
.end method

.method private native nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V
    .param p8    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V
.end method


# virtual methods
.method getContext()Lio/realm/internal/NativeContext;
    .locals 1

    .line 276
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 264
    sget-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    return-wide v0
.end method

.method public getRealmConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 268
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public getResolvedRealmURI()Ljava/net/URI;
    .locals 1

    .line 272
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->resolvedRealmURI:Ljava/net/URI;

    return-object v0
.end method
