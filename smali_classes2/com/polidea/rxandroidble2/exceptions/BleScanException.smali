.class public Lcom/polidea/rxandroidble2/exceptions/BleScanException;
.super Lcom/polidea/rxandroidble2/exceptions/BleException;
.source "BleScanException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/exceptions/BleScanException$Reason;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_CANNOT_START:I = 0x0

.field public static final BLUETOOTH_DISABLED:I = 0x1

.field public static final BLUETOOTH_NOT_AVAILABLE:I = 0x2

.field public static final LOCATION_PERMISSION_MISSING:I = 0x3

.field public static final LOCATION_SERVICES_DISABLED:I = 0x4

.field public static final SCAN_FAILED_ALREADY_STARTED:I = 0x5

.field public static final SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:I = 0x6

.field public static final SCAN_FAILED_FEATURE_UNSUPPORTED:I = 0x8

.field public static final SCAN_FAILED_INTERNAL_ERROR:I = 0x7

.field public static final SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:I = 0x9

.field public static final UNDOCUMENTED_SCAN_THROTTLE:I = 0x7ffffffe

.field public static final UNKNOWN_ERROR_CODE:I = 0x7fffffff


# instance fields
.field private final reason:I

.field private final retryDateSuggestion:Ljava/util/Date;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    .line 97
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->createMessage(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 98
    iput p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->reason:I

    .line 99
    iput-object v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 109
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->createMessage(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iput p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->reason:I

    .line 111
    iput-object v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(ILjava/util/Date;)V
    .locals 1
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->createMessage(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 104
    iput p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->reason:I

    .line 105
    iput-object p2, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-void
.end method

.method private static createMessage(ILjava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->reasonDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->retryDateSuggestionIfExists(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static reasonDescription(I)Ljava/lang/String;
    .locals 1

    const v0, 0x7ffffffe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown error"

    return-object p0

    :pswitch_0
    const-string p0, "Scan failed because out of hardware resources"

    return-object p0

    :pswitch_1
    const-string p0, "Scan failed because feature unsupported"

    return-object p0

    :pswitch_2
    const-string p0, "Scan failed because of an internal error"

    return-object p0

    :pswitch_3
    const-string p0, "Scan failed because application registration failed"

    return-object p0

    :pswitch_4
    const-string p0, "Scan failed because it has already started"

    return-object p0

    :pswitch_5
    const-string p0, "Location Services disabled"

    return-object p0

    :pswitch_6
    const-string p0, "Location Permission missing"

    return-object p0

    :pswitch_7
    const-string p0, "Bluetooth not available"

    return-object p0

    :pswitch_8
    const-string p0, "Bluetooth disabled"

    return-object p0

    :pswitch_9
    const-string p0, "Bluetooth cannot start"

    return-object p0

    :cond_0
    const-string p0, "Undocumented scan throttle"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static retryDateSuggestionIfExists(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", suggested retry date is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->reason:I

    return v0
.end method

.method public getRetryDateSuggestion()Ljava/util/Date;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->retryDateSuggestion:Ljava/util/Date;

    return-object v0
.end method
