.class Lcom/polidea/rxandroidble2/internal/connection/ConstantPayloadSizeLimit;
.super Ljava/lang/Object;
.source "ConstantPayloadSizeLimit.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final limit:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConstantPayloadSizeLimit;->limit:I

    return-void
.end method


# virtual methods
.method public getPayloadSizeLimit()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConstantPayloadSizeLimit;->limit:I

    return v0
.end method
