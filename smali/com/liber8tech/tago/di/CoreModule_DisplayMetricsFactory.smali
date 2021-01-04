.class public final Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;
.super Ljava/lang/Object;
.source "CoreModule_DisplayMetricsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/util/DisplayMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/liber8tech/tago/di/CoreModule;

.field private final resProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/di/CoreModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/di/CoreModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    .line 17
    iput-object p2, p0, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;->resProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/CoreModule;Ljavax/inject/Provider;)Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/di/CoreModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;)",
            "Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;-><init>(Lcom/liber8tech/tago/di/CoreModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyDisplayMetrics(Lcom/liber8tech/tago/di/CoreModule;Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/di/CoreModule;->displayMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/util/DisplayMetrics;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    iget-object v1, p0, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;->resProvider:Ljavax/inject/Provider;

    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/di/CoreModule;->displayMetrics(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/CoreModule_DisplayMetricsFactory;->get()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
