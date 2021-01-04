.class public Lio/realm/sync/permissions/ClassPermissions;
.super Lio/realm/RealmObject;
.source "ClassPermissions.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Class"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field modelClassRef:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
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

    .line 53
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 48
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    iput-object v0, p0, Lio/realm/sync/permissions/ClassPermissions;->permissions:Lio/realm/RealmList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 48
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    iput-object v0, p0, Lio/realm/sync/permissions/ClassPermissions;->permissions:Lio/realm/RealmList;

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lio/realm/sync/permissions/ClassPermissions;->modelClassRef:Ljava/lang/Class;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/sync/permissions/ClassPermissions;->name:Ljava/lang/String;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null \'clazz\' required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/realm/sync/permissions/ClassPermissions;->name:Ljava/lang/String;

    return-object v0
.end method

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

    .line 90
    iget-object v0, p0, Lio/realm/sync/permissions/ClassPermissions;->permissions:Lio/realm/RealmList;

    return-object v0
.end method
