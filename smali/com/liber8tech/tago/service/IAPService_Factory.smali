.class public final Lcom/liber8tech/tago/service/IAPService_Factory;
.super Ljava/lang/Object;
.source "IAPService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/service/IAPService;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/liber8tech/tago/service/IAPService_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/liber8tech/tago/service/IAPService_Factory;

    invoke-direct {v0}, Lcom/liber8tech/tago/service/IAPService_Factory;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/service/IAPService_Factory;->INSTANCE:Lcom/liber8tech/tago/service/IAPService_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/liber8tech/tago/service/IAPService_Factory;
    .locals 1

    .line 15
    sget-object v0, Lcom/liber8tech/tago/service/IAPService_Factory;->INSTANCE:Lcom/liber8tech/tago/service/IAPService_Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/service/IAPService;
    .locals 1

    .line 11
    new-instance v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-direct {v0}, Lcom/liber8tech/tago/service/IAPService;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/IAPService_Factory;->get()Lcom/liber8tech/tago/service/IAPService;

    move-result-object v0

    return-object v0
.end method
