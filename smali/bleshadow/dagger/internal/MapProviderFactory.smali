.class public final Lbleshadow/dagger/internal/MapProviderFactory;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;
.implements Lbleshadow/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/util/Map<",
        "TK;",
        "Lbleshadow/javax/inject/Provider<",
        "TV;>;>;>;",
        "Lbleshadow/dagger/Lazy<",
        "Ljava/util/Map<",
        "TK;",
        "Lbleshadow/javax/inject/Provider<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field private final contributingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lbleshadow/dagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lbleshadow/dagger/internal/MapProviderFactory$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static builder(I)Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lbleshadow/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lbleshadow/dagger/internal/MapProviderFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbleshadow/dagger/internal/MapProviderFactory$Builder;-><init>(ILbleshadow/dagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lbleshadow/dagger/internal/MapProviderFactory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lbleshadow/dagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    return-object v0
.end method
