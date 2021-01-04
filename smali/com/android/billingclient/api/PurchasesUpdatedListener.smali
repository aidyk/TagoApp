.class public interface abstract Lcom/android/billingclient/api/PurchasesUpdatedListener;
.super Ljava/lang/Object;
.source "PurchasesUpdatedListener.java"


# virtual methods
.method public abstract onPurchasesUpdated(ILjava/util/List;)V
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method
