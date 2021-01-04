.class abstract Lio/realm/BaseRealm;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/BaseRealm$InstanceCallback;,
        Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;,
        Lio/realm/BaseRealm$RealmObjectContext;
    }
.end annotation


# static fields
.field static final CLOSED_REALM_MESSAGE:Ljava/lang/String; = "This Realm instance has already been closed, making it unusable."

.field static final DELETE_NOT_SUPPORTED_UNDER_PARTIAL_SYNC:Ljava/lang/String; = "This API is not supported by partially synchronized Realms. Either unsubscribe using \'Realm.unsubscribeAsync()\' or delete the objects using a query and \'RealmResults.deleteAllFromRealm()\'"

.field private static final INCORRECT_THREAD_CLOSE_MESSAGE:Ljava/lang/String; = "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

.field static final INCORRECT_THREAD_MESSAGE:Ljava/lang/String; = "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

.field static final LISTENER_NOT_ALLOWED_MESSAGE:Ljava/lang/String; = "Listeners cannot be used on current thread."

.field private static final NOT_IN_TRANSACTION_MESSAGE:Ljava/lang/String; = "Changing Realm data can only be done from inside a transaction."

.field static volatile applicationContext:Landroid/content/Context;

.field static final asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

.field public static final objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;


# instance fields
.field protected final configuration:Lio/realm/RealmConfiguration;

.field private realmCache:Lio/realm/RealmCache;

.field private schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

.field public sharedRealm:Lio/realm/internal/OsSharedRealm;

.field private shouldCloseSharedRealm:Z

.field final threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    invoke-static {}, Lio/realm/internal/async/RealmThreadPoolExecutor;->newDefaultExecutor()Lio/realm/internal/async/RealmThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lio/realm/BaseRealm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    .line 855
    new-instance v0, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-direct {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;-><init>()V

    sput-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    return-void
.end method

.method constructor <init>(Lio/realm/RealmCache;Lio/realm/internal/OsSchemaInfo;)V
    .locals 1
    .param p2    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p1}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmConfiguration;Lio/realm/internal/OsSchemaInfo;)V

    .line 106
    iput-object p1, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    return-void
.end method

.method constructor <init>(Lio/realm/RealmConfiguration;Lio/realm/internal/OsSchemaInfo;)V
    .locals 3
    .param p2    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lio/realm/BaseRealm$1;

    invoke-direct {v0, p0}, Lio/realm/BaseRealm$1;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/BaseRealm;->schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    .line 112
    iput-object p1, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    invoke-static {v1}, Lio/realm/BaseRealm;->createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 121
    :goto_0
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getInitialDataTransaction()Lio/realm/Realm$Transaction;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    new-instance v0, Lio/realm/BaseRealm$2;

    invoke-direct {v0, p0, v2}, Lio/realm/BaseRealm$2;-><init>(Lio/realm/BaseRealm;Lio/realm/Realm$Transaction;)V

    .line 131
    :cond_1
    new-instance v2, Lio/realm/internal/OsRealmConfig$Builder;

    invoke-direct {v2, p1}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    const/4 p1, 0x1

    .line 132
    invoke-virtual {v2, p1}, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification(Z)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v1}, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p2}, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p2, v0}, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback(Lio/realm/internal/OsSharedRealm$InitializationCallback;)Lio/realm/internal/OsRealmConfig$Builder;

    move-result-object p2

    .line 136
    invoke-static {p2}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;)Lio/realm/internal/OsSharedRealm;

    move-result-object p2

    iput-object p2, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 137
    iput-boolean p1, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    .line 139
    iget-object p1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object p2, p0, Lio/realm/BaseRealm;->schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    invoke-virtual {p1, p2}, Lio/realm/internal/OsSharedRealm;->registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lio/realm/BaseRealm$1;

    invoke-direct {v0, p0}, Lio/realm/BaseRealm$1;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/BaseRealm;->schemaChangedCallback:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    .line 146
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    iput-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    .line 149
    iput-object p1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    return-void
.end method

.method static synthetic access$000(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .locals 0

    .line 65
    invoke-static {p0}, Lio/realm/BaseRealm;->createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object p0

    return-object p0
.end method

.method static compactRealm(Lio/realm/RealmConfiguration;)Z
    .locals 1

    .line 701
    invoke-static {p0}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/OsSharedRealm;

    move-result-object p0

    .line 702
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->compact()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 703
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 704
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static createMigrationCallback(Lio/realm/RealmMigration;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .locals 1

    .line 776
    new-instance v0, Lio/realm/BaseRealm$6;

    invoke-direct {v0, p0}, Lio/realm/BaseRealm$6;-><init>(Lio/realm/RealmMigration;)V

    return-object v0
.end method

.method static deleteRealm(Lio/realm/RealmConfiguration;)Z
    .locals 3

    .line 676
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 677
    new-instance v1, Lio/realm/BaseRealm$4;

    invoke-direct {v1, p0, v0}, Lio/realm/BaseRealm$4;-><init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {p0, v1}, Lio/realm/internal/OsObjectStore;->callWithLock(Lio/realm/RealmConfiguration;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V
    .locals 2
    .param p1    # Lio/realm/RealmMigration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 723
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    .line 726
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RealmMigration must be provided."

    invoke-direct {p1, p0, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 730
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 732
    new-instance v1, Lio/realm/BaseRealm$5;

    invoke-direct {v1, p0, v0, p1}, Lio/realm/BaseRealm$5;-><init>(Lio/realm/RealmConfiguration;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/RealmMigration;)V

    invoke-static {p0, v1}, Lio/realm/RealmCache;->invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V

    .line 769
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 770
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot migrate a Realm file which doesn\'t exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 724
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Manual migrations are not supported for synced Realms"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 721
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RealmConfiguration must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected addListener(Lio/realm/RealmChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 212
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmNotifier;->addChangeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract asFlowable()Lio/reactivex/Flowable;
.end method

.method public beginTransaction()V
    .locals 1

    .line 400
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 401
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    return-void
.end method

.method public cancelTransaction()V
    .locals 1

    .line 424
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 425
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V

    return-void
.end method

.method protected checkIfInTransaction()V
    .locals 2

    .line 443
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkIfPartialRealm()V
    .locals 2

    .line 450
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, v1}, Lio/realm/internal/ObjectServerFacade;->isPartialRealm(Lio/realm/RealmConfiguration;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method is only available on partially synchronized Realms."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkIfValid()V
    .locals 5

    .line 432
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkIfValidAndInTransaction()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkNotInSync()V
    .locals 2

    .line 472
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot perform changes to a schema. Please update app and restart."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 5

    .line 551
    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 555
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    invoke-virtual {v0, p0}, Lio/realm/RealmCache;->release(Lio/realm/BaseRealm;)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lio/realm/BaseRealm;->doClose()V

    :goto_0
    return-void

    .line 552
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commitTransaction()V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 412
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method

.method public deleteAll()V
    .locals 4

    .line 662
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 663
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v0

    .line 667
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getAll()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmObjectSchema;

    .line 668
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/Table;->clear(Z)V

    goto :goto_0

    :cond_0
    return-void

    .line 664
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API is not supported by partially synchronized Realms. Either unsubscribe using \'Realm.unsubscribeAsync()\' or delete the objects using a query and \'RealmResults.deleteAllFromRealm()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doClose()V
    .locals 2

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    .line 567
    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 569
    iput-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 786
    iget-boolean v0, p0, Lio/realm/BaseRealm;->shouldCloseSharedRealm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    const/4 v1, 0x1

    .line 787
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 789
    invoke-virtual {v3}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 787
    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    invoke-virtual {v0}, Lio/realm/RealmCache;->leak()V

    .line 795
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;JZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 624
    invoke-virtual {v0, p2, p3}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    .line 625
    iget-object p2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;
    .locals 10
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    :goto_1
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    .line 641
    new-instance p1, Lio/realm/DynamicRealmObject;

    cmp-long v0, p3, v1

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object p2

    goto :goto_2

    :cond_2
    sget-object p2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    :goto_2
    invoke-direct {p1, p0, p2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_5

    .line 645
    :cond_3
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v3

    cmp-long v0, p3, v1

    if-eqz v0, :cond_4

    .line 646
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object p2

    :goto_3
    move-object v6, p2

    goto :goto_4

    :cond_4
    sget-object p2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    goto :goto_3

    .line 647
    :goto_4
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v4, p1

    move-object v5, p0

    .line 645
    invoke-virtual/range {v3 .. v9}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 612
    new-instance p1, Lio/realm/DynamicRealmObject;

    invoke-static {p3}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_1

    .line 616
    :cond_1
    iget-object p2, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {p2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    .line 616
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 494
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivileges(Lio/realm/RealmModel;)Lio/realm/sync/permissions/ObjectPrivileges;
    .locals 3

    .line 526
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p1, :cond_2

    .line 531
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    check-cast p1, Lio/realm/internal/UncheckedRow;

    .line 538
    new-instance v0, Lio/realm/sync/permissions/ObjectPrivileges;

    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, p1}, Lio/realm/internal/OsSharedRealm;->getObjectPrivileges(Lio/realm/internal/UncheckedRow;)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lio/realm/sync/permissions/ObjectPrivileges;-><init>(J)V

    return-object v0

    .line 535
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only managed objects have privileges. This is a an unmanaged object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'object\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivileges()Lio/realm/sync/permissions/RealmPrivileges;
    .locals 3
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 514
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 515
    new-instance v0, Lio/realm/sync/permissions/RealmPrivileges;

    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getPrivileges()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lio/realm/sync/permissions/RealmPrivileges;-><init>(J)V

    return-object v0
.end method

.method public abstract getSchema()Lio/realm/RealmSchema;
.end method

.method getSharedRealm()Lio/realm/internal/OsSharedRealm;
    .locals 1

    .line 799
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 503
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->getSchemaVersion(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAutoRefresh()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 5

    .line 580
    iget-wide v0, p0, Lio/realm/BaseRealm;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 584
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 581
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 593
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 594
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .locals 1

    .line 202
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 203
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 190
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->refresh()V

    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refresh a Realm instance inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeAllListeners()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 264
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "removeListener cannot be called on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0}, Lio/realm/internal/RealmNotifier;->removeChangeListeners(Ljava/lang/Object;)V

    return-void
.end method

.method protected removeListener(Lio/realm/RealmChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 231
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmNotifier;->removeChangeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    return-void

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoRefresh(Z)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 166
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->setAutoRefresh(Z)V

    return-void
.end method

.method public stopWaitForChange()V
    .locals 2

    .line 350
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lio/realm/BaseRealm;->realmCache:Lio/realm/RealmCache;

    new-instance v1, Lio/realm/BaseRealm$3;

    invoke-direct {v1, p0}, Lio/realm/BaseRealm$3;-><init>(Lio/realm/BaseRealm;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmCache;->invokeWithLock(Lio/realm/RealmCache$Callback0;)V

    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForChange()Z
    .locals 2

    .line 325
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 326
    invoke-virtual {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->waitForChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->refresh()V

    :cond_0
    return v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot wait for changes inside a Looper thread. Use RealmChangeListeners instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot wait for changes inside of a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeCopyTo(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 286
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/realm/internal/OsSharedRealm;->writeCopy(Ljava/io/File;[B)V

    return-void

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The destination argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEncryptedCopyTo(Ljava/io/File;[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 310
    iget-object v0, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/OsSharedRealm;->writeCopy(Ljava/io/File;[B)V

    return-void

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The destination argument cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
