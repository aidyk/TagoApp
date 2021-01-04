.class Lcom/liber8tech/tago/android/camera/CameraRenderer$CompareSizesByArea;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/android/camera/CameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareSizesByArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liber8tech/tago/android/camera/CameraRenderer$1;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/liber8tech/tago/android/camera/CameraRenderer$CompareSizesByArea;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4

    .line 296
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v0, v0

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    iget p1, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, p1

    iget p1, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long p1, p1

    mul-long v2, v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 292
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/android/camera/CameraRenderer$CompareSizesByArea;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
