.class Lcom/polidea/rxandroidble2/DaggerClientComponent$1;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lbleshadow/javax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent;->initialize(Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/javax/inject/Provider<",
        "Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$1;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;
    .locals 3

    .line 297
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$1;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$1;->get()Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;

    move-result-object v0

    return-object v0
.end method
