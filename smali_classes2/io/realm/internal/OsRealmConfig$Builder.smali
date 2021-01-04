.class public Lio/realm/internal/OsRealmConfig$Builder;
.super Ljava/lang/Object;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoUpdateNotification:Z

.field private configuration:Lio/realm/RealmConfiguration;

.field private initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field private migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field private schemaInfo:Lio/realm/internal/OsSchemaInfo;


# direct methods
.method public constructor <init>(Lio/realm/RealmConfiguration;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 86
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 87
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification:Z

    .line 94
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->configuration:Lio/realm/RealmConfiguration;

    return-void
.end method


# virtual methods
.method public autoUpdateNotification(Z)Lio/realm/internal/OsRealmConfig$Builder;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification:Z

    return-object p0
.end method

.method build()Lio/realm/internal/OsRealmConfig;
    .locals 8

    .line 146
    new-instance v7, Lio/realm/internal/OsRealmConfig;

    iget-object v1, p0, Lio/realm/internal/OsRealmConfig$Builder;->configuration:Lio/realm/RealmConfiguration;

    iget-boolean v2, p0, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification:Z

    iget-object v3, p0, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    iget-object v4, p0, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    iget-object v5, p0, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$1;)V

    return-object v7
.end method

.method public initializationCallback(Lio/realm/internal/OsSharedRealm$InitializationCallback;)Lio/realm/internal/OsRealmConfig$Builder;
    .locals 0
    .param p1    # Lio/realm/internal/OsSharedRealm$InitializationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    return-object p0
.end method

.method public migrationCallback(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$Builder;
    .locals 0
    .param p1    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    return-object p0
.end method

.method public schemaInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$Builder;
    .locals 0
    .param p1    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    return-object p0
.end method
