.class public Lio/realm/sync/permissions/Role;
.super Lio/realm/RealmObject;
.source "Role.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Role"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private members:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 40
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    iput-object v0, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 40
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    iput-object v0, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    .line 52
    iput-object p1, p0, Lio/realm/sync/permissions/Role;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->getRealm()Lio/realm/Realm;

    move-result-object v0

    .line 77
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    if-nez v1, :cond_0

    .line 79
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1, p1}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    .line 81
    :cond_0
    iget-object p1, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    invoke-virtual {p1, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-empty \'userId\' required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not add a member to a non managed Role"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMembers()Lio/realm/RealmList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/realm/sync/permissions/Role;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasMember(Ljava/lang/String;)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    invoke-virtual {v0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeMember(Ljava/lang/String;)Z
    .locals 2

    .line 96
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->getRealm()Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/sync/permissions/PermissionUser;

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    invoke-virtual {v0, p1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
