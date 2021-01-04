.class interface abstract Lcom/liber8tech/tago/service/FirmwareApi;
.super Ljava/lang/Object;
.source "FirmwareService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008b\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/FirmwareApi;",
        "",
        "getLatestFirmware",
        "Lio/reactivex/Single;",
        "Lcom/liber8tech/tago/service/FirmwareResponse;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# virtual methods
.method public abstract getLatestFirmware()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/liber8tech/tago/service/FirmwareResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/firmware"
    .end annotation
.end method
