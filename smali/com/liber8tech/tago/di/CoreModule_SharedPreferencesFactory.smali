.class public final Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;
.super Ljava/lang/Object;
.source "CoreModule_SharedPreferencesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/liber8tech/tago/di/CoreModule;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/di/CoreModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/CoreModule;)Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;
    .locals 1

    .line 22
    new-instance v0, Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;-><init>(Lcom/liber8tech/tago/di/CoreModule;)V

    return-object v0
.end method

.method public static proxySharedPreferences(Lcom/liber8tech/tago/di/CoreModule;)Landroid/content/SharedPreferences;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/CoreModule;->sharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    .line 18
    invoke-virtual {v0}, Lcom/liber8tech/tago/di/CoreModule;->sharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/CoreModule_SharedPreferencesFactory;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
