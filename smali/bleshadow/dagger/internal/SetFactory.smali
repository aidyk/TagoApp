.class public final Lbleshadow/dagger/internal/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbleshadow/dagger/internal/SetFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lbleshadow/dagger/internal/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/dagger/internal/Factory<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final collectionProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final individualProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lbleshadow/dagger/internal/Factory;

    move-result-object v0

    sput-object v0, Lbleshadow/dagger/internal/SetFactory;->EMPTY_FACTORY:Lbleshadow/dagger/internal/Factory;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/Collection<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lbleshadow/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    .line 100
    iput-object p2, p0, Lbleshadow/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lbleshadow/dagger/internal/SetFactory$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lbleshadow/dagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static builder(II)Lbleshadow/dagger/internal/SetFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lbleshadow/dagger/internal/SetFactory$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lbleshadow/dagger/internal/SetFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbleshadow/dagger/internal/SetFactory$Builder;-><init>(IILbleshadow/dagger/internal/SetFactory$1;)V

    return-object v0
.end method

.method public static empty()Lbleshadow/dagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbleshadow/dagger/internal/Factory<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lbleshadow/dagger/internal/SetFactory;->EMPTY_FACTORY:Lbleshadow/dagger/internal/Factory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lbleshadow/dagger/internal/SetFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lbleshadow/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lbleshadow/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    iget-object v2, p0, Lbleshadow/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 120
    iget-object v5, p0, Lbleshadow/dagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbleshadow/javax/inject/Provider;

    invoke-interface {v5}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 121
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v4, v6

    .line 122
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {v4}, Lbleshadow/dagger/internal/DaggerCollections;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lbleshadow/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 127
    iget-object v5, p0, Lbleshadow/dagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbleshadow/javax/inject/Provider;

    invoke-interface {v5}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 129
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_3

    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 131
    invoke-static {v5}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 135
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
