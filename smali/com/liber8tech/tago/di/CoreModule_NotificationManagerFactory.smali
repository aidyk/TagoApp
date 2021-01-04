.class public final Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;
.super Ljava/lang/Object;
.source "CoreModule_NotificationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/support/v4/app/NotificationManagerCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/liber8tech/tago/di/CoreModule;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/di/CoreModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/CoreModule;)Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;
    .locals 1

    .line 23
    new-instance v0, Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;-><init>(Lcom/liber8tech/tago/di/CoreModule;)V

    return-object v0
.end method

.method public static proxyNotificationManager(Lcom/liber8tech/tago/di/CoreModule;)Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/CoreModule;->notificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/NotificationManagerCompat;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    .line 19
    invoke-virtual {v0}, Lcom/liber8tech/tago/di/CoreModule;->notificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationManagerCompat;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/CoreModule_NotificationManagerFactory;->get()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method
