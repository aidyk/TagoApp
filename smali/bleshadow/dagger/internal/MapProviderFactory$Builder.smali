.class public final Lbleshadow/dagger/internal/MapProviderFactory$Builder;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbleshadow/dagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lbleshadow/dagger/internal/DaggerCollections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lbleshadow/dagger/internal/MapProviderFactory$Builder;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(ILbleshadow/dagger/internal/MapProviderFactory$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/MapProviderFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lbleshadow/dagger/internal/MapProviderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbleshadow/dagger/internal/MapProviderFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lbleshadow/dagger/internal/MapProviderFactory;

    iget-object v1, p0, Lbleshadow/dagger/internal/MapProviderFactory$Builder;->map:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbleshadow/dagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;Lbleshadow/dagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;)",
            "Lbleshadow/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lbleshadow/dagger/internal/MapProviderFactory$Builder;->map:Ljava/util/LinkedHashMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "provider"

    invoke-static {p2, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
