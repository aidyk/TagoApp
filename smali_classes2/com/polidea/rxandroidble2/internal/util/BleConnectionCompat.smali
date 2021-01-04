.class public Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;
.super Ljava/lang/Object;
.source "BleConnectionCompat.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    return-void
.end method

.method private connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;
    .locals 2

    const-string v0, "Connecting without reflection"

    const/4 v1, 0x0

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p2, v0, p3, p1, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, p3, p1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private connectUsingReflection(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "Connecting using reflection"

    const/4 v1, 0x0

    .line 101
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0, p1, p3}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->setAutoConnectValue(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "connect"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v3, v1

    const-class v4, Landroid/bluetooth/BluetoothGattCallback;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p3, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 104
    invoke-virtual {p3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 105
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v5

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private createBluetoothGatt(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 111
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found constructor with args count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v3, v5, :cond_0

    .line 116
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    aput-object v5, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1

    .line 118
    :cond_0
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->context:Landroid/content/Context;

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    aput-object p2, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method private getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBluetoothGatt"

    invoke-direct {p0, v0, v1}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getIBluetoothManager()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBluetoothManager"

    invoke-direct {p0, v1, v2}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 142
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getMethodFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p1
.end method

.method private setAutoConnectValue(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAutoConnect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public connectGatt(Landroid/bluetooth/BluetoothDevice;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Trying to connectGatt using reflection."

    .line 55
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->getIBluetoothManager()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Couldn\'t get iBluetoothGatt object"

    .line 59
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    return-object v1

    .line 63
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->createBluetoothGatt(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Couldn\'t create BluetoothGatt object"

    .line 66
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    return-object v1

    .line 70
    :cond_3
    invoke-direct {p0, v1, p3, p2}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->connectUsingReflection(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Connection using reflection failed, closing gatt"

    .line 73
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Error during reflection"

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 45
    :cond_5
    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;->connectGattCompat(Landroid/bluetooth/BluetoothGattCallback;Landroid/bluetooth/BluetoothDevice;Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method
