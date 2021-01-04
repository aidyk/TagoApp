.class public final Lbleshadow/dagger/internal/ProviderOfLazy;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements Lbleshadow/javax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbleshadow/javax/inject/Provider<",
        "Lbleshadow/dagger/Lazy<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lbleshadow/dagger/internal/ProviderOfLazy;->provider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbleshadow/javax/inject/Provider<",
            "TT;>;)",
            "Lbleshadow/javax/inject/Provider<",
            "Lbleshadow/dagger/Lazy<",
            "TT;>;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lbleshadow/dagger/internal/ProviderOfLazy;

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbleshadow/javax/inject/Provider;

    invoke-direct {v0, p0}, Lbleshadow/dagger/internal/ProviderOfLazy;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lbleshadow/dagger/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbleshadow/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lbleshadow/dagger/internal/ProviderOfLazy;->provider:Lbleshadow/javax/inject/Provider;

    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->lazy(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lbleshadow/dagger/internal/ProviderOfLazy;->get()Lbleshadow/dagger/Lazy;

    move-result-object v0

    return-object v0
.end method
