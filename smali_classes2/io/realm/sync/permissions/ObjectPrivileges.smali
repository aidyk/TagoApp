.class public final Lio/realm/sync/permissions/ObjectPrivileges;
.super Ljava/lang/Object;
.source "ObjectPrivileges.java"


# annotations
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


# direct methods
.method public constructor <init>(J)V
    .locals 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    iput-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canRead:Z

    const-wide/16 v0, 0x2

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    iput-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canUpdate:Z

    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_2
    iput-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canDelete:Z

    const-wide/16 v0, 0x8

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 50
    :goto_3
    iput-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canSetPermissions:Z

    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 51
    :goto_4
    iput-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canQuery:Z

    const-wide/16 v0, 0x20

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 52
    :goto_5
    iput-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canCreate:Z

    const-wide/16 v0, 0x40

    and-long/2addr p1, v0

    cmp-long v0, p1, v4

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 53
    :cond_6
    iput-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canModifySchema:Z

    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canDelete:Z

    return v0
.end method

.method public canRead()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canRead:Z

    return v0
.end method

.method public canSetPermissions()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canSetPermissions:Z

    return v0
.end method

.method public canUpdate()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canUpdate:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    check-cast p1, Lio/realm/sync/permissions/ObjectPrivileges;

    .line 103
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canRead:Z

    iget-boolean v3, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canRead:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 104
    :cond_2
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canUpdate:Z

    iget-boolean v3, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canUpdate:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 105
    :cond_3
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canDelete:Z

    iget-boolean v3, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canDelete:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 106
    :cond_4
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canSetPermissions:Z

    iget-boolean v3, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canSetPermissions:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 107
    :cond_5
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canQuery:Z

    iget-boolean v3, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canQuery:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 108
    :cond_6
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canCreate:Z

    iget-boolean v3, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canCreate:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 109
    :cond_7
    iget-boolean v2, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canModifySchema:Z

    iget-boolean p1, p1, Lio/realm/sync/permissions/ObjectPrivileges;->canModifySchema:Z

    if-ne v2, p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget-boolean v0, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canRead:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canUpdate:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canDelete:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canSetPermissions:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canQuery:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canCreate:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canModifySchema:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealmPrivileges{canRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canDelete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSetPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canSetPermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canModifySchema="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/ObjectPrivileges;->canModifySchema:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
