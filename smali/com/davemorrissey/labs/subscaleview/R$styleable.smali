.class public final Lcom/davemorrissey/labs/subscaleview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SubsamplingScaleImageView:[I

.field public static final SubsamplingScaleImageView_assetName:I = 0x0

.field public static final SubsamplingScaleImageView_panEnabled:I = 0x1

.field public static final SubsamplingScaleImageView_quickScaleEnabled:I = 0x2

.field public static final SubsamplingScaleImageView_src:I = 0x3

.field public static final SubsamplingScaleImageView_tileBackgroundColor:I = 0x4

.field public static final SubsamplingScaleImageView_zoomEnabled:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f03002d
        0x7f03018b
        0x7f0301a0
        0x7f0301c8
        0x7f03021d
        0x7f030246
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
