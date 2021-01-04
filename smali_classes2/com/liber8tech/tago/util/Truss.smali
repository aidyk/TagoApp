.class public Lcom/liber8tech/tago/util/Truss;
.super Ljava/lang/Object;
.source "Truss.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/util/Truss$Span;
    }
.end annotation


# instance fields
.field private final builder:Landroid/text/SpannableStringBuilder;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/liber8tech/tago/util/Truss$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/util/Truss;->stack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public append(C)Lcom/liber8tech/tago/util/Truss;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(I)Lcom/liber8tech/tago/util/Truss;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/liber8tech/tago/util/Truss;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/liber8tech/tago/util/Truss;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public build()Ljava/lang/CharSequence;
    .locals 1

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/Truss;->popSpan()Lcom/liber8tech/tago/util/Truss;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public popSpan()Lcom/liber8tech/tago/util/Truss;
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/Truss$Span;

    .line 55
    iget-object v1, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/liber8tech/tago/util/Truss$Span;->span:Ljava/lang/Object;

    iget v0, v0, Lcom/liber8tech/tago/util/Truss$Span;->start:I

    iget-object v3, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public pushSpan(Ljava/lang/Object;)Lcom/liber8tech/tago/util/Truss;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/util/Truss;->stack:Ljava/util/Deque;

    new-instance v1, Lcom/liber8tech/tago/util/Truss$Span;

    iget-object v2, p0, Lcom/liber8tech/tago/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/liber8tech/tago/util/Truss$Span;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method
