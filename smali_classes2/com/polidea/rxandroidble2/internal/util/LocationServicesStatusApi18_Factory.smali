.class public final Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi18_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;->INSTANCE:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;
    .locals 1

    .line 17
    sget-object v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;->INSTANCE:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;

    return-object v0
.end method

.method public static newLocationServicesStatusApi18()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;
    .locals 1

    .line 21
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;
    .locals 1

    .line 13
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;

    move-result-object v0

    return-object v0
.end method
