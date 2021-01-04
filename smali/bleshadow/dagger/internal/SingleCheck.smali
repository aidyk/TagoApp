.class public final Lbleshadow/dagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

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

    sput-object v0, Lbleshadow/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

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
    sget-object v0, Lbleshadow/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lbleshadow/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lbleshadow/dagger/internal/SingleCheck;->provider:Lbleshadow/javax/inject/Provider;

    return-void
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

    .line 61
    instance-of v0, p0, Lbleshadow/dagger/internal/SingleCheck;

    if-nez v0, :cond_1

    instance-of v0, p0, Lbleshadow/dagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lbleshadow/dagger/internal/SingleCheck;

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbleshadow/javax/inject/Provider;

    invoke-direct {v0, p0}, Lbleshadow/dagger/internal/SingleCheck;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lbleshadow/dagger/internal/SingleCheck;->provider:Lbleshadow/javax/inject/Provider;

    .line 47
    iget-object v1, p0, Lbleshadow/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    sget-object v2, Lbleshadow/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 48
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbleshadow/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lbleshadow/dagger/internal/SingleCheck;->provider:Lbleshadow/javax/inject/Provider;

    .line 53
    :cond_0
    iget-object v0, p0, Lbleshadow/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    return-object v0
.end method
