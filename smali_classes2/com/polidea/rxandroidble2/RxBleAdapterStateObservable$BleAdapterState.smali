.class public Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;
.super Ljava/lang/Object;
.source "RxBleAdapterStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BleAdapterState"
.end annotation


# static fields
.field public static final STATE_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

.field public static final STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

.field public static final STATE_TURNING_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

.field public static final STATE_TURNING_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;


# instance fields
.field private final isUsable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;-><init>(Z)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    .line 28
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;-><init>(Z)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    .line 29
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;-><init>(Z)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_TURNING_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;-><init>(Z)V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_TURNING_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->isUsable:Z

    return-void
.end method


# virtual methods
.method public isUsable()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->isUsable:Z

    return v0
.end method
