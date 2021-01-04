.class public Lio/realm/sync/permissions/Permission;
.super Lio/realm/RealmObject;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/sync/permissions/Permission$Builder;
    }
.end annotation

.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Permission"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private canCreate:Z

.field private canDelete:Z

.field private canModifySchema:Z

.field private canQuery:Z

.field private canRead:Z

.field private canSetPermissions:Z

.field private canUpdate:Z

.field private role:Lio/realm/sync/permissions/Role;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/realm/sync/permissions/Role;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 318
    iput-object p1, p0, Lio/realm/sync/permissions/Permission;->role:Lio/realm/sync/permissions/Role;

    return-void
.end method

.method private constructor <init>(Lio/realm/sync/permissions/Role;ZZZZZZZ)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 325
    iput-object p1, p0, Lio/realm/sync/permissions/Permission;->role:Lio/realm/sync/permissions/Role;

    .line 326
    iput-boolean p2, p0, Lio/realm/sync/permissions/Permission;->canRead:Z

    .line 327
    iput-boolean p3, p0, Lio/realm/sync/permissions/Permission;->canUpdate:Z

    .line 328
    iput-boolean p4, p0, Lio/realm/sync/permissions/Permission;->canDelete:Z

    .line 329
    iput-boolean p5, p0, Lio/realm/sync/permissions/Permission;->canSetPermissions:Z

    .line 330
    iput-boolean p6, p0, Lio/realm/sync/permissions/Permission;->canQuery:Z

    .line 331
    iput-boolean p7, p0, Lio/realm/sync/permissions/Permission;->canCreate:Z

    .line 332
    iput-boolean p8, p0, Lio/realm/sync/permissions/Permission;->canModifySchema:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/sync/permissions/Role;ZZZZZZZLio/realm/sync/permissions/Permission$1;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p8}, Lio/realm/sync/permissions/Permission;-><init>(Lio/realm/sync/permissions/Role;ZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public canCreate()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canCreate:Z

    return v0
.end method

.method public canDelete()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canDelete:Z

    return v0
.end method

.method public canModifySchema()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canModifySchema:Z

    return v0
.end method

.method public canQuery()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canQuery:Z

    return v0
.end method

.method public canRead()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canRead:Z

    return v0
.end method

.method public canSetPermissions()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canSetPermissions:Z

    return v0
.end method

.method public canUpdate()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canUpdate:Z

    return v0
.end method

.method public getRole()Lio/realm/sync/permissions/Role;
    .locals 1

    .line 341
    iget-object v0, p0, Lio/realm/sync/permissions/Permission;->role:Lio/realm/sync/permissions/Role;

    return-object v0
.end method

.method public setCanCreate(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canCreate:Z

    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canDelete:Z

    return-void
.end method

.method public setCanModifySchema(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canModifySchema:Z

    return-void
.end method

.method public setCanQuery(Z)V
    .locals 0

    .line 508
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canQuery:Z

    return-void
.end method

.method public setCanRead(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canRead:Z

    return-void
.end method

.method public setCanSetPermissions(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canSetPermissions:Z

    return-void
.end method

.method public setCanUpdate(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canUpdate:Z

    return-void
.end method
