.class public final Lcom/liber8tech/tago/analytics/Implementations;
.super Ljava/lang/Object;
.source "Implementations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/liber8tech/tago/analytics/Implementations;",
        "",
        "()V",
        "hasGoogle",
        "",
        "getHasGoogle",
        "()Z",
        "checkClass",
        "name",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/liber8tech/tago/analytics/Implementations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/liber8tech/tago/analytics/Implementations;

    invoke-direct {v0}, Lcom/liber8tech/tago/analytics/Implementations;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/analytics/Implementations;->INSTANCE:Lcom/liber8tech/tago/analytics/Implementations;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkClass(Ljava/lang/String;)Z
    .locals 0

    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getHasGoogle()Z
    .locals 1

    const-string v0, "com.google.android.gms.analytics.GoogleAnalytics"

    .line 6
    invoke-direct {p0, v0}, Lcom/liber8tech/tago/analytics/Implementations;->checkClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
