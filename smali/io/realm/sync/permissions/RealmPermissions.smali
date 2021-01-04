.class public Lio/realm/sync/permissions/RealmPermissions;
.super Lio/realm/RealmObject;
.source "RealmPermissions.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Realm"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field private permissions:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lio/realm/sync/permissions/RealmPermissions;->id:I

    .line 37
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    iput-object v0, p0, Lio/realm/sync/permissions/RealmPermissions;->permissions:Lio/realm/RealmList;

    return-void
.end method


# virtual methods
.method public getPermissions()Lio/realm/RealmList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/realm/sync/permissions/RealmPermissions;->permissions:Lio/realm/RealmList;

    return-object v0
.end method
