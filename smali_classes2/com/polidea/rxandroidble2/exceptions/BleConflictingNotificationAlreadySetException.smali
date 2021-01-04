.class public Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;
.super Lcom/polidea/rxandroidble2/exceptions/BleException;
.source "BleConflictingNotificationAlreadySetException.java"


# instance fields
.field private final alreadySetIsIndication:Z

.field private final characteristicUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Characteristic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notification already set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "indication"

    goto :goto_0

    :cond_0
    const-string v1, "notification"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;->characteristicUuid:Ljava/util/UUID;

    .line 22
    iput-boolean p2, p0, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;->alreadySetIsIndication:Z

    return-void
.end method


# virtual methods
.method public getCharacteristicUuid()Ljava/util/UUID;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;->characteristicUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public indicationAlreadySet()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;->alreadySetIsIndication:Z

    return v0
.end method

.method public notificationAlreadySet()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;->alreadySetIsIndication:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
