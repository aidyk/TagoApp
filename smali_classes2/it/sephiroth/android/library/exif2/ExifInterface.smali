.class public Lit/sephiroth/android/library/exif2/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/exif2/ExifInterface$Options;,
        Lit/sephiroth/android/library/exif2/ExifInterface$SensitivityType;,
        Lit/sephiroth/android/library/exif2/ExifInterface$JpegProcess;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsDifferential;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsTrackRef;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsSpeedRef;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsMeasureMode;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsStatus;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsAltitudeRef;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsLongitudeRef;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GpsLatitudeRef;,
        Lit/sephiroth/android/library/exif2/ExifInterface$SubjectDistance;,
        Lit/sephiroth/android/library/exif2/ExifInterface$Sharpness;,
        Lit/sephiroth/android/library/exif2/ExifInterface$Saturation;,
        Lit/sephiroth/android/library/exif2/ExifInterface$Contrast;,
        Lit/sephiroth/android/library/exif2/ExifInterface$GainControl;,
        Lit/sephiroth/android/library/exif2/ExifInterface$SceneType;,
        Lit/sephiroth/android/library/exif2/ExifInterface$FileSource;,
        Lit/sephiroth/android/library/exif2/ExifInterface$SensingMethod;,
        Lit/sephiroth/android/library/exif2/ExifInterface$LightSource;,
        Lit/sephiroth/android/library/exif2/ExifInterface$ComponentsConfiguration;,
        Lit/sephiroth/android/library/exif2/ExifInterface$SceneCapture;,
        Lit/sephiroth/android/library/exif2/ExifInterface$WhiteBalance;,
        Lit/sephiroth/android/library/exif2/ExifInterface$ExposureMode;,
        Lit/sephiroth/android/library/exif2/ExifInterface$ColorSpace;,
        Lit/sephiroth/android/library/exif2/ExifInterface$Flash;,
        Lit/sephiroth/android/library/exif2/ExifInterface$MeteringMode;,
        Lit/sephiroth/android/library/exif2/ExifInterface$ExposureProgram;,
        Lit/sephiroth/android/library/exif2/ExifInterface$PlanarConfiguration;,
        Lit/sephiroth/android/library/exif2/ExifInterface$PhotometricInterpretation;,
        Lit/sephiroth/android/library/exif2/ExifInterface$ResolutionUnit;,
        Lit/sephiroth/android/library/exif2/ExifInterface$Compression;,
        Lit/sephiroth/android/library/exif2/ExifInterface$YCbCrPositioning;,
        Lit/sephiroth/android/library/exif2/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_INTEROP_VERSION:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LENS_MAKE:I

.field public static final TAG_LENS_MODEL:I

.field public static final TAG_LENS_SPECS:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SENSITIVITY_TYPE:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field private static final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private static final mGPSDateStampFormat:Ljava/text/DateFormat;

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lit/sephiroth/android/library/exif2/ExifData;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 80
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v1, 0x101

    .line 81
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v1, 0x102

    .line 82
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v1, 0x103

    .line 93
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COMPRESSION:I

    const/16 v1, 0x106

    .line 94
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v1, 0x10e

    .line 95
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v1, 0x10f

    .line 102
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MAKE:I

    const/16 v1, 0x110

    .line 109
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MODEL:I

    const/16 v1, 0x111

    .line 110
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v1, 0x112

    .line 128
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ORIENTATION:I

    const/16 v1, 0x115

    .line 129
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v1, 0x116

    .line 130
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v1, 0x117

    .line 131
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 133
    invoke-static {v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROP_VERSION:I

    const/16 v3, 0x11a

    .line 140
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v3, 0x11b

    .line 145
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v3, 0x11c

    .line 146
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v3, 0x128

    .line 159
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v3, 0x12d

    .line 160
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v3, 0x131

    .line 166
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SOFTWARE:I

    const/16 v3, 0x132

    .line 173
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME:I

    const/16 v3, 0x13b

    .line 181
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ARTIST:I

    const/16 v3, 0x13e

    .line 182
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v3, 0x13f

    .line 183
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v3, 0x211

    .line 184
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v3, 0x212

    .line 185
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v3, 0x213

    .line 186
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v3, 0x214

    .line 187
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v3, -0x7d68

    .line 193
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v3, -0x7897

    .line 194
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v3, -0x77db

    .line 195
    invoke-static {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    const/4 v3, 0x1

    const/16 v4, 0x201

    .line 197
    invoke-static {v3, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v4, 0x202

    .line 198
    invoke-static {v3, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/16 v4, -0x7d66

    .line 205
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v4, -0x7d63

    .line 213
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_F_NUMBER:I

    const/16 v4, -0x77de

    .line 229
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v4, -0x77dc

    .line 230
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v4, -0x77d9

    .line 237
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v4, -0x77d8

    .line 238
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_OECF:I

    const/16 v4, -0x7000

    .line 245
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v4, -0x6ffd

    .line 251
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v4, -0x6ffc

    .line 257
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v4, -0x6eff

    .line 258
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v4, -0x6efe

    .line 259
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v4, -0x6dff

    .line 266
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v4, -0x6dfe

    .line 281
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v4, -0x6dfd

    .line 287
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v4, -0x6dfc

    .line 293
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v4, -0x6dfb

    .line 304
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v4, -0x6dfa

    .line 310
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v4, -0x6df9

    .line 327
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_METERING_MODE:I

    const/16 v4, -0x6df8

    .line 357
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v4, -0x6df7

    .line 400
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FLASH:I

    const/16 v4, -0x6df6

    .line 406
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v4, -0x6dec

    .line 407
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v4, -0x6d84

    .line 408
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v4, -0x6d7a

    .line 409
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v4, -0x6d70

    .line 410
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v4, -0x6d6f

    .line 411
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v4, -0x6d6e

    .line 412
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v4, -0x6000

    .line 413
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v4, -0x5fff

    .line 426
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v4, -0x5ffe

    .line 434
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v4, -0x5ffd

    .line 439
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v4, -0x5ffc

    .line 440
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v4, -0x5ffb

    .line 441
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v4, -0x5df5

    .line 442
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v4, -0x5df4

    .line 443
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v4, -0x5df2

    .line 452
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v4, -0x5df1

    .line 457
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v4, -0x5df0

    .line 476
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v4, -0x5dec

    .line 477
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v4, -0x5deb

    .line 478
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v4, -0x5de9

    .line 494
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v4, -0x5d00

    .line 495
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v4, -0x5cff

    .line 496
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v4, -0x5cfe

    .line 497
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v4, -0x5bff

    .line 498
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v4, -0x5bfe

    .line 511
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v4, -0x5bfd

    .line 512
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v4, -0x5bfc

    .line 519
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v4, -0x5bfb

    .line 531
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v4, -0x5bfa

    .line 545
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v4, -0x5bf9

    .line 559
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v4, -0x5bf8

    .line 571
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_CONTRAST:I

    const/16 v4, -0x5bf7

    .line 583
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SATURATION:I

    const/16 v4, -0x5bf6

    .line 595
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SHARPNESS:I

    const/16 v4, -0x5bf5

    .line 596
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v4, -0x5bf4

    .line 609
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v4, -0x5be0

    .line 614
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/16 v4, -0x5bce

    .line 629
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_SPECS:I

    const/16 v4, -0x5bcd

    .line 636
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_MAKE:I

    const/16 v4, -0x5bcc

    .line 642
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_MODEL:I

    const/16 v4, -0x77d0

    .line 667
    invoke-static {v2, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SENSITIVITY_TYPE:I

    const/4 v4, 0x4

    .line 671
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 677
    invoke-static {v4, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 686
    invoke-static {v4, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 692
    invoke-static {v4, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 701
    invoke-static {v4, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v0, 0x5

    .line 709
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v0, 0x6

    .line 715
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v0, 0x7

    .line 716
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v0, 0x8

    .line 717
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v0, 0x9

    .line 718
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v0, 0xa

    .line 719
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v0, 0xb

    .line 720
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DOP:I

    const/16 v0, 0xc

    .line 726
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v0, 0xd

    .line 732
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v0, 0xe

    .line 733
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v0, 0xf

    .line 734
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v0, 0x10

    .line 735
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v0, 0x11

    .line 736
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v0, 0x12

    .line 737
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v0, 0x13

    .line 738
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v0, 0x14

    .line 739
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v0, 0x15

    .line 740
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v0, 0x16

    .line 741
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v0, 0x17

    .line 742
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v0, 0x18

    .line 743
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v0, 0x19

    .line 744
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v0, 0x1a

    .line 745
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v0, 0x1b

    .line 746
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v0, 0x1c

    .line 747
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v0, 0x1d

    .line 748
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v0, 0x1e

    .line 749
    invoke-static {v4, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 751
    invoke-static {v1, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 756
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 761
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 763
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 769
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 772
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 782
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 785
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifData;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    const-string v0, "UTC"

    .line 790
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 791
    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 794
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 991
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static convertLatOrLongToDouble([Lit/sephiroth/android/library/exif2/Rational;Ljava/lang/String;)D
    .locals 8

    const/4 v0, 0x0

    .line 900
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 901
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 902
    aget-object p0, p0, v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    const-string p0, "S"

    .line 904
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    neg-double p0, v0

    return-wide p0

    .line 909
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static convertRationalLatLonToString([Lit/sephiroth/android/library/exif2/Rational;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 2162
    :try_start_0
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 2163
    aget-object v4, p0, v3

    invoke-virtual {v4}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v4

    const/4 v6, 0x2

    .line 2164
    aget-object p0, p0, v6

    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v7

    .line 2165
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%1$.0f\u00b0 %2$.0f\' %3$.0f\" %4$s"

    const/4 v9, 0x4

    .line 2167
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v0

    invoke-static {p1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2171
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2169
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 6

    .line 914
    invoke-static {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    .line 915
    invoke-static {}, Lit/sephiroth/android/library/exif2/IfdData;->getIfds()[I

    move-result-object v0

    .line 916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    shr-int v4, p0, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 920
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 926
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 928
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 929
    aput v1, p0, v2

    move v2, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static getDateTime(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2187
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2191
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2195
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2193
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1444
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 1448
    :cond_0
    invoke-static {}, Lit/sephiroth/android/library/exif2/IfdData;->getIfds()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 1450
    array-length v4, p0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 1451
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1

    .line 818
    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0

    :cond_3
    return v1
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 1303
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 1304
    invoke-static {v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 1305
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v2, v5

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v7, 0x40000

    or-int v8, v2, v7

    or-int/lit8 v9, v8, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v10, 0x30000

    or-int v11, v2, v10

    or-int/lit8 v12, v11, 0x3

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COMPRESSION:I

    or-int/lit8 v12, v11, 0x1

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int/lit8 v13, v11, 0x2

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v13, 0x50000

    or-int/2addr v2, v13

    or-int/lit8 v14, v2, 0x1

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int/lit16 v8, v11, 0x300

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_WHITE_POINT:I

    or-int/lit8 v8, v2, 0x2

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int/lit8 v8, v2, 0x6

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/4 v11, 0x3

    or-int/2addr v2, v11

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME:I

    or-int/lit8 v4, v6, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x1

    .line 1336
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 1337
    invoke-static {v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 1338
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v3, v7

    or-int/2addr v3, v2

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1341
    new-array v3, v2, [I

    aput v1, v3, v4

    .line 1342
    invoke-static {v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 1343
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v9, 0x70000

    or-int v12, v3, v9

    or-int/lit8 v14, v12, 0x4

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v15, v3, v10

    or-int/lit8 v10, v15, 0x1

    invoke-virtual {v6, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v14, v3, v13

    or-int/2addr v14, v2

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v7, v3

    or-int/2addr v7, v2

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MAKER_NOTE:I

    invoke-virtual {v6, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v6, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v9, v3, v5

    or-int/lit8 v13, v9, 0xd

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int/lit8 v13, v9, 0x14

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1358
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int/lit8 v13, v9, 0x21

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_SPECS:I

    const/high16 v13, 0xa0000

    or-int/2addr v3, v13

    or-int/lit8 v11, v3, 0x3

    invoke-virtual {v6, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1360
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_MAKE:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_MODEL:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SENSITIVITY_TYPE:I

    invoke-virtual {v6, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1363
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1364
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v6, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v6, v8, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_OECF:I

    invoke-virtual {v6, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    or-int/2addr v3, v2

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v6, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1373
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v3, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1374
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v3, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1377
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v3, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v3, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v3, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v3, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v3, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1383
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v3, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1384
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1385
    iget-object v3, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int/2addr v1, v15

    invoke-virtual {v3, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1387
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1388
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FILE_SOURCE:I

    or-int/lit8 v6, v12, 0x1

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v3, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1392
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1398
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v3, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1403
    iget-object v1, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    new-array v1, v2, [I

    const/4 v3, 0x4

    aput v3, v1, v4

    .line 1406
    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 1407
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v8, 0x10000

    or-int/2addr v8, v1

    or-int/lit8 v9, v8, 0x4

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    or-int v9, v1, v5

    or-int/lit8 v10, v9, 0x2

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v11, v1, v13

    const/4 v12, 0x3

    or-int/2addr v11, v12

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v8, 0x50000

    or-int/2addr v8, v1

    or-int/lit8 v11, v8, 0x1

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v12, 0x3

    or-int/2addr v8, v12

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_SATTELLITES:I

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1417
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1418
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1419
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1420
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1421
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1422
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1423
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1424
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1425
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1426
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1427
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1428
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1429
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1430
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1431
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v6, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1432
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v8, 0x70000

    or-int v10, v1, v8

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1434
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int/lit8 v8, v9, 0xb

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1435
    iget-object v6, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v8, 0x30000

    or-int/2addr v1, v8

    or-int/lit8 v1, v1, 0xb

    invoke-virtual {v6, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1437
    new-array v1, v2, [I

    const/4 v2, 0x3

    aput v2, v1, v4

    .line 1438
    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 1439
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    or-int/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1440
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROP_VERSION:I

    const/high16 v5, 0x70000

    or-int/2addr v1, v5

    or-int/2addr v1, v3

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    .line 2267
    invoke-static {}, Lit/sephiroth/android/library/exif2/IfdData;->getIfds()[I

    move-result-object v0

    .line 2268
    invoke-static {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2269
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2270
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 1

    .line 809
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toBitArray(S)[B
    .locals 5

    const/16 v0, 0x10

    .line 2482
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0xf

    shr-int v4, p0, v2

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    .line 2484
    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static toExifLatLong(D)[Lit/sephiroth/android/library/exif2/Rational;
    .locals 7

    .line 2306
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    .line 2308
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    .line 2310
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double p0, p0, v2

    double-to-int p0, p0

    const/4 p1, 0x3

    .line 2312
    new-array p1, p1, [Lit/sephiroth/android/library/exif2/Rational;

    new-instance v2, Lit/sephiroth/android/library/exif2/Rational;

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    const/4 v0, 0x0

    aput-object v2, p1, v0

    new-instance v0, Lit/sephiroth/android/library/exif2/Rational;

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v5, v6}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lit/sephiroth/android/library/exif2/Rational;

    int-to-long v1, p0

    const-wide/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    const/4 p0, 0x2

    aput-object v0, p1, p0

    return-object p1
.end method

.method private static writeExif_internal(Ljava/io/InputStream;Ljava/io/OutputStream;Lit/sephiroth/android/library/exif2/ExifData;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1140
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface;

    invoke-direct {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;-><init>()V

    const/4 v1, 0x0

    .line 1141
    invoke-virtual {v0, p0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->readExif(Ljava/io/InputStream;I)V

    const/16 p0, 0xff

    .line 1145
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xd8

    .line 1146
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1148
    iget-object v2, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifData;->getSections()Ljava/util/List;

    move-result-object v2

    .line 1151
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/sephiroth/android/library/exif2/ExifParser$Section;

    iget v3, v3, Lit/sephiroth/android/library/exif2/ExifParser$Section;->type:I

    const/16 v4, 0xe0

    if-eq v3, v4, :cond_0

    const-string v3, "ExifInterface"

    const-string v4, "first section is not a JFIF or EXIF tag"

    .line 1152
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    sget-object v3, Lit/sephiroth/android/library/exif2/JpegHeader;->JFIF_HEADER:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1157
    :cond_0
    new-instance v3, Lit/sephiroth/android/library/exif2/ExifOutputStream;

    invoke-direct {v3, v0}, Lit/sephiroth/android/library/exif2/ExifOutputStream;-><init>(Lit/sephiroth/android/library/exif2/ExifInterface;)V

    .line 1158
    invoke-virtual {v3, p2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->setExifData(Lit/sephiroth/android/library/exif2/ExifData;)V

    .line 1159
    invoke-virtual {v3, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeExifData(Ljava/io/OutputStream;)V

    .line 1162
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge v1, p2, :cond_1

    .line 1163
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lit/sephiroth/android/library/exif2/ExifParser$Section;

    .line 1165
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 1166
    iget v3, p2, Lit/sephiroth/android/library/exif2/ExifParser$Section;->type:I

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 1167
    iget-object p2, p2, Lit/sephiroth/android/library/exif2/ExifParser$Section;->data:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lit/sephiroth/android/library/exif2/ExifParser$Section;

    .line 1173
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 1174
    iget p0, p2, Lit/sephiroth/android/library/exif2/ExifParser$Section;->type:I

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 1175
    iget-object p0, p2, Lit/sephiroth/android/library/exif2/ExifParser$Section;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 1178
    iget-object p0, v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    iget p0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mUncompressedDataPosition:I

    return p0
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 2

    .line 2211
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2212
    :cond_1
    :goto_0
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2213
    sget-object p4, Lit/sephiroth/android/library/exif2/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 2217
    :cond_2
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    const/4 p1, 0x1

    return p1
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 8

    .line 2323
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_DATE_STAMP:I

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2327
    :cond_0
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 2328
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2329
    sget p1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 p2, 0x3

    new-array p2, p2, [Lit/sephiroth/android/library/exif2/Rational;

    new-instance v0, Lit/sephiroth/android/library/exif2/Rational;

    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    aput-object v0, p2, v1

    new-instance v0, Lit/sephiroth/android/library/exif2/Rational;

    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    new-instance v3, Lit/sephiroth/android/library/exif2/Rational;

    iget-object v6, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v6, v7, v4, v5}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    aput-object v3, p2, v0

    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 2336
    :cond_1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    return v2
.end method

.method public addGpsTags(DD)Z
    .locals 6

    .line 2290
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->toExifLatLong(D)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    .line 2291
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lit/sephiroth/android/library/exif2/ExifInterface;->toExifLatLong(D)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v1

    .line 2292
    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    const-string p1, "N"

    goto :goto_0

    :cond_0
    const-string p1, "S"

    :goto_0
    invoke-virtual {p0, v2, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    .line 2293
    sget p2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v2, p3, v3

    if-ltz v2, :cond_1

    const-string p3, "E"

    goto :goto_1

    :cond_1
    const-string p3, "W"

    :goto_1
    invoke-virtual {p0, p2, p3}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 2297
    :cond_2
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 2298
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 2299
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 2300
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public buildTag(IILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 8

    .line 2249
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 2253
    :cond_0
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTypeFromInfo(I)S

    move-result v4

    .line 2254
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 2256
    :goto_0
    invoke-static {v0, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 2259
    :cond_2
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lit/sephiroth/android/library/exif2/ExifTag;-><init>(SSIIZ)V

    .line 2260
    invoke-virtual {v0, p3}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public buildTag(ILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    .line 2233
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 2234
    invoke-virtual {p0, p1, v0, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildTag(IILjava/lang/Object;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method protected buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 7

    .line 1736
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1740
    :cond_0
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1741
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1743
    :goto_0
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1744
    new-instance v6, Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/exif2/ExifTag;-><init>(SSIIZ)V

    return-object v6
.end method

.method public clearExif()V
    .locals 2

    .line 1013
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifData;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    .line 1784
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1785
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .locals 1

    .line 1795
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifData;->removeTag(SI)V

    return-void
.end method

.method public getActualTagCount(II)I
    .locals 0

    .line 1708
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1712
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result p1

    return p1
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude(D)D
    .locals 3

    .line 2098
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagByteValue(I)Ljava/lang/Byte;

    move-result-object v0

    .line 2099
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_ALTITUDE:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValue(I)Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    const/4 v2, -0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 2107
    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide p1

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    return-wide p1

    :cond_1
    return-wide p1
.end method

.method public getApertureSize()D
    .locals 6

    .line 2344
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValue(I)Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v3

    cmpl-double v5, v3, v1

    if-lez v5, :cond_0

    .line 2346
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v0

    return-wide v0

    .line 2349
    :cond_0
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValue(I)Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2350
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v3

    cmpl-double v5, v3, v1

    if-lez v5, :cond_1

    .line 2351
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public getDefinedTagCount(I)I
    .locals 1

    .line 1690
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1694
    :cond_0
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p1

    return p1
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1257
    :cond_0
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueIfd(I)I

    move-result p1

    return p1
.end method

.method public getDefinedTagType(I)S
    .locals 1

    .line 1724
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1728
    :cond_0
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTypeFromInfo(I)S

    move-result p1

    return p1
.end method

.method public getImageSize()[I
    .locals 1

    .line 2020
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getImageSize()[I

    move-result-object v0

    return-object v0
.end method

.method public getJpegProcess()S
    .locals 1

    .line 2013
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getJpegProcess()S

    move-result v0

    return v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 6

    .line 2122
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(I)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v0

    .line 2123
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 2124
    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(I)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v2

    .line 2125
    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 2126
    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    array-length v4, v2

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    .line 2129
    new-array v4, v4, [D

    const/4 v5, 0x0

    .line 2130
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->convertLatOrLongToDouble([Lit/sephiroth/android/library/exif2/Rational;Ljava/lang/String;)D

    move-result-wide v0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    .line 2131
    invoke-static {v2, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->convertLatOrLongToDouble([Lit/sephiroth/android/library/exif2/Rational;Ljava/lang/String;)D

    move-result-wide v1

    aput-wide v1, v4, v0

    return-object v4

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 2

    .line 2140
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(I)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v0

    .line 2141
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2144
    :cond_0
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->convertRationalLatLonToString([Lit/sephiroth/android/library/exif2/Rational;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLensModelDescription()Ljava/lang/String;
    .locals 1

    .line 2363
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_MODEL:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2366
    :cond_0
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_LENS_SPECS:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(I)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2367
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifUtil;->processLensSpecifications([Lit/sephiroth/android/library/exif2/Rational;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 2

    .line 2152
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(I)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v0

    .line 2153
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2156
    :cond_0
    invoke-static {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->convertRationalLatLonToString([Lit/sephiroth/android/library/exif2/Rational;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQualityGuess()I
    .locals 1

    .line 1989
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getQualityGuess()I

    move-result v0

    return v0
.end method

.method public getResolutionUnit(I)D
    .locals 2

    const-wide v0, 0x4039666666666666L    # 25.4

    packed-switch p1, :pswitch_data_0

    return-wide v0

    :pswitch_0
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    return-wide v0

    :pswitch_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :pswitch_2
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    return-wide v0

    :pswitch_3
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTag(I)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    .line 1241
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1242
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    .line 1266
    invoke-static {p2}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1269
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifData;->getTag(SI)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 1

    .line 1568
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1569
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 1

    .line 1576
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagByteValues(II)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1577
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    new-instance p2, Ljava/lang/Byte;

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagByteValues(I)[B
    .locals 1

    .line 1652
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1653
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagByteValues(II)[B

    move-result-object p1

    return-object p1
.end method

.method public getTagByteValues(II)[B
    .locals 0

    .line 1587
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1591
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAsBytes()[B

    move-result-object p1

    return-object p1
.end method

.method protected getTagDefinition(SI)I
    .locals 1

    .line 1858
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method protected getTagDefinitionForTag(Lit/sephiroth/android/library/exif2/ExifTag;)I
    .locals 3

    .line 1888
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v0

    .line 1889
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v1

    .line 1890
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v2

    .line 1891
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getTagId()S

    move-result p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result p1

    return p1
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 14

    .line 1895
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1899
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1901
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget v6, v0, v5

    .line 1902
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1903
    invoke-static {v7}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTypeFromInfo(I)S

    move-result v8

    .line 1904
    invoke-static {v7}, Lit/sephiroth/android/library/exif2/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v9

    .line 1905
    invoke-static {v7}, Lit/sephiroth/android/library/exif2/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v7

    .line 1907
    array-length v10, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    aget v12, v7, v11

    move/from16 v13, p4

    if-ne v12, v13, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move/from16 v13, p4

    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    move/from16 v7, p2

    if-ne v7, v8, :cond_5

    move/from16 v8, p3

    if-eq v8, v9, :cond_3

    if-nez v9, :cond_6

    :cond_3
    move v1, v6

    goto :goto_3

    :cond_4
    move/from16 v7, p2

    :cond_5
    move/from16 v8, p3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 9

    .line 1869
    invoke-static {}, Lit/sephiroth/android/library/exif2/IfdData;->getIfds()[I

    move-result-object v0

    .line 1870
    array-length v1, v0

    new-array v1, v1, [I

    .line 1872
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1873
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v7, v0, v5

    .line 1874
    invoke-static {v7, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v7

    .line 1875
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v6, 0x1

    .line 1876
    aput v7, v1, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1883
    :cond_2
    invoke-static {v1, v4, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    return-object p1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 1273
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 1274
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1275
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->initTagInfo()V

    .line 1277
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .line 1538
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1539
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 1

    .line 1546
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagIntValues(II)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1547
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1550
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagIntValues(I)[I
    .locals 1

    .line 1643
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1644
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagIntValues(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getTagIntValues(II)[I
    .locals 0

    .line 1557
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1561
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAsInts()[I

    move-result-object p1

    return-object p1
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 1

    .line 1508
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1509
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 2

    .line 1516
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagLongValues(II)[J

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1517
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1520
    :cond_0
    new-instance p2, Ljava/lang/Long;

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagLongValues(I)[J
    .locals 1

    .line 1634
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1635
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagLongValues(II)[J

    move-result-object p1

    return-object p1
.end method

.method public getTagLongValues(II)[J
    .locals 0

    .line 1527
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1531
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAsLongs()[J

    move-result-object p1

    return-object p1
.end method

.method public getTagRationalValue(I)Lit/sephiroth/android/library/exif2/Rational;
    .locals 1

    .line 1598
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1599
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValue(II)Lit/sephiroth/android/library/exif2/Rational;

    move-result-object p1

    return-object p1
.end method

.method public getTagRationalValue(II)Lit/sephiroth/android/library/exif2/Rational;
    .locals 1

    .line 1606
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(II)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1607
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1610
    :cond_0
    new-instance p2, Lit/sephiroth/android/library/exif2/Rational;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Lit/sephiroth/android/library/exif2/Rational;-><init>(Lit/sephiroth/android/library/exif2/Rational;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagRationalValues(I)[Lit/sephiroth/android/library/exif2/Rational;
    .locals 1

    .line 1660
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1661
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagRationalValues(II)[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object p1

    return-object p1
.end method

.method public getTagRationalValues(II)[Lit/sephiroth/android/library/exif2/Rational;
    .locals 0

    .line 1622
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1626
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAsRationals()[Lit/sephiroth/android/library/exif2/Rational;

    move-result-object p1

    return-object p1
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1499
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1500
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 0

    .line 1488
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1492
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 1

    .line 1470
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1471
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 0

    .line 1480
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1481
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/exif2/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/exif2/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnail()[B
    .locals 1

    .line 1979
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1945
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1947
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1949
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasUncompressedStrip()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1964
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0

    .line 1967
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasUncompressedStrip()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .line 2086
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 2040
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 1

    .line 1672
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1674
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .line 2030
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 981
    :try_start_0
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifReader;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/exif2/ExifReader;-><init>(Lit/sephiroth/android/library/exif2/ExifInterface;)V

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifReader;->read(Ljava/io/InputStream;I)Lit/sephiroth/android/library/exif2/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lit/sephiroth/android/library/exif2/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    return-void

    :catch_0
    move-exception p1

    .line 983
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exif format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 977
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readExif(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 950
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 951
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->readExif(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 956
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 953
    :goto_0
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 954
    throw p1

    .line 946
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readExif([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->readExif(Ljava/io/InputStream;I)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .line 2077
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1

    .line 1928
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    const/4 v0, 0x0

    .line 1936
    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 2052
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2053
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2056
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->setCompressedThumbnail([B)Z

    move-result p1

    return p1
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 2067
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->clearThumbnailAndStrips()V

    .line 2068
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/exif2/ExifData;->setCompressedThumbnail([B)V

    const/4 p1, 0x1

    return p1
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->clearExif()V

    .line 1006
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    .line 1040
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/exif2/ExifData;->addTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public setTagDefinition(SISS[I)I
    .locals 8

    .line 1815
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 1818
    :cond_0
    invoke-static {p3}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidType(S)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1819
    invoke-static {p2, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 1823
    :cond_1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object p1

    .line 1824
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1827
    array-length v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget v7, p5, v5

    if-ne p2, v7, :cond_2

    const/4 v6, 0x1

    .line 1831
    :cond_2
    invoke-static {v7}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidIfd(I)Z

    move-result v7

    if-nez v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    return v1

    .line 1839
    :cond_5
    invoke-static {p5}, Lit/sephiroth/android/library/exif2/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result p2

    if-eqz p1, :cond_7

    .line 1842
    array-length p5, p1

    :goto_1
    if-ge v4, p5, :cond_7

    aget v3, p1, v4

    .line 1843
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1844
    invoke-static {v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1850
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p1

    shl-int/lit8 p2, p2, 0x18

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    or-int/2addr p2, p4

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return v0

    :cond_8
    return v1
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 0

    .line 1774
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(II)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1775
    invoke-virtual {p1, p3}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 1

    .line 1758
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1759
    invoke-virtual {p0, p1, v0, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1025
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/exif2/ExifTag;

    .line 1026
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeExif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1128
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1130
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1133
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeExif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1111
    iget-object p2, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-static {p1, v0, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->writeExif_internal(Ljava/io/InputStream;Ljava/io/OutputStream;Lit/sephiroth/android/library/exif2/ExifData;)I

    .line 1114
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1116
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 1117
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public writeExif(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeExif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1064
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->writeExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1070
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeExif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1088
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1089
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1091
    iget-object p2, p0, Lit/sephiroth/android/library/exif2/ExifInterface;->mData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-static {v0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->writeExif_internal(Ljava/io/InputStream;Ljava/io/OutputStream;Lit/sephiroth/android/library/exif2/ExifData;)I

    move-result p2

    .line 1094
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1095
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    int-to-long v2, p2

    .line 1096
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 1097
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 1099
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1100
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-void
.end method
