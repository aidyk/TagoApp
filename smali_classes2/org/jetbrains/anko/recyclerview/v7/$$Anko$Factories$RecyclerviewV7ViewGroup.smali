.class public final Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;
.super Ljava/lang/Object;
.source "Views.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "org/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup",
        "",
        "()V",
        "RECYCLER_VIEW",
        "Lkotlin/Function1;",
        "Landroid/content/Context;",
        "Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;",
        "getRECYCLER_VIEW",
        "()Lkotlin/jvm/functions/Function1;",
        "anko-recyclerview-v7_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

.field private static final RECYCLER_VIEW:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

    invoke-direct {v0}, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;-><init>()V

    sput-object v0, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

    .line 16
    sget-object v0, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup$RECYCLER_VIEW$1;->INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup$RECYCLER_VIEW$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->RECYCLER_VIEW:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRECYCLER_VIEW()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    sget-object v0, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->RECYCLER_VIEW:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
