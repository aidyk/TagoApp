.class Lio/realm/BaseRealm$5;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/BaseRealm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$configuration:Lio/realm/RealmConfiguration;

.field final synthetic val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$migration:Lio/realm/RealmMigration;


# direct methods
.method constructor <init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/RealmMigration;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    iput-object p2, p0, Lio/realm/BaseRealm$5;->val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/realm/BaseRealm$5;->val$migration:Lio/realm/RealmMigration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3

    if-nez p1, :cond_4

    .line 740
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 742
    iget-object p1, p0, Lio/realm/BaseRealm$5;->val$fileNotFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 746
    :cond_0
    iget-object p1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p1

    .line 747
    new-instance v0, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {p1}, Lio/realm/internal/RealmProxyMediator;->getExpectedObjectSchemaInfoMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 749
    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$migration:Lio/realm/RealmMigration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$migration:Lio/realm/RealmMigration;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 751
    invoke-static {v1}, Lio/realm/BaseRealm;->access$000(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object p1

    .line 753
    :cond_2
    new-instance v1, Lio/realm/internal/OsRealmConfig$Builder;

    iget-object v2, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-direct {v1, v2}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    const/4 v2, 0x0

    .line 754
    invoke-virtual {v1, v2}, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification(Z)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v1

    .line 755
    invoke-virtual {v1, v0}, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v0

    .line 756
    invoke-virtual {v0, p1}, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object p1

    .line 760
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;)Lio/realm/internal/OsSharedRealm;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 763
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 736
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot migrate a Realm file that is already open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/BaseRealm$5;->val$configuration:Lio/realm/RealmConfiguration;

    .line 737
    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
