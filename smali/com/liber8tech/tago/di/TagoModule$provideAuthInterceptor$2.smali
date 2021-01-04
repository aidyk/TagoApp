.class final Lcom/liber8tech/tago/di/TagoModule$provideAuthInterceptor$2;
.super Ljava/lang/Object;
.source "TagoModule.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/di/TagoModule;->provideAuthInterceptor(Lcom/liber8tech/tago/util/RuntimeConfig;)Lokhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Response;",
        "kotlin.jvm.PlatformType",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "intercept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/di/TagoModule$provideAuthInterceptor$2;->$runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    .line 86
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/liber8tech/tago/di/TagoModule$provideAuthInterceptor$2;->$runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-virtual {v1}, Lcom/liber8tech/tago/util/RuntimeConfig;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    sget-object v2, Lcom/liber8tech/tago/di/TagoModule$provideAuthInterceptor$1;->INSTANCE:Lcom/liber8tech/tago/di/TagoModule$provideAuthInterceptor$1;

    const-string v3, "request"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/liber8tech/tago/di/TagoModule$provideAuthInterceptor$1;->invoke(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    :goto_0
    return-object p1
.end method
