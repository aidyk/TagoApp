.class final Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_liber8tech_tago_model_TagoDeviceRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TagoDeviceColumnInfo"
.end annotation


# instance fields
.field colorIndex:J

.field identifierIndex:J

.field lowBatteryIndex:J

.field nameIndex:J

.field sizeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 56
    invoke-virtual {p0, p1, p0}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x5

    .line 45
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "TagoDevice"

    .line 46
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "identifier"

    const-string v1, "identifier"

    .line 47
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    const-string v0, "color"

    const-string v1, "color"

    .line 48
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    const-string v0, "size"

    const-string v1, "size"

    .line 49
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    const-string v0, "name"

    const-string v1, "name"

    .line 50
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    const-string v0, "lowBattery"

    const-string v1, "lowBattery"

    .line 51
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 61
    new-instance v0, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 66
    check-cast p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 67
    check-cast p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;

    .line 68
    iget-wide v0, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    iput-wide v0, p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->identifierIndex:J

    .line 69
    iget-wide v0, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    iput-wide v0, p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->colorIndex:J

    .line 70
    iget-wide v0, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    iput-wide v0, p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->sizeIndex:J

    .line 71
    iget-wide v0, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->nameIndex:J

    .line 72
    iget-wide v0, p1, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    iput-wide v0, p2, Lio/realm/com_liber8tech_tago_model_TagoDeviceRealmProxy$TagoDeviceColumnInfo;->lowBatteryIndex:J

    return-void
.end method
