.class public Lcom/polidea/rxandroidble2/scan/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;,
        Lcom/polidea/rxandroidble2/scan/ScanSettings$MatchMode;,
        Lcom/polidea/rxandroidble2/scan/ScanSettings$MatchNum;,
        Lcom/polidea/rxandroidble2/scan/ScanSettings$CallbackType;,
        Lcom/polidea/rxandroidble2/scan/ScanSettings$ScanMode;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/polidea/rxandroidble2/scan/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1


# instance fields
.field private mCallbackType:I

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    new-instance v0, Lcom/polidea/rxandroidble2/scan/ScanSettings$1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/scan/ScanSettings$1;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIJII)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mScanMode:I

    .line 170
    iput p2, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mCallbackType:I

    .line 171
    iput-wide p3, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mReportDelayMillis:J

    .line 172
    iput p6, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 173
    iput p5, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mMatchMode:I

    return-void
.end method

.method synthetic constructor <init>(IIJIILcom/polidea/rxandroidble2/scan/ScanSettings$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/polidea/rxandroidble2/scan/ScanSettings;-><init>(IIJII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mScanMode:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mCallbackType:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mReportDelayMillis:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mMatchMode:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/polidea/rxandroidble2/scan/ScanSettings$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackType()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public getMatchMode()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public getReportDelayMillis()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public getScanMode()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mScanMode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 190
    iget p2, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mScanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-wide v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget p2, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget p2, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
