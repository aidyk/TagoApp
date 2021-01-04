.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ASYNC_QUERY_WRONG_THREAD_MESSAGE:Ljava/lang/String; = "Async query cannot be created on current thread."

.field private static final EMPTY_VALUES:Ljava/lang/String; = "Non-empty \'values\' must be provided."

.field private static final TYPE_MISMATCH:Ljava/lang/String; = "Field \'%s\': type mismatch - %s expected."


# instance fields
.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private distinctDescriptor:Lio/realm/internal/SortDescriptor;

.field private final forValues:Z

.field private final osList:Lio/realm/internal/OsList;

.field private final query:Lio/realm/internal/TableQuery;

.field private final realm:Lio/realm/BaseRealm;

.field private final schema:Lio/realm/RealmObjectSchema;

.field private sortDescriptor:Lio/realm/internal/SortDescriptor;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 176
    iput-object p3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 177
    invoke-static {p3}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 178
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 181
    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 182
    iput-object p1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 183
    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 187
    iget-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 188
    iput-object p2, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 189
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    :goto_0
    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 215
    iput-object p3, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 217
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 218
    iget-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 219
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 220
    iput-object p2, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 195
    iput-object p2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 197
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 198
    iget-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 199
    iget-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {p1}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    return-void
.end method

.method private constructor <init>(Lio/realm/Realm;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 138
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 139
    invoke-static {p2}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 140
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iput-object v1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 143
    iput-object v1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 144
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 145
    iput-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 149
    iget-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 150
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 151
    iget-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {p1}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    :goto_0
    return-void
.end method

.method private constructor <init>(Lio/realm/RealmResults;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iget-object v0, p1, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iput-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 157
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 158
    invoke-static {p2}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 159
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    iput-object v1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 162
    iput-object v1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 163
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 164
    iput-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 168
    invoke-virtual {p1}, Lio/realm/RealmResults;->getTable()Lio/realm/internal/Table;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 169
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 170
    invoke-virtual {p1}, Lio/realm/RealmResults;->getOsResults()Lio/realm/internal/OsResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    :goto_0
    return-void
.end method

.method private constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iget-object v0, p1, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iput-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 205
    iput-object p2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 207
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 208
    iget-object p2, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 209
    invoke-virtual {p1}, Lio/realm/RealmResults;->getOsResults()Lio/realm/internal/OsResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    return-void
.end method

.method private beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->group()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method static createDynamicQuery(Lio/realm/DynamicRealm;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Ljava/lang/String;)V

    return-object v0
.end method

.method static createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/Realm;Ljava/lang/Class;)V

    return-object v0
.end method

.method static createQueryFromList(Lio/realm/RealmList;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v2

    iget-object p0, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v2

    iget-object p0, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p0}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method static createQueryFromResult(Lio/realm/RealmResults;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->className:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/realm/RealmQuery;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lio/realm/RealmQuery;-><init>(Lio/realm/RealmResults;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method private createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;
    .locals 1
    .param p2    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/TableQuery;",
            "Lio/realm/internal/SortDescriptor;",
            "Lio/realm/internal/SortDescriptor;",
            "Z",
            "Lio/realm/internal/sync/SubscriptionAction;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 2013
    invoke-virtual {p5}, Lio/realm/internal/sync/SubscriptionAction;->shouldCreateSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p5}, Lio/realm/internal/sync/SubscriptionAction;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p1, p2, p3, p5}, Lio/realm/internal/SubscriptionAwareOsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Ljava/lang/String;)Lio/realm/internal/SubscriptionAwareOsResults;

    move-result-object p1

    goto :goto_0

    .line 2016
    :cond_0
    iget-object p5, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object p5, p5, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {p5, p1, p2, p3}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)Lio/realm/internal/OsResults;

    move-result-object p1

    .line 2019
    :goto_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2020
    new-instance p2, Lio/realm/RealmResults;

    iget-object p3, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object p5, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-direct {p2, p3, p1, p5}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    goto :goto_1

    .line 2022
    :cond_1
    new-instance p2, Lio/realm/RealmResults;

    iget-object p3, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object p5, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    invoke-direct {p2, p3, p1, p5}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    :goto_1
    if-eqz p4, :cond_2

    .line 2025
    invoke-virtual {p2}, Lio/realm/RealmResults;->load()Z

    :cond_2
    return-object p2
.end method

.method private endGroupWithoutThreadValidation()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->endGroup()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 494
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo([J[JZ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 330
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 446
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([J[JD)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 470
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo([J[JF)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 398
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 422
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 374
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->equalTo([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 517
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method private getSchemaConnector()Lio/realm/SchemaConnector;
    .locals 2

    .line 2045
    new-instance v0, Lio/realm/SchemaConnector;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/SchemaConnector;-><init>(Lio/realm/RealmSchema;)V

    return-object v0
.end method

.method private getSourceRowIndexForFirstObject()J
    .locals 2

    .line 2032
    iget-object v0, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2040
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->find()J

    move-result-wide v0

    return-wide v0

    .line 2033
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->first(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 2035
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static isClassForRealmModel(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 133
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private isDynamicQuery()Z
    .locals 1

    .line 1929
    iget-object v0, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private orWithoutThreadValidation()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->or()Lio/realm/internal/TableQuery;

    return-object p0
.end method


# virtual methods
.method public and()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1542
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    return-object p0
.end method

.method public average(Ljava/lang/String;)D
    .locals 4

    .line 1629
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1631
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1632
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "int, float or double"

    aput-object v3, v2, p1

    const-string p1, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1636
    :pswitch_0
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 1638
    :pswitch_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageFloat(J)D

    move-result-wide v0

    return-wide v0

    .line 1634
    :pswitch_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageInt(J)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beginGroup()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1494
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1398
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1413
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1414
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->beginsWith([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;DD)Lio/realm/RealmQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1320
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1321
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/TableQuery;->between([JDD)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;FF)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1337
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1338
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/TableQuery;->between([JFF)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;II)Lio/realm/RealmQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1286
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1287
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/TableQuery;->between([JJJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;JJ)Lio/realm/RealmQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1303
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1304
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/TableQuery;->between([JJJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1354
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1355
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/TableQuery;->between([JLjava/util/Date;Ljava/util/Date;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1369
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1384
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1385
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->contains([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public count()J
    .locals 2

    .line 1740
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1742
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1896
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmQuery;->distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1914
    iget-object v0, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    if-nez v0, :cond_1

    .line 1917
    array-length v0, p2

    if-nez v0, :cond_0

    .line 1918
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object p2

    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-static {p2, v0, p1}, Lio/realm/internal/SortDescriptor;->getInstanceForDistinct(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/SortDescriptor;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    goto :goto_0

    .line 1920
    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1921
    aput-object p1, v0, v2

    .line 1922
    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1923
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object p1

    iget-object p2, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-static {p1, p2, v0}, Lio/realm/internal/SortDescriptor;->getInstanceForDistinct(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;[Ljava/lang/String;)Lio/realm/internal/SortDescriptor;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    :goto_0
    return-object p0

    .line 1915
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Distinct fields have already been defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endGroup()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1511
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1427
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->endsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1442
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1443
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->endsWith([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 488
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 324
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 440
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 464
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 392
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 416
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 368
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 289
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 512
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 348
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 350
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo([J[J[B)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public findAll()Lio/realm/RealmResults;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 1754
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1755
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    iget-object v4, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    sget-object v6, Lio/realm/internal/sync/SubscriptionAction;->NO_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findAllAsync()Lio/realm/RealmResults;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 1772
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1774
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    if-nez v0, :cond_0

    .line 1779
    sget-object v0, Lio/realm/internal/sync/SubscriptionAction;->ANONYMOUS_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    goto :goto_0

    .line 1781
    :cond_0
    sget-object v0, Lio/realm/internal/sync/SubscriptionAction;->NO_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    :goto_0
    move-object v6, v0

    .line 1783
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    iget-object v4, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findAllAsync(Ljava/lang/String;)Lio/realm/RealmResults;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 1799
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1800
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfPartialRealm()V

    .line 1801
    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    if-nez v0, :cond_1

    .line 1804
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1808
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1809
    iget-object v3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v4, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    iget-object v5, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    const/4 v6, 0x0

    invoke-static {p1}, Lio/realm/internal/sync/SubscriptionAction;->create(Ljava/lang/String;)Lio/realm/internal/sync/SubscriptionAction;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1

    .line 1805
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-empty \'subscriptionName\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1802
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create subscriptions for queries based on a \'RealmList\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findFirst()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1940
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1942
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1947
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSourceRowIndexForFirstObject()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    .line 1949
    :cond_1
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findFirstAsync()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1965
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v0, :cond_3

    .line 1969
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1971
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    goto :goto_0

    .line 1982
    :cond_0
    new-instance v0, Lio/realm/internal/PendingRow;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/PendingRow;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Z)V

    .line 1985
    :goto_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1987
    new-instance v1, Lio/realm/DynamicRealmObject;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-direct {v1, v2, v0}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_1

    .line 1990
    :cond_1
    iget-object v6, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 1992
    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v5

    iget-object v7, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 1993
    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1, v6}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v9

    const/4 v10, 0x0

    .line 1994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v8, v0

    .line 1992
    invoke-virtual/range {v5 .. v11}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    .line 1997
    :goto_1
    instance-of v2, v0, Lio/realm/internal/PendingRow;

    if-eqz v2, :cond_2

    .line 1998
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    .line 1999
    check-cast v0, Lio/realm/internal/PendingRow;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/internal/PendingRow;->setFrontEnd(Lio/realm/internal/PendingRow$FrontEnd;)V

    :cond_2
    return-object v1

    .line 1966
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "findFirstAsync() available only when type parameter \'E\' is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greaterThan(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 997
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 998
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->greaterThan([J[JD)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1013
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1014
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan([J[JF)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 965
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 966
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->greaterThan([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 981
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 982
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->greaterThan([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1029
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1030
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1077
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1078
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JD)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1093
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1094
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JF)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1045
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1046
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1061
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1062
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1109
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1110
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 709
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 713
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 714
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 710
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 571
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 574
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 575
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 576
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 572
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 663
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 666
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 667
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 668
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 664
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 686
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 689
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 690
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 691
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 687
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 617
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 620
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 621
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 622
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 618
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 640
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 644
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 645
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 641
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 594
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 598
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 599
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 595
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 531
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->in(Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 548
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 551
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 552
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 553
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 549
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public in(Ljava/lang/String;[Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_1

    .line 732
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 735
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 736
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 737
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1

    .line 733
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-empty \'values\' must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1567
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1569
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1570
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isEmpty([J[J)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isNotEmpty(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1586
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1587
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isNotEmpty([J[J)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isNotNull(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 273
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/RealmFieldType;

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isNull(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 255
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/RealmFieldType;

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isValid()Z
    .locals 2

    .line 230
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isValid()Z

    move-result v0

    return v0

    .line 237
    :cond_1
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public lessThan(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1157
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1158
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->lessThan([J[JD)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1173
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1174
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan([J[JF)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1125
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1126
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->lessThan([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1139
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1141
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1142
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->lessThan([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1189
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1190
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1237
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1238
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JD)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1253
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1254
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JF)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1205
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1206
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1221
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1222
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1269
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1270
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1460
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->like(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1479
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 1480
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->like([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1700
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1702
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1703
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "int, float or double"

    aput-object v3, v2, p1

    const-string p1, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1709
    :pswitch_0
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumDouble(J)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1707
    :pswitch_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumFloat(J)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1705
    :pswitch_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumInt(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public maximumDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1727
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1729
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1730
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1656
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1658
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1659
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "int, float or double"

    aput-object v3, v2, p1

    const-string p1, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :pswitch_0
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumDouble(J)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1663
    :pswitch_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumFloat(J)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1661
    :pswitch_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumInt(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public minimumDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1683
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1685
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1686
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public not()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1552
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1554
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->not()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 5
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 925
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 927
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 929
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {v0, v2, p1, p2}, Lio/realm/internal/TableQuery;->equalTo([J[JZ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 785
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 787
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 885
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 887
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JD)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 905
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 907
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo([J[JF)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 845
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 847
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 865
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 867
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 869
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 825
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 827
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 829
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 751
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 766
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    .line 767
    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p3}, Lio/realm/Case;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Link queries cannot be case insensitive - coming soon."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 770
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 945
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 947
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 949
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .locals 4
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 805
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p1

    if-nez p2, :cond_0

    .line 807
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 809
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo([J[J[B)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public or()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1525
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1527
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1823
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1824
    sget-object v0, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1839
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    const/4 v0, 0x1

    .line 1840
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Lio/realm/Sort;

    aput-object p2, p1, v2

    invoke-virtual {p0, v1, p1}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    const/4 v0, 0x2

    .line 1859
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    new-array p3, v0, [Lio/realm/Sort;

    aput-object p2, p3, v2

    aput-object p4, p3, p1

    invoke-virtual {p0, v1, p3}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1876
    iget-object v0, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    if-nez v0, :cond_0

    .line 1879
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SortDescriptor;->getInstanceForSort(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    return-object p0

    .line 1877
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A sorting order was already defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4

    .line 1602
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1604
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1605
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "int, float or double"

    aput-object v3, v2, p1

    const-string p1, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1611
    :pswitch_0
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1609
    :pswitch_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumFloat(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1607
    :pswitch_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumInt(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
