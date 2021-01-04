.class public final Lbleshadow/dagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "DoubleCheck.java"

# interfaces
.implements Lbleshadow/javax/inject/Provider;
.implements Lbleshadow/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbleshadow/javax/inject/Provider<",
        "TT;>;",
        "Lbleshadow/dagger/Lazy<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbleshadow/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lbleshadow/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lbleshadow/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lbleshadow/dagger/internal/DoubleCheck;->provider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static lazy(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lbleshadow/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 84
    instance-of v0, p0, Lbleshadow/dagger/Lazy;

    if-eqz v0, :cond_0

    .line 86
    check-cast p0, Lbleshadow/dagger/Lazy;

    return-object p0

    .line 94
    :cond_0
    new-instance v0, Lbleshadow/dagger/internal/DoubleCheck;

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbleshadow/javax/inject/Provider;

    invoke-direct {v0, p0}, Lbleshadow/dagger/internal/DoubleCheck;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    instance-of v0, p0, Lbleshadow/dagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lbleshadow/dagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Lbleshadow/dagger/internal/DoubleCheck;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lbleshadow/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 43
    sget-object v1, Lbleshadow/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lbleshadow/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 46
    sget-object v1, Lbleshadow/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 47
    iget-object v0, p0, Lbleshadow/dagger/internal/DoubleCheck;->provider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lbleshadow/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 52
    sget-object v2, Lbleshadow/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    :goto_0
    iput-object v0, p0, Lbleshadow/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lbleshadow/dagger/internal/DoubleCheck;->provider:Lbleshadow/javax/inject/Provider;

    .line 62
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method
