package it.sephiroth.android.library.exif2;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.UByte;
import org.apache.commons.lang3.CharEncoding;

/* access modifiers changed from: package-private */
public class ExifParser {
    protected static final short BIG_ENDIAN_TAG = 19789;
    protected static final int DEFAULT_IFD0_OFFSET = 8;
    public static final int EVENT_COMPRESSED_IMAGE = 3;
    public static final int EVENT_END = 5;
    public static final int EVENT_NEW_TAG = 1;
    public static final int EVENT_START_OF_IFD = 0;
    public static final int EVENT_UNCOMPRESSED_STRIP = 4;
    public static final int EVENT_VALUE_OF_REGISTERED_TAG = 2;
    protected static final int EXIF_HEADER = 1165519206;
    protected static final short EXIF_HEADER_TAIL = 0;
    protected static final short LITTLE_ENDIAN_TAG = 18761;
    protected static final int OFFSET_SIZE = 2;
    private static final String TAG = "ExifParser";
    private static final short TAG_EXIF_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_EXIF_IFD);
    private static final short TAG_GPS_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_GPS_IFD);
    private static final short TAG_INTEROPERABILITY_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_INTEROPERABILITY_IFD);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT = ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
    protected static final int TAG_SIZE = 12;
    private static final short TAG_STRIP_BYTE_COUNTS = ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS);
    private static final short TAG_STRIP_OFFSETS = ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS);
    protected static final short TIFF_HEADER_TAIL = 42;
    private static final Charset US_ASCII = Charset.forName(CharEncoding.US_ASCII);
    static final int[][] deftabs = {std_luminance_quant_tbl, std_chrominance_quant_tbl};
    static final int[] std_chrominance_quant_tbl = {17, 18, 18, 24, 21, 24, 47, 26, 26, 47, 99, 66, 56, 66, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99};
    static final int[] std_luminance_quant_tbl = {16, 11, 12, 14, 12, 10, 16, 14, 13, 14, 18, 17, 16, 19, 24, 40, 26, 24, 22, 22, 24, 49, 35, 37, 29, 40, 58, 51, 61, 60, 57, 51, 56, 55, 64, 72, 92, 78, 64, 68, 87, 69, 55, 56, 80, 109, 81, 87, 95, 98, 103, 104, 103, 62, 77, 113, 121, 112, 100, 120, 92, 101, 103, 99};
    private final byte[] mByteArray = new byte[8];
    private final ByteBuffer mByteBuffer = ByteBuffer.wrap(this.mByteArray);
    private final TreeMap<Integer, Object> mCorrespondingEvent = new TreeMap<>();
    private byte[] mDataAboveIfd0;
    private int mIfd0Position;
    private int mIfdStartOffset = 0;
    private int mIfdType;
    private ImageEvent mImageEvent;
    private int mImageLength;
    private int mImageWidth;
    private final ExifInterface mInterface;
    private ExifTag mJpegSizeTag;
    private boolean mNeedToParseOffsetsInCurrentIfd;
    private int mNumOfTagInIfd = 0;
    private final int mOptions;
    private short mProcess = 0;
    private int mQualityGuess;
    private List<Section> mSections;
    private ExifTag mStripSizeTag;
    private ExifTag mTag;
    private final CountedDataInputStream mTiffStream;
    private int mUncompressedDataPosition = 0;

    public static class Section {
        byte[] data;
        int size;
        int type;
    }

    private ExifParser(InputStream inputStream, int i, ExifInterface exifInterface) throws IOException, ExifInvalidFormatException {
        if (inputStream != null) {
            Log.v(TAG, "Reading exif...");
            this.mSections = new ArrayList(0);
            this.mInterface = exifInterface;
            this.mTiffStream = seekTiffData(inputStream);
            this.mOptions = i;
            if (this.mTiffStream != null) {
                parseTiffHeader(this.mTiffStream);
                long readUnsignedInt = this.mTiffStream.readUnsignedInt();
                if (readUnsignedInt <= 2147483647L) {
                    int i2 = (int) readUnsignedInt;
                    this.mIfd0Position = i2;
                    this.mIfdType = 0;
                    if (isIfdRequested(0) || needToParseOffsetsInCurrentIfd()) {
                        registerIfd(0, readUnsignedInt);
                        if (readUnsignedInt != 8) {
                            this.mDataAboveIfd0 = new byte[(i2 - 8)];
                            read(this.mDataAboveIfd0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw new ExifInvalidFormatException("Invalid offset " + readUnsignedInt);
            }
            return;
        }
        throw new IOException("Null argument inputStream to ExifParser");
    }

    private int readInt(byte[] bArr, int i) {
        this.mByteBuffer.rewind();
        this.mByteBuffer.put(bArr, i, 4);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getInt();
    }

    private short readShort(byte[] bArr, int i) {
        this.mByteBuffer.rewind();
        this.mByteBuffer.put(bArr, i, 2);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getShort();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00e7, code lost:
        if (r8 < 16) goto L_0x0106;
     */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0102  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0113  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private it.sephiroth.android.library.exif2.CountedDataInputStream seekTiffData(java.io.InputStream r14) throws java.io.IOException, it.sephiroth.android.library.exif2.ExifInvalidFormatException {
        /*
        // Method dump skipped, instructions count: 432
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.exif2.ExifParser.seekTiffData(java.io.InputStream):it.sephiroth.android.library.exif2.CountedDataInputStream");
    }

    private int readBytes(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int min = Math.min(1024, i2);
        int i3 = 0;
        while (true) {
            int read = inputStream.read(bArr, i, min);
            if (read <= 0) {
                return i3;
            }
            i3 += read;
            i += read;
            min = Math.min(min, i2 - i3);
        }
    }

    static int Get16m(byte[] bArr, int i) {
        return (bArr[i + 1] & UByte.MAX_VALUE) | ((bArr[i] & UByte.MAX_VALUE) << 8);
    }

    private void process_M_SOFn(byte[] bArr, int i) {
        if (bArr.length > 7) {
            this.mImageLength = Get16m(bArr, 3);
            this.mImageWidth = Get16m(bArr, 5);
        }
        this.mProcess = (short) i;
    }

    private void process_M_DQT(byte[] bArr, int i) {
        double d;
        int i2;
        byte b;
        int[] iArr = null;
        boolean z = true;
        double d2 = 0.0d;
        int i3 = 2;
        while (i3 < bArr.length) {
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            int i5 = b2 & 15;
            if (i5 < 2) {
                iArr = deftabs[i5];
            }
            boolean z2 = z;
            double d3 = d2;
            int i6 = 0;
            while (true) {
                d = 100.0d;
                if (i6 >= 64) {
                    break;
                }
                if ((b2 >> 4) != 0) {
                    int i7 = i4 + 1;
                    i2 = i7 + 1;
                    b = bArr[i7] + (bArr[i4] * 256);
                } else {
                    int i8 = i4 + 1;
                    b = bArr[i4];
                    i2 = i8;
                }
                if (iArr != null) {
                    double d4 = (double) b;
                    Double.isNaN(d4);
                    double d5 = (double) iArr[i6];
                    Double.isNaN(d5);
                    d3 += (d4 * 100.0d) / d5;
                    z2 = b != 1 ? false : z2;
                }
                i6++;
                i4 = i2;
            }
            if (iArr != null) {
                d2 = d3 / 64.0d;
                if (!z2) {
                    d = d2 <= 100.0d ? (200.0d - d2) / 2.0d : 5000.0d / d2;
                }
                if (i5 == 0) {
                    this.mQualityGuess = (int) (d + 0.5d);
                }
            } else {
                d2 = d3;
            }
            i3 = i4;
            z = z2;
        }
    }

    private void parseTiffHeader(CountedDataInputStream countedDataInputStream) throws IOException, ExifInvalidFormatException {
        short readShort = countedDataInputStream.readShort();
        if (18761 == readShort) {
            countedDataInputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        } else if (19789 == readShort) {
            countedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        } else {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
        if (countedDataInputStream.readShort() != 42) {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
    }

    private boolean isIfdRequested(int i) {
        switch (i) {
            case 0:
                if ((this.mOptions & 1) != 0) {
                    return true;
                }
                return false;
            case 1:
                if ((this.mOptions & 2) != 0) {
                    return true;
                }
                return false;
            case 2:
                if ((this.mOptions & 4) != 0) {
                    return true;
                }
                return false;
            case 3:
                if ((this.mOptions & 16) != 0) {
                    return true;
                }
                return false;
            case 4:
                return (this.mOptions & 8) != 0;
            default:
                return false;
        }
    }

    private boolean needToParseOffsetsInCurrentIfd() {
        switch (this.mIfdType) {
            case 0:
                if (isIfdRequested(2) || isIfdRequested(4) || isIfdRequested(3) || isIfdRequested(1)) {
                    return true;
                }
                return false;
            case 1:
                return isThumbnailRequested();
            case 2:
                return isIfdRequested(3);
            default:
                return false;
        }
    }

    private void registerIfd(int i, long j) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) j), new IfdEvent(i, isIfdRequested(i)));
    }

    /* access modifiers changed from: protected */
    public int read(byte[] bArr) throws IOException {
        return this.mTiffStream.read(bArr);
    }

    private boolean isThumbnailRequested() {
        return (this.mOptions & 32) != 0;
    }

    protected static ExifParser parse(InputStream inputStream, int i, ExifInterface exifInterface) throws IOException, ExifInvalidFormatException {
        return new ExifParser(inputStream, i, exifInterface);
    }

    /* access modifiers changed from: protected */
    public int next() throws IOException, ExifInvalidFormatException {
        if (this.mTiffStream == null) {
            return 5;
        }
        int readByteCount = this.mTiffStream.getReadByteCount();
        int i = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        if (readByteCount < i) {
            this.mTag = readTag();
            if (this.mTag == null) {
                return next();
            }
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                checkOffsetOrImageTag(this.mTag);
            }
            return 1;
        }
        if (readByteCount == i) {
            if (this.mIfdType == 0) {
                long readUnsignedLong = readUnsignedLong();
                if ((isIfdRequested(1) || isThumbnailRequested()) && readUnsignedLong != 0) {
                    registerIfd(1, readUnsignedLong);
                }
            } else {
                int intValue = this.mCorrespondingEvent.size() > 0 ? this.mCorrespondingEvent.firstEntry().getKey().intValue() - this.mTiffStream.getReadByteCount() : 4;
                if (intValue < 4) {
                    Log.w(TAG, "Invalid size of link to next IFD: " + intValue);
                } else {
                    long readUnsignedLong2 = readUnsignedLong();
                    if (readUnsignedLong2 != 0) {
                        Log.w(TAG, "Invalid link to next IFD: " + readUnsignedLong2);
                    }
                }
            }
        }
        while (this.mCorrespondingEvent.size() != 0) {
            Map.Entry<Integer, Object> pollFirstEntry = this.mCorrespondingEvent.pollFirstEntry();
            Object value = pollFirstEntry.getValue();
            try {
                skipTo(pollFirstEntry.getKey().intValue());
                if (value instanceof IfdEvent) {
                    IfdEvent ifdEvent = (IfdEvent) value;
                    this.mIfdType = ifdEvent.ifd;
                    this.mNumOfTagInIfd = this.mTiffStream.readUnsignedShort();
                    this.mIfdStartOffset = pollFirstEntry.getKey().intValue();
                    if ((this.mNumOfTagInIfd * 12) + this.mIfdStartOffset + 2 > this.mTiffStream.getEnd()) {
                        Log.w(TAG, "Invalid size of IFD " + this.mIfdType);
                        return 5;
                    }
                    this.mNeedToParseOffsetsInCurrentIfd = needToParseOffsetsInCurrentIfd();
                    if (ifdEvent.isRequested) {
                        return 0;
                    }
                    skipRemainingTagsInCurrentIfd();
                } else if (value instanceof ImageEvent) {
                    this.mImageEvent = (ImageEvent) value;
                    return this.mImageEvent.type;
                } else {
                    ExifTagEvent exifTagEvent = (ExifTagEvent) value;
                    this.mTag = exifTagEvent.tag;
                    if (this.mTag.getDataType() != 7) {
                        readFullTagValue(this.mTag);
                        checkOffsetOrImageTag(this.mTag);
                    }
                    if (exifTagEvent.isRequested) {
                        return 2;
                    }
                }
            } catch (IOException unused) {
                Log.w(TAG, "Failed to skip to data at: " + pollFirstEntry.getKey() + " for " + value.getClass().getName() + ", the file may be broken.");
            }
        }
        return 5;
    }

    /* access modifiers changed from: protected */
    public void skipRemainingTagsInCurrentIfd() throws IOException, ExifInvalidFormatException {
        int i = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        int readByteCount = this.mTiffStream.getReadByteCount();
        if (readByteCount <= i) {
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                while (readByteCount < i) {
                    this.mTag = readTag();
                    readByteCount += 12;
                    if (this.mTag != null) {
                        checkOffsetOrImageTag(this.mTag);
                    }
                }
            } else {
                skipTo(i);
            }
            long readUnsignedLong = readUnsignedLong();
            if (this.mIfdType != 0) {
                return;
            }
            if ((isIfdRequested(1) || isThumbnailRequested()) && readUnsignedLong > 0) {
                registerIfd(1, readUnsignedLong);
            }
        }
    }

    /* access modifiers changed from: protected */
    public ExifTag getTag() {
        return this.mTag;
    }

    public int getTagCountInCurrentIfd() {
        return this.mNumOfTagInIfd;
    }

    /* access modifiers changed from: protected */
    public int getCurrentIfd() {
        return this.mIfdType;
    }

    /* access modifiers changed from: protected */
    public int getStripIndex() {
        return this.mImageEvent.stripIndex;
    }

    /* access modifiers changed from: protected */
    public int getStripSize() {
        if (this.mStripSizeTag == null) {
            return 0;
        }
        return (int) this.mStripSizeTag.getValueAt(0);
    }

    /* access modifiers changed from: protected */
    public int getCompressedImageSize() {
        if (this.mJpegSizeTag == null) {
            return 0;
        }
        return (int) this.mJpegSizeTag.getValueAt(0);
    }

    private void skipTo(int i) throws IOException {
        this.mTiffStream.skipTo((long) i);
        while (!this.mCorrespondingEvent.isEmpty() && this.mCorrespondingEvent.firstKey().intValue() < i) {
            this.mCorrespondingEvent.pollFirstEntry();
        }
    }

    /* access modifiers changed from: protected */
    public void registerForTagValue(ExifTag exifTag) {
        if (exifTag.getOffset() >= this.mTiffStream.getReadByteCount()) {
            this.mCorrespondingEvent.put(Integer.valueOf(exifTag.getOffset()), new ExifTagEvent(exifTag, true));
        }
    }

    private void registerCompressedImage(long j) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) j), new ImageEvent(3));
    }

    private void registerUncompressedStrip(int i, long j) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) j), new ImageEvent(4, i));
    }

    private ExifTag readTag() throws IOException, ExifInvalidFormatException {
        short readShort = this.mTiffStream.readShort();
        short readShort2 = this.mTiffStream.readShort();
        long readUnsignedInt = this.mTiffStream.readUnsignedInt();
        if (readUnsignedInt > 2147483647L) {
            throw new ExifInvalidFormatException("Number of component is larger then Integer.MAX_VALUE");
        } else if (!ExifTag.isValidType(readShort2)) {
            Log.w(TAG, String.format("Tag %04x: Invalid data type %d", Short.valueOf(readShort), Short.valueOf(readShort2)));
            this.mTiffStream.skip(4);
            return null;
        } else {
            int i = (int) readUnsignedInt;
            ExifTag exifTag = new ExifTag(readShort, readShort2, i, this.mIfdType, i != 0);
            int dataSize = exifTag.getDataSize();
            if (dataSize > 4) {
                long readUnsignedInt2 = this.mTiffStream.readUnsignedInt();
                if (readUnsignedInt2 > 2147483647L) {
                    throw new ExifInvalidFormatException("offset is larger then Integer.MAX_VALUE");
                } else if (readUnsignedInt2 >= ((long) this.mIfd0Position) || readShort2 != 7) {
                    exifTag.setOffset((int) readUnsignedInt2);
                } else {
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.mDataAboveIfd0, ((int) readUnsignedInt2) - 8, bArr, 0, i);
                    exifTag.setValue(bArr);
                }
            } else {
                boolean hasDefinedCount = exifTag.hasDefinedCount();
                exifTag.setHasDefinedCount(false);
                readFullTagValue(exifTag);
                exifTag.setHasDefinedCount(hasDefinedCount);
                this.mTiffStream.skip((long) (4 - dataSize));
                exifTag.setOffset(this.mTiffStream.getReadByteCount() - 4);
            }
            return exifTag;
        }
    }

    private void checkOffsetOrImageTag(ExifTag exifTag) {
        if (exifTag.getComponentCount() != 0) {
            short tagId = exifTag.getTagId();
            int ifd = exifTag.getIfd();
            if (tagId != TAG_EXIF_IFD || !checkAllowed(ifd, ExifInterface.TAG_EXIF_IFD)) {
                if (tagId != TAG_GPS_IFD || !checkAllowed(ifd, ExifInterface.TAG_GPS_IFD)) {
                    if (tagId != TAG_INTEROPERABILITY_IFD || !checkAllowed(ifd, ExifInterface.TAG_INTEROPERABILITY_IFD)) {
                        if (tagId != TAG_JPEG_INTERCHANGE_FORMAT || !checkAllowed(ifd, ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)) {
                            if (tagId != TAG_JPEG_INTERCHANGE_FORMAT_LENGTH || !checkAllowed(ifd, ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)) {
                                if (tagId != TAG_STRIP_OFFSETS || !checkAllowed(ifd, ExifInterface.TAG_STRIP_OFFSETS)) {
                                    if (tagId == TAG_STRIP_BYTE_COUNTS && checkAllowed(ifd, ExifInterface.TAG_STRIP_BYTE_COUNTS) && isThumbnailRequested() && exifTag.hasValue()) {
                                        this.mStripSizeTag = exifTag;
                                    }
                                } else if (isThumbnailRequested()) {
                                    if (exifTag.hasValue()) {
                                        for (int i = 0; i < exifTag.getComponentCount(); i++) {
                                            if (exifTag.getDataType() == 3) {
                                                registerUncompressedStrip(i, exifTag.getValueAt(i));
                                            } else {
                                                registerUncompressedStrip(i, exifTag.getValueAt(i));
                                            }
                                        }
                                        return;
                                    }
                                    this.mCorrespondingEvent.put(Integer.valueOf(exifTag.getOffset()), new ExifTagEvent(exifTag, false));
                                }
                            } else if (isThumbnailRequested()) {
                                this.mJpegSizeTag = exifTag;
                            }
                        } else if (isThumbnailRequested()) {
                            registerCompressedImage(exifTag.getValueAt(0));
                        }
                    } else if (isIfdRequested(3)) {
                        registerIfd(3, exifTag.getValueAt(0));
                    }
                } else if (isIfdRequested(4)) {
                    registerIfd(4, exifTag.getValueAt(0));
                }
            } else if (isIfdRequested(2) || isIfdRequested(3)) {
                registerIfd(2, exifTag.getValueAt(0));
            }
        }
    }

    public boolean isDefinedTag(int i, int i2) {
        return this.mInterface.getTagInfo().get(ExifInterface.defineTag(i, (short) i2)) != 0;
    }

    public boolean checkAllowed(int i, int i2) {
        int i3 = this.mInterface.getTagInfo().get(i2);
        if (i3 == 0) {
            return false;
        }
        return ExifInterface.isIfdAllowed(i3, i);
    }

    /* access modifiers changed from: protected */
    public void readFullTagValue(ExifTag exifTag) throws IOException {
        short dataType = exifTag.getDataType();
        int componentCount = exifTag.getComponentCount();
        if (componentCount < 1711276032) {
            if (dataType == 2 || dataType == 7 || dataType == 1) {
                int componentCount2 = exifTag.getComponentCount();
                if (this.mCorrespondingEvent.size() > 0 && this.mCorrespondingEvent.firstEntry().getKey().intValue() < this.mTiffStream.getReadByteCount() + componentCount2) {
                    Object value = this.mCorrespondingEvent.firstEntry().getValue();
                    if (value instanceof ImageEvent) {
                        Log.w(TAG, "Thumbnail overlaps value for tag: \n" + exifTag.toString());
                        Map.Entry<Integer, Object> pollFirstEntry = this.mCorrespondingEvent.pollFirstEntry();
                        Log.w(TAG, "Invalid thumbnail offset: " + pollFirstEntry.getKey());
                    } else {
                        if (value instanceof IfdEvent) {
                            Log.w(TAG, "Ifd " + ((IfdEvent) value).ifd + " overlaps value for tag: \n" + exifTag.toString());
                        } else if (value instanceof ExifTagEvent) {
                            Log.w(TAG, "Tag value for tag: \n" + ((ExifTagEvent) value).tag.toString() + " overlaps value for tag: \n" + exifTag.toString());
                        }
                        int intValue = this.mCorrespondingEvent.firstEntry().getKey().intValue() - this.mTiffStream.getReadByteCount();
                        Log.w(TAG, "Invalid size of tag: \n" + exifTag.toString() + " setting count to: " + intValue);
                        exifTag.forceSetComponentCount(intValue);
                    }
                }
            }
            int i = 0;
            switch (exifTag.getDataType()) {
                case 1:
                case 7:
                    byte[] bArr = new byte[componentCount];
                    read(bArr);
                    exifTag.setValue(bArr);
                    return;
                case 2:
                    exifTag.setValue(readString(componentCount));
                    return;
                case 3:
                    int[] iArr = new int[componentCount];
                    int length = iArr.length;
                    while (i < length) {
                        iArr[i] = readUnsignedShort();
                        i++;
                    }
                    exifTag.setValue(iArr);
                    return;
                case 4:
                    long[] jArr = new long[componentCount];
                    int length2 = jArr.length;
                    while (i < length2) {
                        jArr[i] = readUnsignedLong();
                        i++;
                    }
                    exifTag.setValue(jArr);
                    return;
                case 5:
                    Rational[] rationalArr = new Rational[componentCount];
                    int length3 = rationalArr.length;
                    while (i < length3) {
                        rationalArr[i] = readUnsignedRational();
                        i++;
                    }
                    exifTag.setValue(rationalArr);
                    return;
                case 6:
                case 8:
                default:
                    return;
                case 9:
                    int[] iArr2 = new int[componentCount];
                    int length4 = iArr2.length;
                    while (i < length4) {
                        iArr2[i] = readLong();
                        i++;
                    }
                    exifTag.setValue(iArr2);
                    return;
                case 10:
                    Rational[] rationalArr2 = new Rational[componentCount];
                    int length5 = rationalArr2.length;
                    while (i < length5) {
                        rationalArr2[i] = readRational();
                        i++;
                    }
                    exifTag.setValue(rationalArr2);
                    return;
            }
        } else {
            throw new IOException("size out of bounds");
        }
    }

    /* access modifiers changed from: protected */
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.mTiffStream.read(bArr, i, i2);
    }

    /* access modifiers changed from: protected */
    public String readString(int i) throws IOException {
        return readString(i, US_ASCII);
    }

    /* access modifiers changed from: protected */
    public String readString(int i, Charset charset) throws IOException {
        return i > 0 ? this.mTiffStream.readString(i, charset) : "";
    }

    /* access modifiers changed from: protected */
    public int readUnsignedShort() throws IOException {
        return this.mTiffStream.readShort() & 65535;
    }

    /* access modifiers changed from: protected */
    public long readUnsignedLong() throws IOException {
        return ((long) readLong()) & 4294967295L;
    }

    /* access modifiers changed from: protected */
    public Rational readUnsignedRational() throws IOException {
        return new Rational(readUnsignedLong(), readUnsignedLong());
    }

    /* access modifiers changed from: protected */
    public int readLong() throws IOException {
        return this.mTiffStream.readInt();
    }

    /* access modifiers changed from: protected */
    public Rational readRational() throws IOException {
        return new Rational((long) readLong(), (long) readLong());
    }

    /* access modifiers changed from: protected */
    public ByteOrder getByteOrder() {
        if (this.mTiffStream != null) {
            return this.mTiffStream.getByteOrder();
        }
        return null;
    }

    public int getQualityGuess() {
        return this.mQualityGuess;
    }

    public int getImageWidth() {
        return this.mImageWidth;
    }

    public short getJpegProcess() {
        return this.mProcess;
    }

    public int getImageLength() {
        return this.mImageLength;
    }

    public List<Section> getSections() {
        return this.mSections;
    }

    public int getUncompressedDataPosition() {
        return this.mUncompressedDataPosition;
    }

    /* access modifiers changed from: private */
    public static class ImageEvent {
        int stripIndex;
        int type;

        ImageEvent(int i) {
            this.stripIndex = 0;
            this.type = i;
        }

        ImageEvent(int i, int i2) {
            this.type = i;
            this.stripIndex = i2;
        }
    }

    /* access modifiers changed from: private */
    public static class IfdEvent {
        int ifd;
        boolean isRequested;

        IfdEvent(int i, boolean z) {
            this.ifd = i;
            this.isRequested = z;
        }
    }

    /* access modifiers changed from: private */
    public static class ExifTagEvent {
        boolean isRequested;
        ExifTag tag;

        ExifTagEvent(ExifTag exifTag, boolean z) {
            this.tag = exifTag;
            this.isRequested = z;
        }
    }
}
