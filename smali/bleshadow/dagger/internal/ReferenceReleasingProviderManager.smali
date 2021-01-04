.class public final Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;
.super Ljava/lang/Object;
.source "ReferenceReleasingProviderManager.java"

# interfaces
.implements Lbleshadow/dagger/releasablereferences/ReleasableReferenceManager;


# annotations
.annotation build Lbleshadow/dagger/internal/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;
    }
.end annotation


# instance fields
.field private final providers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/ref/WeakReference<",
            "Lbleshadow/dagger/internal/ReferenceReleasingProvider<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->providers:Ljava/util/Queue;

    .line 42
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->scope:Ljava/lang/Class;

    return-void
.end method

.method private execute(Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->providers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbleshadow/dagger/internal/ReferenceReleasingProvider;

    if-nez v1, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1, v1}, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->execute(Lbleshadow/dagger/internal/ReferenceReleasingProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addProvider(Lbleshadow/dagger/internal/ReferenceReleasingProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/dagger/internal/ReferenceReleasingProvider<",
            "*>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->providers:Ljava/util/Queue;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseStrongReferences()V
    .locals 1

    .line 64
    sget-object v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->RELEASE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-direct {p0, v0}, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->execute(Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;)V

    return-void
.end method

.method public restoreStrongReferences()V
    .locals 1

    .line 74
    sget-object v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->RESTORE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-direct {p0, v0}, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->execute(Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;)V

    return-void
.end method

.method public scope()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;->scope:Ljava/lang/Class;

    return-object v0
.end method
