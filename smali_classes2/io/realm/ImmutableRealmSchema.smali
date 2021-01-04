.class Lio/realm/ImmutableRealmSchema;
.super Lio/realm/RealmSchema;
.source "ImmutableRealmSchema.java"


# static fields
.field private static final SCHEMA_IMMUTABLE_EXCEPTION_MSG:Ljava/lang/String; = "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lio/realm/RealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 1

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs createWithPrimaryKeyField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 3

    const-string v0, "Null or empty class names are not allowed"

    .line 38
    invoke-virtual {p0, p1, v0}, Lio/realm/ImmutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lio/realm/ImmutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    iget-object v1, p0, Lio/realm/ImmutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 43
    new-instance v1, Lio/realm/ImmutableRealmObjectSchema;

    iget-object v2, p0, Lio/realm/ImmutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0, p1}, Lio/realm/ImmutableRealmSchema;->getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;

    move-result-object p1

    invoke-direct {v1, v2, p0, v0, p1}, Lio/realm/ImmutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
