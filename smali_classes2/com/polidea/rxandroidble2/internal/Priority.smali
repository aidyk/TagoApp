.class public Lcom/polidea/rxandroidble2/internal/Priority;
.super Ljava/lang/Object;
.source "Priority.java"


# static fields
.field public static final HIGH:Lcom/polidea/rxandroidble2/internal/Priority;

.field public static final LOW:Lcom/polidea/rxandroidble2/internal/Priority;

.field public static final NORMAL:Lcom/polidea/rxandroidble2/internal/Priority;


# instance fields
.field final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/polidea/rxandroidble2/internal/Priority;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/Priority;-><init>(I)V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/Priority;->HIGH:Lcom/polidea/rxandroidble2/internal/Priority;

    .line 11
    new-instance v0, Lcom/polidea/rxandroidble2/internal/Priority;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/Priority;-><init>(I)V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/Priority;->NORMAL:Lcom/polidea/rxandroidble2/internal/Priority;

    .line 12
    new-instance v0, Lcom/polidea/rxandroidble2/internal/Priority;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/Priority;-><init>(I)V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/Priority;->LOW:Lcom/polidea/rxandroidble2/internal/Priority;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/polidea/rxandroidble2/internal/Priority;->priority:I

    return-void
.end method
