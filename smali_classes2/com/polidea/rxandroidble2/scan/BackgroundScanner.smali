.class public interface abstract Lcom/polidea/rxandroidble2/scan/BackgroundScanner;
.super Ljava/lang/Object;
.source "BackgroundScanner.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x1a
.end annotation


# virtual methods
.method public abstract onScanResultReceived(Landroid/content/Intent;)Ljava/util/List;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract scanBleDeviceInBackground(Landroid/app/PendingIntent;Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation
.end method

.method public abstract stopBackgroundBleScan(Landroid/app/PendingIntent;)V
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation
.end method
