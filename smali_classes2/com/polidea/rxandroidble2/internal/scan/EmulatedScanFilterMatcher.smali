.class public Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
.super Ljava/lang/Object;
.source "EmulatedScanFilterMatcher.java"


# instance fields
.field private final scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/polidea/rxandroidble2/scan/ScanFilter;)V
    .locals 0
    .param p1    # [Lcom/polidea/rxandroidble2/scan/ScanFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    return-void
.end method


# virtual methods
.method public matches(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Z
    .locals 6

    .line 17
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 22
    invoke-virtual {v5, p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->matches(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method
