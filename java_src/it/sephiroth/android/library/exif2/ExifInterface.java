package it.sephiroth.android.library.exif2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.SparseIntArray;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import it.sephiroth.android.library.exif2.ExifParser;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.io.IOUtils;

public class ExifInterface {
    private static final String DATETIME_FORMAT_STR = "yyyy:MM:dd kk:mm:ss";
    public static final ByteOrder DEFAULT_BYTE_ORDER = ByteOrder.BIG_ENDIAN;
    public static final int DEFINITION_NULL = 0;
    private static final String GPS_DATE_FORMAT_STR = "yyyy:MM:dd";
    public static final int IFD_NULL = -1;
    private static final String NULL_ARGUMENT_STRING = "Argument is null";
    private static final String TAG = "ExifInterface";
    public static final int TAG_APERTURE_VALUE = defineTag(2, -28158);
    public static final int TAG_ARTIST = defineTag(0, 315);
    public static final int TAG_BITS_PER_SAMPLE = defineTag(0, 258);
    public static final int TAG_BRIGHTNESS_VALUE = defineTag(2, -28157);
    public static final int TAG_CFA_PATTERN = defineTag(2, -23806);
    public static final int TAG_COLOR_SPACE = defineTag(2, -24575);
    public static final int TAG_COMPONENTS_CONFIGURATION = defineTag(2, -28415);
    public static final int TAG_COMPRESSED_BITS_PER_PIXEL = defineTag(2, -28414);
    public static final int TAG_COMPRESSION = defineTag(0, 259);
    public static final int TAG_CONTRAST = defineTag(2, -23544);
    public static final int TAG_COPYRIGHT = defineTag(0, -32104);
    public static final int TAG_CUSTOM_RENDERED = defineTag(2, -23551);
    public static final int TAG_DATE_TIME = defineTag(0, 306);
    public static final int TAG_DATE_TIME_DIGITIZED = defineTag(2, -28668);
    public static final int TAG_DATE_TIME_ORIGINAL = defineTag(2, -28669);
    public static final int TAG_DEVICE_SETTING_DESCRIPTION = defineTag(2, -23541);
    public static final int TAG_DIGITAL_ZOOM_RATIO = defineTag(2, -23548);
    public static final int TAG_EXIF_IFD = defineTag(0, -30871);
    public static final int TAG_EXIF_VERSION = defineTag(2, -28672);
    public static final int TAG_EXPOSURE_BIAS_VALUE = defineTag(2, -28156);
    public static final int TAG_EXPOSURE_INDEX = defineTag(2, -24043);
    public static final int TAG_EXPOSURE_MODE = defineTag(2, -23550);
    public static final int TAG_EXPOSURE_PROGRAM = defineTag(2, -30686);
    public static final int TAG_EXPOSURE_TIME = defineTag(2, -32102);
    public static final int TAG_FILE_SOURCE = defineTag(2, -23808);
    public static final int TAG_FLASH = defineTag(2, -28151);
    public static final int TAG_FLASHPIX_VERSION = defineTag(2, -24576);
    public static final int TAG_FLASH_ENERGY = defineTag(2, -24053);
    public static final int TAG_FOCAL_LENGTH = defineTag(2, -28150);
    public static final int TAG_FOCAL_LENGTH_IN_35_MM_FILE = defineTag(2, -23547);
    public static final int TAG_FOCAL_PLANE_RESOLUTION_UNIT = defineTag(2, -24048);
    public static final int TAG_FOCAL_PLANE_X_RESOLUTION = defineTag(2, -24050);
    public static final int TAG_FOCAL_PLANE_Y_RESOLUTION = defineTag(2, -24049);
    public static final int TAG_F_NUMBER = defineTag(2, -32099);
    public static final int TAG_GAIN_CONTROL = defineTag(2, -23545);
    public static final int TAG_GPS_ALTITUDE = defineTag(4, 6);
    public static final int TAG_GPS_ALTITUDE_REF = defineTag(4, 5);
    public static final int TAG_GPS_AREA_INFORMATION = defineTag(4, 28);
    public static final int TAG_GPS_DATE_STAMP = defineTag(4, 29);
    public static final int TAG_GPS_DEST_BEARING = defineTag(4, 24);
    public static final int TAG_GPS_DEST_BEARING_REF = defineTag(4, 23);
    public static final int TAG_GPS_DEST_DISTANCE = defineTag(4, 26);
    public static final int TAG_GPS_DEST_DISTANCE_REF = defineTag(4, 25);
    public static final int TAG_GPS_DEST_LATITUDE = defineTag(4, 20);
    public static final int TAG_GPS_DEST_LATITUDE_REF = defineTag(4, 19);
    public static final int TAG_GPS_DEST_LONGITUDE = defineTag(4, 22);
    public static final int TAG_GPS_DEST_LONGITUDE_REF = defineTag(4, 21);
    public static final int TAG_GPS_DIFFERENTIAL = defineTag(4, 30);
    public static final int TAG_GPS_DOP = defineTag(4, 11);
    public static final int TAG_GPS_IFD = defineTag(0, -30683);
    public static final int TAG_GPS_IMG_DIRECTION = defineTag(4, 17);
    public static final int TAG_GPS_IMG_DIRECTION_REF = defineTag(4, 16);
    public static final int TAG_GPS_LATITUDE = defineTag(4, 2);
    public static final int TAG_GPS_LATITUDE_REF = defineTag(4, 1);
    public static final int TAG_GPS_LONGITUDE = defineTag(4, 4);
    public static final int TAG_GPS_LONGITUDE_REF = defineTag(4, 3);
    public static final int TAG_GPS_MAP_DATUM = defineTag(4, 18);
    public static final int TAG_GPS_MEASURE_MODE = defineTag(4, 10);
    public static final int TAG_GPS_PROCESSING_METHOD = defineTag(4, 27);
    public static final int TAG_GPS_SATTELLITES = defineTag(4, 8);
    public static final int TAG_GPS_SPEED = defineTag(4, 13);
    public static final int TAG_GPS_SPEED_REF = defineTag(4, 12);
    public static final int TAG_GPS_STATUS = defineTag(4, 9);
    public static final int TAG_GPS_TIME_STAMP = defineTag(4, 7);
    public static final int TAG_GPS_TRACK = defineTag(4, 15);
    public static final int TAG_GPS_TRACK_REF = defineTag(4, 14);
    public static final int TAG_GPS_VERSION_ID = defineTag(4, 0);
    public static final int TAG_IMAGE_DESCRIPTION = defineTag(0, 270);
    public static final int TAG_IMAGE_LENGTH = defineTag(0, 257);
    public static final int TAG_IMAGE_UNIQUE_ID = defineTag(2, -23520);
    public static final int TAG_IMAGE_WIDTH = defineTag(0, 256);
    public static final int TAG_INTEROPERABILITY_IFD = defineTag(2, -24571);
    public static final int TAG_INTEROPERABILITY_INDEX = defineTag(3, 1);
    public static final int TAG_INTEROP_VERSION = defineTag(3, 2);
    public static final int TAG_ISO_SPEED_RATINGS = defineTag(2, -30681);
    public static final int TAG_JPEG_INTERCHANGE_FORMAT = defineTag(1, 513);
    public static final int TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = defineTag(1, 514);
    public static final int TAG_LENS_MAKE = defineTag(2, -23501);
    public static final int TAG_LENS_MODEL = defineTag(2, -23500);
    public static final int TAG_LENS_SPECS = defineTag(2, -23502);
    public static final int TAG_LIGHT_SOURCE = defineTag(2, -28152);
    public static final int TAG_MAKE = defineTag(0, 271);
    public static final int TAG_MAKER_NOTE = defineTag(2, -28036);
    public static final int TAG_MAX_APERTURE_VALUE = defineTag(2, -28155);
    public static final int TAG_METERING_MODE = defineTag(2, -28153);
    public static final int TAG_MODEL = defineTag(0, 272);
    public static final int TAG_NULL = -1;
    public static final int TAG_OECF = defineTag(2, -30680);
    public static final int TAG_ORIENTATION = defineTag(0, 274);
    public static final int TAG_PHOTOMETRIC_INTERPRETATION = defineTag(0, 262);
    public static final int TAG_PIXEL_X_DIMENSION = defineTag(2, -24574);
    public static final int TAG_PIXEL_Y_DIMENSION = defineTag(2, -24573);
    public static final int TAG_PLANAR_CONFIGURATION = defineTag(0, 284);
    public static final int TAG_PRIMARY_CHROMATICITIES = defineTag(0, 319);
    public static final int TAG_REFERENCE_BLACK_WHITE = defineTag(0, 532);
    public static final int TAG_RELATED_SOUND_FILE = defineTag(2, -24572);
    public static final int TAG_RESOLUTION_UNIT = defineTag(0, 296);
    public static final int TAG_ROWS_PER_STRIP = defineTag(0, 278);
    public static final int TAG_SAMPLES_PER_PIXEL = defineTag(0, 277);
    public static final int TAG_SATURATION = defineTag(2, -23543);
    public static final int TAG_SCENE_CAPTURE_TYPE = defineTag(2, -23546);
    public static final int TAG_SCENE_TYPE = defineTag(2, -23807);
    public static final int TAG_SENSING_METHOD = defineTag(2, -24041);
    public static final int TAG_SENSITIVITY_TYPE = defineTag(2, -30672);
    public static final int TAG_SHARPNESS = defineTag(2, -23542);
    public static final int TAG_SHUTTER_SPEED_VALUE = defineTag(2, -28159);
    public static final int TAG_SOFTWARE = defineTag(0, 305);
    public static final int TAG_SPATIAL_FREQUENCY_RESPONSE = defineTag(2, -24052);
    public static final int TAG_SPECTRAL_SENSITIVITY = defineTag(2, -30684);
    public static final int TAG_STRIP_BYTE_COUNTS = defineTag(0, 279);
    public static final int TAG_STRIP_OFFSETS = defineTag(0, 273);
    public static final int TAG_SUBJECT_AREA = defineTag(2, -28140);
    public static final int TAG_SUBJECT_DISTANCE = defineTag(2, -28154);
    public static final int TAG_SUBJECT_DISTANCE_RANGE = defineTag(2, -23540);
    public static final int TAG_SUBJECT_LOCATION = defineTag(2, -24044);
    public static final int TAG_SUB_SEC_TIME = defineTag(2, -28016);
    public static final int TAG_SUB_SEC_TIME_DIGITIZED = defineTag(2, -28014);
    public static final int TAG_SUB_SEC_TIME_ORIGINAL = defineTag(2, -28015);
    public static final int TAG_TRANSFER_FUNCTION = defineTag(0, 301);
    public static final int TAG_USER_COMMENT = defineTag(2, -28026);
    public static final int TAG_WHITE_BALANCE = defineTag(2, -23549);
    public static final int TAG_WHITE_POINT = defineTag(0, 318);
    public static final int TAG_X_RESOLUTION = defineTag(0, 282);
    public static final int TAG_Y_CB_CR_COEFFICIENTS = defineTag(0, 529);
    public static final int TAG_Y_CB_CR_POSITIONING = defineTag(0, 531);
    public static final int TAG_Y_CB_CR_SUB_SAMPLING = defineTag(0, 530);
    public static final int TAG_Y_RESOLUTION = defineTag(0, 283);
    private static final DateFormat mDateTimeStampFormat = new SimpleDateFormat(DATETIME_FORMAT_STR);
    private static final DateFormat mGPSDateStampFormat = new SimpleDateFormat(GPS_DATE_FORMAT_STR);
    protected static HashSet<Short> sBannedDefines = new HashSet<>(sOffsetTags);
    private static HashSet<Short> sOffsetTags = new HashSet<>();
    private ExifData mData = new ExifData(DEFAULT_BYTE_ORDER);
    private final Calendar mGPSTimeStampCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    private SparseIntArray mTagInfo = null;

    public interface ColorSpace {
        public static final short SRGB = 1;
        public static final short UNCALIBRATED = -1;
    }

    public interface ComponentsConfiguration {
        public static final short B = 6;
        public static final short CB = 2;
        public static final short CR = 3;
        public static final short G = 5;
        public static final short NOT_EXIST = 0;
        public static final short R = 4;
        public static final short Y = 1;
    }

    public interface Compression {
        public static final short JPEG = 6;
        public static final short UNCOMPRESSION = 1;
    }

    public interface Contrast {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    public interface ExposureMode {
        public static final short AUTO_BRACKET = 2;
        public static final short AUTO_EXPOSURE = 0;
        public static final short MANUAL_EXPOSURE = 1;
    }

    public interface ExposureProgram {
        public static final short ACTION_PROGRAM = 6;
        public static final short APERTURE_PRIORITY = 3;
        public static final short CREATIVE_PROGRAM = 5;
        public static final short LANDSCAPE_MODE = 8;
        public static final short MANUAL = 1;
        public static final short NORMAL_PROGRAM = 2;
        public static final short NOT_DEFINED = 0;
        public static final short PROTRAIT_MODE = 7;
        public static final short SHUTTER_PRIORITY = 4;
    }

    public interface FileSource {
        public static final short DSC = 3;
    }

    public interface Flash {

        public enum CompulsoryMode {
            UNKNOWN,
            FIRING,
            SUPPRESSION,
            AUTO
        }

        public enum FlashFired {
            NO,
            YES
        }

        public enum FlashFunction {
            FUNCTION_PRESENT,
            FUNCTION_NOR_PRESENT
        }

        public enum RedEyeMode {
            NONE,
            SUPPORTED
        }

        public enum StrobeLightDetection {
            NO_DETECTION,
            RESERVED,
            LIGHT_NOT_DETECTED,
            LIGHT_DETECTED
        }
    }

    public interface GainControl {
        public static final short HIGH_DOWN = 4;
        public static final short HIGH_UP = 2;
        public static final short LOW_DOWN = 3;
        public static final short LOW_UP = 1;
        public static final short NONE = 0;
    }

    public interface GpsAltitudeRef {
        public static final short SEA_LEVEL = 0;
        public static final short SEA_LEVEL_NEGATIVE = 1;
    }

    public interface GpsDifferential {
        public static final short DIFFERENTIAL_CORRECTION_APPLIED = 1;
        public static final short WITHOUT_DIFFERENTIAL_CORRECTION = 0;
    }

    public interface GpsLatitudeRef {
        public static final String NORTH = "N";
        public static final String SOUTH = "S";
    }

    public interface GpsLongitudeRef {
        public static final String EAST = "E";
        public static final String WEST = "W";
    }

    public interface GpsMeasureMode {
        public static final String MODE_2_DIMENSIONAL = "2";
        public static final String MODE_3_DIMENSIONAL = "3";
    }

    public interface GpsSpeedRef {
        public static final String KILOMETERS = "K";
        public static final String KNOTS = "N";
        public static final String MILES = "M";
    }

    public interface GpsStatus {
        public static final String INTEROPERABILITY = "V";
        public static final String IN_PROGRESS = "A";
    }

    public interface GpsTrackRef {
        public static final String MAGNETIC_DIRECTION = "M";
        public static final String TRUE_DIRECTION = "T";
    }

    public interface JpegProcess {
        public static final short BASELINE = -64;
        public static final short DIFFERENTIAL_LOSSLESS = -57;
        public static final short DIFFERENTIAL_LOSSLESS_ARITHMETIC_CODING = -49;
        public static final short DIFFERENTIAL_PROGRESSIVE = -58;
        public static final short DIFFERENTIAL_PROGRESSIVE_ARITHMETIC_CODING = -50;
        public static final short DIFFERENTIAL_SEQUENTIAL = -59;
        public static final short DIFFERENTIAL_SEQ_ARITHMETIC_CODING = -51;
        public static final short EXTENDED_SEQUENTIAL = -63;
        public static final short EXTENDED_SEQ_ARITHMETIC_CODING = -55;
        public static final short LOSSLESS = -61;
        public static final short LOSSLESS_AITHMETIC_CODING = -53;
        public static final short PROGRESSIVE = -62;
        public static final short PROGRESSIVE_AIRTHMETIC_CODING = -54;
    }

    public interface LightSource {
        public static final short CLOUDY_WEATHER = 10;
        public static final short COOL_WHITE_FLUORESCENT = 14;
        public static final short D50 = 23;
        public static final short D55 = 20;
        public static final short D65 = 21;
        public static final short D75 = 22;
        public static final short DAYLIGHT = 1;
        public static final short DAYLIGHT_FLUORESCENT = 12;
        public static final short DAY_WHITE_FLUORESCENT = 13;
        public static final short FINE_WEATHER = 9;
        public static final short FLASH = 4;
        public static final short FLUORESCENT = 2;
        public static final short ISO_STUDIO_TUNGSTEN = 24;
        public static final short OTHER = 255;
        public static final short SHADE = 11;
        public static final short STANDARD_LIGHT_A = 17;
        public static final short STANDARD_LIGHT_B = 18;
        public static final short STANDARD_LIGHT_C = 19;
        public static final short TUNGSTEN = 3;
        public static final short UNKNOWN = 0;
        public static final short WHITE_FLUORESCENT = 15;
    }

    public interface MeteringMode {
        public static final short AVERAGE = 1;
        public static final short CENTER_WEIGHTED_AVERAGE = 2;
        public static final short MULTISPOT = 4;
        public static final short OTHER = 255;
        public static final short PARTAIL = 6;
        public static final short PATTERN = 5;
        public static final short SPOT = 3;
        public static final short UNKNOWN = 0;
    }

    public interface Options {
        public static final int OPTION_ALL = 63;
        public static final int OPTION_IFD_0 = 1;
        public static final int OPTION_IFD_1 = 2;
        public static final int OPTION_IFD_EXIF = 4;
        public static final int OPTION_IFD_GPS = 8;
        public static final int OPTION_IFD_INTEROPERABILITY = 16;
        public static final int OPTION_THUMBNAIL = 32;
    }

    public interface Orientation {
        public static final short BOTTOM_LEFT = 3;
        public static final short BOTTOM_RIGHT = 4;
        public static final short LEFT_BOTTOM = 7;
        public static final short LEFT_TOP = 5;
        public static final short RIGHT_BOTTOM = 8;
        public static final short RIGHT_TOP = 6;
        public static final short TOP_LEFT = 1;
        public static final short TOP_RIGHT = 2;
    }

    public interface PhotometricInterpretation {
        public static final short RGB = 2;
        public static final short YCBCR = 6;
    }

    public interface PlanarConfiguration {
        public static final short CHUNKY = 1;
        public static final short PLANAR = 2;
    }

    public interface ResolutionUnit {
        public static final short CENTIMETERS = 3;
        public static final short INCHES = 2;
        public static final short MICROMETERS = 5;
        public static final short MILLIMETERS = 4;
    }

    public interface Saturation {
        public static final short HIGH = 2;
        public static final short LOW = 1;
        public static final short NORMAL = 0;
    }

    public interface SceneCapture {
        public static final short LANDSCAPE = 1;
        public static final short NIGHT_SCENE = 3;
        public static final short PROTRAIT = 2;
        public static final short STANDARD = 0;
    }

    public interface SceneType {
        public static final short DIRECT_PHOTOGRAPHED = 1;
    }

    public interface SensingMethod {
        public static final short COLOR_SEQUENTIAL_AREA = 5;
        public static final short COLOR_SEQUENTIAL_LINEAR = 8;
        public static final short NOT_DEFINED = 1;
        public static final short ONE_CHIP_COLOR = 2;
        public static final short THREE_CHIP_COLOR = 4;
        public static final short TRILINEAR = 7;
        public static final short TWO_CHIP_COLOR = 3;
    }

    public interface SensitivityType {
        public static final short ISO = 3;
        public static final short REI = 2;
        public static final short REI_ISO = 6;
        public static final short SOS = 1;
        public static final short SOS_ISO = 5;
        public static final short SOS_REI = 4;
        public static final short SOS_REI_ISO = 7;
        public static final short UNKNOWN = 0;
    }

    public interface Sharpness {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    public interface SubjectDistance {
        public static final short CLOSE_VIEW = 2;
        public static final short DISTANT_VIEW = 3;
        public static final short MACRO = 1;
        public static final short UNKNOWN = 0;
    }

    public interface WhiteBalance {
        public static final short AUTO = 0;
        public static final short MANUAL = 1;
    }

    public interface YCbCrPositioning {
        public static final short CENTERED = 1;
        public static final short CO_SITED = 2;
    }

    public static int defineTag(int i, short s) {
        return (i << 16) | (s & 65535);
    }

    protected static int getAllowedIfdFlagsFromInfo(int i) {
        return i >>> 24;
    }

    protected static int getComponentCountFromInfo(int i) {
        return i & 65535;
    }

    public static int getRotationForOrientationValue(short s) {
        if (s == 1) {
            return 0;
        }
        if (s == 3) {
            return SubsamplingScaleImageView.ORIENTATION_180;
        }
        if (s == 6) {
            return 90;
        }
        if (s != 8) {
            return 0;
        }
        return SubsamplingScaleImageView.ORIENTATION_270;
    }

    public static int getTrueIfd(int i) {
        return i >>> 16;
    }

    public static short getTrueTagKey(int i) {
        return (short) i;
    }

    protected static short getTypeFromInfo(int i) {
        return (short) ((i >> 16) & 255);
    }

    public double getResolutionUnit(int i) {
        switch (i) {
            case 1:
            case 2:
                return 25.4d;
            case 3:
                return 10.0d;
            case 4:
                return 1.0d;
            case 5:
                return 0.001d;
            default:
                return 25.4d;
        }
    }

    static {
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_GPS_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_EXIF_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_JPEG_INTERCHANGE_FORMAT)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_INTEROPERABILITY_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_STRIP_OFFSETS)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(-1)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(TAG_STRIP_BYTE_COUNTS)));
    }

    public ExifInterface() {
        mGPSDateStampFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    protected static boolean isOffsetTag(short s) {
        return sOffsetTags.contains(Short.valueOf(s));
    }

    public static short getOrientationValueForRotation(int i) {
        int i2 = i % 360;
        if (i2 < 0) {
            i2 += 360;
        }
        if (i2 < 90) {
            return 1;
        }
        if (i2 < 180) {
            return 6;
        }
        return i2 < 270 ? (short) 3 : 8;
    }

    public static double convertLatOrLongToDouble(Rational[] rationalArr, String str) {
        try {
            double d = rationalArr[0].toDouble() + (rationalArr[1].toDouble() / 60.0d) + (rationalArr[2].toDouble() / 3600.0d);
            return (str.startsWith("S") || str.startsWith("W")) ? -d : d;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException();
        }
    }

    protected static int[] getAllowedIfdsFromInfo(int i) {
        int allowedIfdFlagsFromInfo = getAllowedIfdFlagsFromInfo(i);
        int[] ifds = IfdData.getIfds();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            if (((allowedIfdFlagsFromInfo >> i3) & 1) == 1) {
                arrayList.add(Integer.valueOf(ifds[i3]));
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            iArr[i2] = ((Integer) it2.next()).intValue();
            i2++;
        }
        return iArr;
    }

    public void readExif(String str, int i) throws IOException {
        IOException e;
        if (str != null) {
            BufferedInputStream bufferedInputStream = null;
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str));
                try {
                    readExif(bufferedInputStream2, i);
                    bufferedInputStream2.close();
                } catch (IOException e2) {
                    e = e2;
                    bufferedInputStream = bufferedInputStream2;
                    closeSilently(bufferedInputStream);
                    throw e;
                }
            } catch (IOException e3) {
                e = e3;
                closeSilently(bufferedInputStream);
                throw e;
            }
        } else {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
    }

    public void readExif(InputStream inputStream, int i) throws IOException {
        if (inputStream != null) {
            try {
                this.mData = new ExifReader(this).read(inputStream, i);
            } catch (ExifInvalidFormatException e) {
                throw new IOException("Invalid exif format : " + e);
            }
        } else {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
    }

    protected static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public void setExif(Collection<ExifTag> collection) {
        clearExif();
        setTags(collection);
    }

    public void clearExif() {
        this.mData = new ExifData(DEFAULT_BYTE_ORDER);
    }

    public void setTags(Collection<ExifTag> collection) {
        if (collection != null) {
            for (ExifTag exifTag : collection) {
                setTag(exifTag);
            }
        }
    }

    public ExifTag setTag(ExifTag exifTag) {
        return this.mData.addTag(exifTag);
    }

    public void writeExif(String str) throws IOException {
        Log.i(TAG, "writeExif: " + str);
        File file = new File(str);
        File file2 = new File(str + ".t");
        file2.delete();
        try {
            writeExif(file.getAbsolutePath(), file2.getAbsolutePath());
            file2.renameTo(file);
            file2.delete();
        } catch (IOException e) {
            throw e;
        } catch (Throwable th) {
            file2.delete();
            throw th;
        }
    }

    public void writeExif(String str, String str2) throws IOException {
        Log.i(TAG, "writeExif: " + str2);
        if (!str.equals(str2)) {
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            int writeExif_internal = writeExif_internal(fileInputStream, fileOutputStream, this.mData);
            FileChannel channel = fileInputStream.getChannel();
            long j = (long) writeExif_internal;
            channel.transferTo(j, channel.size() - j, fileOutputStream.getChannel());
            fileOutputStream.flush();
            IOUtils.closeQuietly((InputStream) fileInputStream);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
        }
    }

    public void writeExif(InputStream inputStream, String str) throws IOException {
        Log.i(TAG, "writeExif: " + str);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        writeExif_internal(inputStream, fileOutputStream, this.mData);
        IOUtils.copy(inputStream, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
    }

    public void writeExif(Bitmap bitmap, String str, int i) throws IOException {
        Log.i(TAG, "writeExif: " + str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        byteArrayOutputStream.close();
        writeExif(byteArrayInputStream, str);
    }

    private static int writeExif_internal(InputStream inputStream, OutputStream outputStream, ExifData exifData) throws IOException {
        ExifInterface exifInterface = new ExifInterface();
        exifInterface.readExif(inputStream, 0);
        outputStream.write(255);
        outputStream.write(JpegHeader.TAG_SOI);
        List<ExifParser.Section> sections = exifInterface.mData.getSections();
        if (sections.get(0).type != 224) {
            Log.w(TAG, "first section is not a JFIF or EXIF tag");
            outputStream.write(JpegHeader.JFIF_HEADER);
        }
        ExifOutputStream exifOutputStream = new ExifOutputStream(exifInterface);
        exifOutputStream.setExifData(exifData);
        exifOutputStream.writeExifData(outputStream);
        for (int i = 0; i < sections.size() - 1; i++) {
            ExifParser.Section section = sections.get(i);
            outputStream.write(255);
            outputStream.write(section.type);
            outputStream.write(section.data);
        }
        ExifParser.Section section2 = sections.get(sections.size() - 1);
        outputStream.write(255);
        outputStream.write(section2.type);
        outputStream.write(section2.data);
        return exifInterface.mData.mUncompressedDataPosition;
    }

    public List<ExifTag> getAllTags() {
        return this.mData.getAllTags();
    }

    public void readExif(byte[] bArr, int i) throws IOException {
        readExif(new ByteArrayInputStream(bArr), i);
    }

    public List<ExifTag> getTagsForTagId(short s) {
        return this.mData.getAllTagsForTagId(s);
    }

    public List<ExifTag> getTagsForIfdId(int i) {
        return this.mData.getAllTagsForIfd(i);
    }

    public ExifTag getTag(int i) {
        return getTag(i, getDefinedTagDefaultIfd(i));
    }

    public int getDefinedTagDefaultIfd(int i) {
        if (getTagInfo().get(i) == 0) {
            return -1;
        }
        return getTrueIfd(i);
    }

    public ExifTag getTag(int i, int i2) {
        if (!ExifTag.isValidIfd(i2)) {
            return null;
        }
        return this.mData.getTag(getTrueTagKey(i), i2);
    }

    /* access modifiers changed from: protected */
    public SparseIntArray getTagInfo() {
        if (this.mTagInfo == null) {
            this.mTagInfo = new SparseIntArray();
            initTagInfo();
        }
        return this.mTagInfo;
    }

    private void initTagInfo() {
        int flagsFromAllowedIfds = getFlagsFromAllowedIfds(new int[]{0, 1}) << 24;
        int i = flagsFromAllowedIfds | 131072;
        this.mTagInfo.put(TAG_MAKE, i);
        int i2 = flagsFromAllowedIfds | 262144;
        int i3 = i2 | 1;
        this.mTagInfo.put(TAG_IMAGE_WIDTH, i3);
        this.mTagInfo.put(TAG_IMAGE_LENGTH, i3);
        int i4 = flagsFromAllowedIfds | 196608;
        this.mTagInfo.put(TAG_BITS_PER_SAMPLE, i4 | 3);
        int i5 = i4 | 1;
        this.mTagInfo.put(TAG_COMPRESSION, i5);
        this.mTagInfo.put(TAG_PHOTOMETRIC_INTERPRETATION, i5);
        this.mTagInfo.put(TAG_ORIENTATION, i5);
        this.mTagInfo.put(TAG_SAMPLES_PER_PIXEL, i5);
        this.mTagInfo.put(TAG_PLANAR_CONFIGURATION, i5);
        this.mTagInfo.put(TAG_Y_CB_CR_SUB_SAMPLING, i4 | 2);
        this.mTagInfo.put(TAG_Y_CB_CR_POSITIONING, i5);
        int i6 = flagsFromAllowedIfds | 327680;
        int i7 = i6 | 1;
        this.mTagInfo.put(TAG_X_RESOLUTION, i7);
        this.mTagInfo.put(TAG_Y_RESOLUTION, i7);
        this.mTagInfo.put(TAG_RESOLUTION_UNIT, i5);
        this.mTagInfo.put(TAG_STRIP_OFFSETS, i2);
        this.mTagInfo.put(TAG_ROWS_PER_STRIP, i3);
        this.mTagInfo.put(TAG_STRIP_BYTE_COUNTS, i2);
        this.mTagInfo.put(TAG_TRANSFER_FUNCTION, i4 | 768);
        this.mTagInfo.put(TAG_WHITE_POINT, i6 | 2);
        int i8 = i6 | 6;
        this.mTagInfo.put(TAG_PRIMARY_CHROMATICITIES, i8);
        this.mTagInfo.put(TAG_Y_CB_CR_COEFFICIENTS, i6 | 3);
        this.mTagInfo.put(TAG_REFERENCE_BLACK_WHITE, i8);
        this.mTagInfo.put(TAG_DATE_TIME, i | 20);
        this.mTagInfo.put(TAG_IMAGE_DESCRIPTION, i);
        this.mTagInfo.put(TAG_MODEL, i);
        this.mTagInfo.put(TAG_SOFTWARE, i);
        this.mTagInfo.put(TAG_ARTIST, i);
        this.mTagInfo.put(TAG_COPYRIGHT, i);
        this.mTagInfo.put(TAG_EXIF_IFD, i3);
        this.mTagInfo.put(TAG_GPS_IFD, i3);
        int flagsFromAllowedIfds2 = (getFlagsFromAllowedIfds(new int[]{1}) << 24) | 262144 | 1;
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT, flagsFromAllowedIfds2);
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, flagsFromAllowedIfds2);
        int flagsFromAllowedIfds3 = getFlagsFromAllowedIfds(new int[]{2}) << 24;
        int i9 = flagsFromAllowedIfds3 | 458752;
        int i10 = i9 | 4;
        this.mTagInfo.put(TAG_EXIF_VERSION, i10);
        this.mTagInfo.put(TAG_FLASHPIX_VERSION, i10);
        int i11 = flagsFromAllowedIfds3 | 196608;
        int i12 = i11 | 1;
        this.mTagInfo.put(TAG_COLOR_SPACE, i12);
        this.mTagInfo.put(TAG_COMPONENTS_CONFIGURATION, i10);
        int i13 = flagsFromAllowedIfds3 | 327680 | 1;
        this.mTagInfo.put(TAG_COMPRESSED_BITS_PER_PIXEL, i13);
        int i14 = 262144 | flagsFromAllowedIfds3 | 1;
        this.mTagInfo.put(TAG_PIXEL_X_DIMENSION, i14);
        this.mTagInfo.put(TAG_PIXEL_Y_DIMENSION, i14);
        this.mTagInfo.put(TAG_MAKER_NOTE, i9);
        this.mTagInfo.put(TAG_USER_COMMENT, i9);
        int i15 = flagsFromAllowedIfds3 | 131072;
        this.mTagInfo.put(TAG_RELATED_SOUND_FILE, i15 | 13);
        int i16 = i15 | 20;
        this.mTagInfo.put(TAG_DATE_TIME_ORIGINAL, i16);
        this.mTagInfo.put(TAG_DATE_TIME_DIGITIZED, i16);
        this.mTagInfo.put(TAG_SUB_SEC_TIME, i15);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_ORIGINAL, i15);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_DIGITIZED, i15);
        this.mTagInfo.put(TAG_IMAGE_UNIQUE_ID, i15 | 33);
        int i17 = flagsFromAllowedIfds3 | 655360;
        this.mTagInfo.put(TAG_LENS_SPECS, i17 | 3);
        this.mTagInfo.put(TAG_LENS_MAKE, i15);
        this.mTagInfo.put(TAG_LENS_MODEL, i15);
        this.mTagInfo.put(TAG_SENSITIVITY_TYPE, i12);
        this.mTagInfo.put(TAG_EXPOSURE_TIME, i13);
        this.mTagInfo.put(TAG_F_NUMBER, i13);
        this.mTagInfo.put(TAG_EXPOSURE_PROGRAM, i12);
        this.mTagInfo.put(TAG_SPECTRAL_SENSITIVITY, i15);
        this.mTagInfo.put(TAG_ISO_SPEED_RATINGS, i11);
        this.mTagInfo.put(TAG_OECF, i9);
        int i18 = i17 | 1;
        this.mTagInfo.put(TAG_SHUTTER_SPEED_VALUE, i18);
        this.mTagInfo.put(TAG_APERTURE_VALUE, i13);
        this.mTagInfo.put(TAG_BRIGHTNESS_VALUE, i18);
        this.mTagInfo.put(TAG_EXPOSURE_BIAS_VALUE, i18);
        this.mTagInfo.put(TAG_MAX_APERTURE_VALUE, i13);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE, i13);
        this.mTagInfo.put(TAG_METERING_MODE, i12);
        this.mTagInfo.put(TAG_LIGHT_SOURCE, i12);
        this.mTagInfo.put(TAG_FLASH, i12);
        this.mTagInfo.put(TAG_FOCAL_LENGTH, i13);
        this.mTagInfo.put(TAG_SUBJECT_AREA, i11);
        this.mTagInfo.put(TAG_FLASH_ENERGY, i13);
        this.mTagInfo.put(TAG_SPATIAL_FREQUENCY_RESPONSE, i9);
        this.mTagInfo.put(TAG_FOCAL_PLANE_X_RESOLUTION, i13);
        this.mTagInfo.put(TAG_FOCAL_PLANE_Y_RESOLUTION, i13);
        this.mTagInfo.put(TAG_FOCAL_PLANE_RESOLUTION_UNIT, i12);
        this.mTagInfo.put(TAG_SUBJECT_LOCATION, 2 | i11);
        this.mTagInfo.put(TAG_EXPOSURE_INDEX, i13);
        this.mTagInfo.put(TAG_SENSING_METHOD, i12);
        int i19 = i9 | 1;
        this.mTagInfo.put(TAG_FILE_SOURCE, i19);
        this.mTagInfo.put(TAG_SCENE_TYPE, i19);
        this.mTagInfo.put(TAG_CFA_PATTERN, i9);
        this.mTagInfo.put(TAG_CUSTOM_RENDERED, i12);
        this.mTagInfo.put(TAG_EXPOSURE_MODE, i12);
        this.mTagInfo.put(TAG_WHITE_BALANCE, i12);
        this.mTagInfo.put(TAG_DIGITAL_ZOOM_RATIO, i13);
        this.mTagInfo.put(TAG_FOCAL_LENGTH_IN_35_MM_FILE, i12);
        this.mTagInfo.put(TAG_SCENE_CAPTURE_TYPE, i12);
        this.mTagInfo.put(TAG_GAIN_CONTROL, i13);
        this.mTagInfo.put(TAG_CONTRAST, i12);
        this.mTagInfo.put(TAG_SATURATION, i12);
        this.mTagInfo.put(TAG_SHARPNESS, i12);
        this.mTagInfo.put(TAG_DEVICE_SETTING_DESCRIPTION, i9);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE_RANGE, i12);
        this.mTagInfo.put(TAG_INTEROPERABILITY_IFD, i14);
        int flagsFromAllowedIfds4 = getFlagsFromAllowedIfds(new int[]{4}) << 24;
        int i20 = 65536 | flagsFromAllowedIfds4;
        this.mTagInfo.put(TAG_GPS_VERSION_ID, i20 | 4);
        int i21 = flagsFromAllowedIfds4 | 131072;
        int i22 = i21 | 2;
        this.mTagInfo.put(TAG_GPS_LATITUDE_REF, i22);
        this.mTagInfo.put(TAG_GPS_LONGITUDE_REF, i22);
        int i23 = flagsFromAllowedIfds4 | 655360 | 3;
        this.mTagInfo.put(TAG_GPS_LATITUDE, i23);
        this.mTagInfo.put(TAG_GPS_LONGITUDE, i23);
        this.mTagInfo.put(TAG_GPS_ALTITUDE_REF, i20 | 1);
        int i24 = 327680 | flagsFromAllowedIfds4;
        int i25 = i24 | 1;
        this.mTagInfo.put(TAG_GPS_ALTITUDE, i25);
        this.mTagInfo.put(TAG_GPS_TIME_STAMP, i24 | 3);
        this.mTagInfo.put(TAG_GPS_SATTELLITES, i21);
        this.mTagInfo.put(TAG_GPS_STATUS, i22);
        this.mTagInfo.put(TAG_GPS_MEASURE_MODE, i22);
        this.mTagInfo.put(TAG_GPS_DOP, i25);
        this.mTagInfo.put(TAG_GPS_SPEED_REF, i22);
        this.mTagInfo.put(TAG_GPS_SPEED, i25);
        this.mTagInfo.put(TAG_GPS_TRACK_REF, i22);
        this.mTagInfo.put(TAG_GPS_TRACK, i25);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION_REF, i22);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION, i25);
        this.mTagInfo.put(TAG_GPS_MAP_DATUM, i21);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE_REF, i22);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE, i25);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING_REF, i22);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING, i25);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE_REF, i22);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE, i25);
        int i26 = flagsFromAllowedIfds4 | 458752;
        this.mTagInfo.put(TAG_GPS_PROCESSING_METHOD, i26);
        this.mTagInfo.put(TAG_GPS_AREA_INFORMATION, i26);
        this.mTagInfo.put(TAG_GPS_DATE_STAMP, i21 | 11);
        this.mTagInfo.put(TAG_GPS_DIFFERENTIAL, flagsFromAllowedIfds4 | 196608 | 11);
        int flagsFromAllowedIfds5 = getFlagsFromAllowedIfds(new int[]{3}) << 24;
        this.mTagInfo.put(TAG_INTEROPERABILITY_INDEX, 131072 | flagsFromAllowedIfds5);
        this.mTagInfo.put(TAG_INTEROP_VERSION, flagsFromAllowedIfds5 | 458752 | 4);
    }

    protected static int getFlagsFromAllowedIfds(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        int[] ifds = IfdData.getIfds();
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int length = iArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                if (ifds[i2] == iArr[i3]) {
                    i |= 1 << i2;
                    break;
                }
                i3++;
            }
        }
        return i;
    }

    public Object getTagValue(int i) {
        return getTagValue(i, getDefinedTagDefaultIfd(i));
    }

    public Object getTagValue(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValue();
    }

    public String getTagStringValue(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsString();
    }

    public String getTagStringValue(int i) {
        return getTagStringValue(i, getDefinedTagDefaultIfd(i));
    }

    public Long getTagLongValue(int i) {
        return getTagLongValue(i, getDefinedTagDefaultIfd(i));
    }

    public Long getTagLongValue(int i, int i2) {
        long[] tagLongValues = getTagLongValues(i, i2);
        if (tagLongValues == null || tagLongValues.length <= 0) {
            return null;
        }
        return new Long(tagLongValues[0]);
    }

    public long[] getTagLongValues(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsLongs();
    }

    public Integer getTagIntValue(int i) {
        return getTagIntValue(i, getDefinedTagDefaultIfd(i));
    }

    public Integer getTagIntValue(int i, int i2) {
        int[] tagIntValues = getTagIntValues(i, i2);
        if (tagIntValues == null || tagIntValues.length <= 0) {
            return null;
        }
        return new Integer(tagIntValues[0]);
    }

    public int[] getTagIntValues(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsInts();
    }

    public Byte getTagByteValue(int i) {
        return getTagByteValue(i, getDefinedTagDefaultIfd(i));
    }

    public Byte getTagByteValue(int i, int i2) {
        byte[] tagByteValues = getTagByteValues(i, i2);
        if (tagByteValues == null || tagByteValues.length <= 0) {
            return null;
        }
        return new Byte(tagByteValues[0]);
    }

    public byte[] getTagByteValues(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsBytes();
    }

    public Rational getTagRationalValue(int i) {
        return getTagRationalValue(i, getDefinedTagDefaultIfd(i));
    }

    public Rational getTagRationalValue(int i, int i2) {
        Rational[] tagRationalValues = getTagRationalValues(i, i2);
        if (tagRationalValues == null || tagRationalValues.length == 0) {
            return null;
        }
        return new Rational(tagRationalValues[0]);
    }

    public Rational[] getTagRationalValues(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return null;
        }
        return tag.getValueAsRationals();
    }

    public long[] getTagLongValues(int i) {
        return getTagLongValues(i, getDefinedTagDefaultIfd(i));
    }

    public int[] getTagIntValues(int i) {
        return getTagIntValues(i, getDefinedTagDefaultIfd(i));
    }

    public byte[] getTagByteValues(int i) {
        return getTagByteValues(i, getDefinedTagDefaultIfd(i));
    }

    public Rational[] getTagRationalValues(int i) {
        return getTagRationalValues(i, getDefinedTagDefaultIfd(i));
    }

    public boolean isTagCountDefined(int i) {
        int i2 = getTagInfo().get(i);
        return (i2 == 0 || getComponentCountFromInfo(i2) == 0) ? false : true;
    }

    public int getDefinedTagCount(int i) {
        int i2 = getTagInfo().get(i);
        if (i2 == 0) {
            return 0;
        }
        return getComponentCountFromInfo(i2);
    }

    public int getActualTagCount(int i, int i2) {
        ExifTag tag = getTag(i, i2);
        if (tag == null) {
            return 0;
        }
        return tag.getComponentCount();
    }

    public short getDefinedTagType(int i) {
        int i2 = getTagInfo().get(i);
        if (i2 == 0) {
            return -1;
        }
        return getTypeFromInfo(i2);
    }

    /* access modifiers changed from: protected */
    public ExifTag buildUninitializedTag(int i) {
        int i2 = getTagInfo().get(i);
        if (i2 == 0) {
            return null;
        }
        short typeFromInfo = getTypeFromInfo(i2);
        int componentCountFromInfo = getComponentCountFromInfo(i2);
        return new ExifTag(getTrueTagKey(i), typeFromInfo, componentCountFromInfo, getTrueIfd(i), componentCountFromInfo != 0);
    }

    public boolean setTagValue(int i, Object obj) {
        return setTagValue(i, getDefinedTagDefaultIfd(i), obj);
    }

    public boolean setTagValue(int i, int i2, Object obj) {
        ExifTag tag = getTag(i, i2);
        return tag != null && tag.setValue(obj);
    }

    public void deleteTag(int i) {
        deleteTag(i, getDefinedTagDefaultIfd(i));
    }

    public void deleteTag(int i, int i2) {
        this.mData.removeTag(getTrueTagKey(i), i2);
    }

    public int setTagDefinition(short s, int i, short s2, short s3, int[] iArr) {
        int defineTag;
        if (sBannedDefines.contains(Short.valueOf(s)) || !ExifTag.isValidType(s2) || !ExifTag.isValidIfd(i) || (defineTag = defineTag(i, s)) == -1) {
            return -1;
        }
        int[] tagDefinitionsForTagId = getTagDefinitionsForTagId(s);
        SparseIntArray tagInfo = getTagInfo();
        boolean z = false;
        for (int i2 : iArr) {
            if (i == i2) {
                z = true;
            }
            if (!ExifTag.isValidIfd(i2)) {
                return -1;
            }
        }
        if (!z) {
            return -1;
        }
        int flagsFromAllowedIfds = getFlagsFromAllowedIfds(iArr);
        if (tagDefinitionsForTagId != null) {
            for (int i3 : tagDefinitionsForTagId) {
                if ((getAllowedIfdFlagsFromInfo(tagInfo.get(i3)) & flagsFromAllowedIfds) != 0) {
                    return -1;
                }
            }
        }
        getTagInfo().put(defineTag, (flagsFromAllowedIfds << 24) | (s2 << 16) | s3);
        return defineTag;
    }

    /* access modifiers changed from: protected */
    public int getTagDefinition(short s, int i) {
        return getTagInfo().get(defineTag(i, s));
    }

    /* access modifiers changed from: protected */
    public int[] getTagDefinitionsForTagId(short s) {
        int[] ifds = IfdData.getIfds();
        int[] iArr = new int[ifds.length];
        SparseIntArray tagInfo = getTagInfo();
        int i = 0;
        for (int i2 : ifds) {
            int defineTag = defineTag(i2, s);
            if (tagInfo.get(defineTag) != 0) {
                iArr[i] = defineTag;
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        return Arrays.copyOfRange(iArr, 0, i);
    }

    /* access modifiers changed from: protected */
    public int getTagDefinitionForTag(ExifTag exifTag) {
        return getTagDefinitionForTag(exifTag.getTagId(), exifTag.getDataType(), exifTag.getComponentCount(), exifTag.getIfd());
    }

    /* access modifiers changed from: protected */
    public int getTagDefinitionForTag(short s, short s2, int i, int i2) {
        boolean z;
        int[] tagDefinitionsForTagId = getTagDefinitionsForTagId(s);
        if (tagDefinitionsForTagId == null) {
            return -1;
        }
        SparseIntArray tagInfo = getTagInfo();
        for (int i3 : tagDefinitionsForTagId) {
            int i4 = tagInfo.get(i3);
            short typeFromInfo = getTypeFromInfo(i4);
            int componentCountFromInfo = getComponentCountFromInfo(i4);
            int[] allowedIfdsFromInfo = getAllowedIfdsFromInfo(i4);
            int length = allowedIfdsFromInfo.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    z = false;
                    break;
                } else if (allowedIfdsFromInfo[i5] == i2) {
                    z = true;
                    break;
                } else {
                    i5++;
                }
            }
            if (z) {
                if (s2 == typeFromInfo) {
                    if (i == componentCountFromInfo || componentCountFromInfo == 0) {
                        return i3;
                    }
                }
            }
        }
        return -1;
    }

    public void removeTagDefinition(int i) {
        getTagInfo().delete(i);
    }

    public void resetTagDefinitions() {
        this.mTagInfo = null;
    }

    public Bitmap getThumbnailBitmap() {
        if (this.mData.hasCompressedThumbnail()) {
            byte[] compressedThumbnail = this.mData.getCompressedThumbnail();
            return BitmapFactory.decodeByteArray(compressedThumbnail, 0, compressedThumbnail.length);
        }
        this.mData.hasUncompressedStrip();
        return null;
    }

    public byte[] getThumbnailBytes() {
        if (this.mData.hasCompressedThumbnail()) {
            return this.mData.getCompressedThumbnail();
        }
        this.mData.hasUncompressedStrip();
        return null;
    }

    public byte[] getThumbnail() {
        return this.mData.getCompressedThumbnail();
    }

    public int getQualityGuess() {
        return this.mData.getQualityGuess();
    }

    public short getJpegProcess() {
        return this.mData.getJpegProcess();
    }

    public int[] getImageSize() {
        return this.mData.getImageSize();
    }

    public boolean isThumbnailCompressed() {
        return this.mData.hasCompressedThumbnail();
    }

    public boolean hasThumbnail() {
        return this.mData.hasCompressedThumbnail();
    }

    public boolean setCompressedThumbnail(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream)) {
            return false;
        }
        return setCompressedThumbnail(byteArrayOutputStream.toByteArray());
    }

    public boolean setCompressedThumbnail(byte[] bArr) {
        this.mData.clearThumbnailAndStrips();
        this.mData.setCompressedThumbnail(bArr);
        return true;
    }

    public void removeCompressedThumbnail() {
        this.mData.setCompressedThumbnail(null);
    }

    public String getUserComment() {
        return this.mData.getUserComment();
    }

    public double getAltitude(double d) {
        Byte tagByteValue = getTagByteValue(TAG_GPS_ALTITUDE_REF);
        Rational tagRationalValue = getTagRationalValue(TAG_GPS_ALTITUDE);
        int i = 1;
        if (tagByteValue != null && tagByteValue.intValue() == 1) {
            i = -1;
        }
        if (tagRationalValue == null) {
            return d;
        }
        double d2 = tagRationalValue.toDouble();
        double d3 = (double) i;
        Double.isNaN(d3);
        return d2 * d3;
    }

    public double[] getLatLongAsDoubles() {
        Rational[] tagRationalValues = getTagRationalValues(TAG_GPS_LATITUDE);
        String tagStringValue = getTagStringValue(TAG_GPS_LATITUDE_REF);
        Rational[] tagRationalValues2 = getTagRationalValues(TAG_GPS_LONGITUDE);
        String tagStringValue2 = getTagStringValue(TAG_GPS_LONGITUDE_REF);
        if (tagRationalValues == null || tagRationalValues2 == null || tagStringValue == null || tagStringValue2 == null || tagRationalValues.length < 3 || tagRationalValues2.length < 3) {
            return null;
        }
        return new double[]{convertLatOrLongToDouble(tagRationalValues, tagStringValue), convertLatOrLongToDouble(tagRationalValues2, tagStringValue2)};
    }

    public String getLatitude() {
        Rational[] tagRationalValues = getTagRationalValues(TAG_GPS_LATITUDE);
        String tagStringValue = getTagStringValue(TAG_GPS_LATITUDE_REF);
        if (tagRationalValues == null || tagStringValue == null) {
            return null;
        }
        return convertRationalLatLonToString(tagRationalValues, tagStringValue);
    }

    public String getLongitude() {
        Rational[] tagRationalValues = getTagRationalValues(TAG_GPS_LONGITUDE);
        String tagStringValue = getTagStringValue(TAG_GPS_LONGITUDE_REF);
        if (tagRationalValues == null || tagStringValue == null) {
            return null;
        }
        return convertRationalLatLonToString(tagRationalValues, tagStringValue);
    }

    private static String convertRationalLatLonToString(Rational[] rationalArr, String str) {
        try {
            return String.format("%1$.0f° %2$.0f' %3$.0f\" %4$s", Double.valueOf(rationalArr[0].toDouble()), Double.valueOf(rationalArr[1].toDouble()), Double.valueOf(rationalArr[2].toDouble()), str.substring(0, 1).toUpperCase(Locale.getDefault()));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Date getDateTime(String str, TimeZone timeZone) {
        if (str == null) {
            return null;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATETIME_FORMAT_STR);
        simpleDateFormat.setTimeZone(timeZone);
        try {
            return simpleDateFormat.parse(str);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        } catch (ParseException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean addDateTimeStampTag(int i, long j, TimeZone timeZone) {
        if (i != TAG_DATE_TIME && i != TAG_DATE_TIME_DIGITIZED && i != TAG_DATE_TIME_ORIGINAL) {
            return false;
        }
        mDateTimeStampFormat.setTimeZone(timeZone);
        ExifTag buildTag = buildTag(i, mDateTimeStampFormat.format(Long.valueOf(j)));
        if (buildTag == null) {
            return false;
        }
        setTag(buildTag);
        return true;
    }

    public ExifTag buildTag(int i, Object obj) {
        return buildTag(i, getTrueIfd(i), obj);
    }

    public ExifTag buildTag(int i, int i2, Object obj) {
        int i3 = getTagInfo().get(i);
        if (i3 == 0 || obj == null) {
            return null;
        }
        short typeFromInfo = getTypeFromInfo(i3);
        int componentCountFromInfo = getComponentCountFromInfo(i3);
        boolean z = componentCountFromInfo != 0;
        if (!isIfdAllowed(i3, i2)) {
            return null;
        }
        ExifTag exifTag = new ExifTag(getTrueTagKey(i), typeFromInfo, componentCountFromInfo, i2, z);
        if (!exifTag.setValue(obj)) {
            return null;
        }
        return exifTag;
    }

    protected static boolean isIfdAllowed(int i, int i2) {
        int[] ifds = IfdData.getIfds();
        int allowedIfdFlagsFromInfo = getAllowedIfdFlagsFromInfo(i);
        for (int i3 = 0; i3 < ifds.length; i3++) {
            if (i2 == ifds[i3] && ((allowedIfdFlagsFromInfo >> i3) & 1) == 1) {
                return true;
            }
        }
        return false;
    }

    public boolean addGpsTags(double d, double d2) {
        ExifTag buildTag = buildTag(TAG_GPS_LATITUDE, toExifLatLong(d));
        ExifTag buildTag2 = buildTag(TAG_GPS_LONGITUDE, toExifLatLong(d2));
        ExifTag buildTag3 = buildTag(TAG_GPS_LATITUDE_REF, d >= 0.0d ? "N" : "S");
        ExifTag buildTag4 = buildTag(TAG_GPS_LONGITUDE_REF, d2 >= 0.0d ? "E" : "W");
        if (buildTag == null || buildTag2 == null || buildTag3 == null || buildTag4 == null) {
            return false;
        }
        setTag(buildTag);
        setTag(buildTag2);
        setTag(buildTag3);
        setTag(buildTag4);
        return true;
    }

    private static Rational[] toExifLatLong(double d) {
        double abs = Math.abs(d);
        int i = (int) abs;
        double d2 = (double) i;
        Double.isNaN(d2);
        double d3 = (abs - d2) * 60.0d;
        int i2 = (int) d3;
        double d4 = (double) i2;
        Double.isNaN(d4);
        return new Rational[]{new Rational((long) i, 1), new Rational((long) i2, 1), new Rational((long) ((int) ((d3 - d4) * 6000.0d)), 100)};
    }

    public boolean addGpsDateTimeStampTag(long j) {
        ExifTag buildTag = buildTag(TAG_GPS_DATE_STAMP, mGPSDateStampFormat.format(Long.valueOf(j)));
        if (buildTag == null) {
            return false;
        }
        setTag(buildTag);
        this.mGPSTimeStampCalendar.setTimeInMillis(j);
        ExifTag buildTag2 = buildTag(TAG_GPS_TIME_STAMP, new Rational[]{new Rational((long) this.mGPSTimeStampCalendar.get(11), 1), new Rational((long) this.mGPSTimeStampCalendar.get(12), 1), new Rational((long) this.mGPSTimeStampCalendar.get(13), 1)});
        if (buildTag2 == null) {
            return false;
        }
        setTag(buildTag2);
        return true;
    }

    public double getApertureSize() {
        Rational tagRationalValue = getTagRationalValue(TAG_F_NUMBER);
        if (tagRationalValue != null && tagRationalValue.toDouble() > 0.0d) {
            return tagRationalValue.toDouble();
        }
        Rational tagRationalValue2 = getTagRationalValue(TAG_APERTURE_VALUE);
        if (tagRationalValue2 == null || tagRationalValue2.toDouble() <= 0.0d) {
            return 0.0d;
        }
        return Math.exp(tagRationalValue2.toDouble() * Math.log(2.0d) * 0.5d);
    }

    public String getLensModelDescription() {
        String tagStringValue = getTagStringValue(TAG_LENS_MODEL);
        if (tagStringValue != null) {
            return tagStringValue;
        }
        Rational[] tagRationalValues = getTagRationalValues(TAG_LENS_SPECS);
        if (tagRationalValues != null) {
            return ExifUtil.processLensSpecifications(tagRationalValues);
        }
        return null;
    }

    public static byte[] toBitArray(short s) {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 16; i++) {
            bArr[15 - i] = (byte) ((s >> i) & 1);
        }
        return bArr;
    }
}
