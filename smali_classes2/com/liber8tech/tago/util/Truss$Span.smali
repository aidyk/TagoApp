.class final Lcom/liber8tech/tago/util/Truss$Span;
.super Ljava/lang/Object;
.source "Truss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/util/Truss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Span"
.end annotation


# instance fields
.field final span:Ljava/lang/Object;

.field final start:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/liber8tech/tago/util/Truss$Span;->start:I

    .line 75
    iput-object p2, p0, Lcom/liber8tech/tago/util/Truss$Span;->span:Ljava/lang/Object;

    return-void
.end method
