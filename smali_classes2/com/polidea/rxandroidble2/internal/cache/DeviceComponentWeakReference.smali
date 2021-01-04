.class Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "DeviceComponentWeakReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/polidea/rxandroidble2/internal/DeviceComponent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/DeviceComponent;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/polidea/rxandroidble2/internal/DeviceComponent;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method


# virtual methods
.method contains(Ljava/lang/Object;)Z
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    .line 26
    instance-of v1, p1, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    check-cast p1, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 33
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    .line 38
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 39
    instance-of v2, p1, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    if-eqz v2, :cond_1

    .line 41
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    check-cast p1, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
