.class public final Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;
.super Lcom/liber8tech/tago/event/TagoEvent;
.source "TagoEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/event/TagoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoltageChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;",
        "Lcom/liber8tech/tago/event/TagoEvent;",
        "value",
        "",
        "(I)V",
        "getValue",
        "()I",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/liber8tech/tago/event/TagoEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;->value:I

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;->value:I

    return v0
.end method
