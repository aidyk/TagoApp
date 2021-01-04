.class public Lcom/polidea/rxandroidble2/exceptions/BleDescriptorNotFoundException;
.super Lcom/polidea/rxandroidble2/exceptions/BleException;
.source "BleDescriptorNotFoundException.java"


# instance fields
.field private final descriptorUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Descriptor not found with UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleDescriptorNotFoundException;->descriptorUUID:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getDescriptorUUID()Ljava/util/UUID;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleDescriptorNotFoundException;->descriptorUUID:Ljava/util/UUID;

    return-object v0
.end method
