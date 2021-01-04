.class public Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;
.super Ljava/lang/Object;
.source "RxBleConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongWriteFailure"
.end annotation


# instance fields
.field final batchIndex:I

.field final cause:Lcom/polidea/rxandroidble2/exceptions/BleGattException;


# direct methods
.method public constructor <init>(ILcom/polidea/rxandroidble2/exceptions/BleGattException;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;->batchIndex:I

    .line 208
    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;->cause:Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    return-void
.end method


# virtual methods
.method public getBatchIndex()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;->batchIndex:I

    return v0
.end method

.method public getCause()Lcom/polidea/rxandroidble2/exceptions/BleGattException;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;->cause:Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    return-object v0
.end method
