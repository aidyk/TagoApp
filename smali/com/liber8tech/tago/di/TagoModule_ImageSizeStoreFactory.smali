.class public final Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;
.super Ljava/lang/Object;
.source "TagoModule_ImageSizeStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/util/ImageSizeStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/liber8tech/tago/di/TagoModule;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/di/TagoModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;->module:Lcom/liber8tech/tago/di/TagoModule;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/TagoModule;)Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;
    .locals 1

    .line 22
    new-instance v0, Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;-><init>(Lcom/liber8tech/tago/di/TagoModule;)V

    return-object v0
.end method

.method public static proxyImageSizeStore(Lcom/liber8tech/tago/di/TagoModule;)Lcom/liber8tech/tago/util/ImageSizeStore;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/TagoModule;->imageSizeStore()Lcom/liber8tech/tago/util/ImageSizeStore;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/util/ImageSizeStore;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/util/ImageSizeStore;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;->module:Lcom/liber8tech/tago/di/TagoModule;

    .line 18
    invoke-virtual {v0}, Lcom/liber8tech/tago/di/TagoModule;->imageSizeStore()Lcom/liber8tech/tago/util/ImageSizeStore;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/ImageSizeStore;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;->get()Lcom/liber8tech/tago/util/ImageSizeStore;

    move-result-object v0

    return-object v0
.end method
