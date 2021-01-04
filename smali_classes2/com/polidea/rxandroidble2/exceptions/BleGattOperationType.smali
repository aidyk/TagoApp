.class public Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;
.super Ljava/lang/Object;
.source "BleGattOperationType.java"


# static fields
.field public static final CHARACTERISTIC_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final CHARACTERISTIC_LONG_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final CHARACTERISTIC_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final CHARACTERISTIC_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final CONNECTION_PRIORITY_CHANGE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final CONNECTION_STATE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final DESCRIPTOR_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final DESCRIPTOR_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final ON_MTU_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final READ_RSSI:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final RELIABLE_WRITE_COMPLETED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

.field public static final SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "CONNECTION_STATE"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_STATE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 6
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "SERVICE_DISCOVERY"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 7
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "CHARACTERISTIC_READ"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 8
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "CHARACTERISTIC_WRITE"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 9
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "CHARACTERISTIC_LONG_WRITE"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_LONG_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 10
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "CHARACTERISTIC_CHANGED"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 11
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "DESCRIPTOR_READ"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 12
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "DESCRIPTOR_WRITE"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 13
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "RELIABLE_WRITE_COMPLETED"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->RELIABLE_WRITE_COMPLETED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 14
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "READ_RSSI"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->READ_RSSI:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 15
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "ON_MTU_CHANGED"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->ON_MTU_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 16
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    const-string v1, "CONNECTION_PRIORITY_CHANGE"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_PRIORITY_CHANGE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleGattOperation{description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
