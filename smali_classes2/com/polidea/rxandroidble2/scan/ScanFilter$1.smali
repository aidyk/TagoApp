.class final Lcom/polidea/rxandroidble2/scan/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/scan/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/polidea/rxandroidble2/scan/ScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/polidea/rxandroidble2/scan/ScanFilter;
    .locals 5

    .line 142
    new-instance v0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 150
    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 151
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 153
    const-class v3, Landroid/os/ParcelUuid;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 153
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 155
    invoke-virtual {v0, v1, v3}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 159
    const-class v1, Landroid/os/ParcelUuid;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    new-array v3, v3, [B

    .line 164
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_3

    .line 166
    invoke-virtual {v0, v1, v3}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    new-array v4, v4, [B

    .line 170
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 171
    invoke-virtual {v0, v1, v3, v4}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    .line 177
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    new-array v2, v2, [B

    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_5

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setManufacturerData(I[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    goto :goto_1

    .line 185
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    new-array v3, v3, [B

    .line 187
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    .line 193
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->build()Lcom/polidea/rxandroidble2/scan/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/polidea/rxandroidble2/scan/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/polidea/rxandroidble2/scan/ScanFilter;
    .locals 0

    .line 137
    new-array p1, p1, [Lcom/polidea/rxandroidble2/scan/ScanFilter;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter$1;->newArray(I)[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    move-result-object p1

    return-object p1
.end method
