.class public final Lio/realm/kotlin/RealmExtensionsKt;
.super Ljava/lang/Object;
.source "RealmExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\u0008\u00a2\u0006\u0002\u0010\u0004\u001a(\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0086\u0008\u00a2\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0008\u001a\u00020\t\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\u0008\u001a\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u000b\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "createObject",
        "T",
        "Lio/realm/RealmModel;",
        "Lio/realm/Realm;",
        "(Lio/realm/Realm;)Lio/realm/RealmModel;",
        "primaryKeyValue",
        "",
        "(Lio/realm/Realm;Ljava/lang/Object;)Lio/realm/RealmModel;",
        "delete",
        "",
        "where",
        "Lio/realm/RealmQuery;",
        "realm-kotlin-extensions_baseRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private static final createObject(Lio/realm/Realm;)Lio/realm/RealmModel;
    .locals 2
    .param p0    # Lio/realm/Realm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            ")TT;"
        }
    .end annotation

    const-string v0, "T"

    const/4 v1, 0x4

    .line 55
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p0

    const-string v0, "this.createObject(T::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createObject(Lio/realm/Realm;Ljava/lang/Object;)Lio/realm/RealmModel;
    .locals 2
    .param p0    # Lio/realm/Realm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "T"

    const/4 v1, 0x4

    .line 74
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object p0

    const-string p1, "this.createObject(T::class.java, primaryKeyValue)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final delete(Lio/realm/Realm;)V
    .locals 2
    .param p0    # Lio/realm/Realm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            ")V"
        }
    .end annotation

    const-string v0, "T"

    const/4 v1, 0x4

    .line 40
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    return-void
.end method

.method private static final where(Lio/realm/Realm;)Lio/realm/RealmQuery;
    .locals 2
    .param p0    # Lio/realm/Realm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            ")",
            "Lio/realm/RealmQuery<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "T"

    const/4 v1, 0x4

    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p0

    const-string v0, "this.where(T::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
