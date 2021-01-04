package it.sephiroth.android.library.exif2;

import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;

/* access modifiers changed from: package-private */
public class ExifOutputStream {
    private static final int EXIF_HEADER = 1165519206;
    private static final int MAX_EXIF_SIZE = 65535;
    private static final int STATE_SOI = 0;
    private static final int STREAMBUFFER_SIZE = 65536;
    private static final String TAG = "ExifOutputStream";
    private static final short TAG_SIZE = 12;
    private static final short TIFF_BIG_ENDIAN = 19789;
    private static final short TIFF_HEADER = 42;
    private static final short TIFF_HEADER_SIZE = 8;
    private static final short TIFF_LITTLE_ENDIAN = 18761;
    private ByteBuffer mBuffer = ByteBuffer.allocate(4);
    private ExifData mExifData;
    private final ExifInterface mInterface;

    protected ExifOutputStream(ExifInterface exifInterface) {
        this.mInterface = exifInterface;
    }

    /* access modifiers changed from: protected */
    public ExifData getExifData() {
        return this.mExifData;
    }

    /* access modifiers changed from: protected */
    public void setExifData(ExifData exifData) {
        this.mExifData = exifData;
    }

    private int requestByteToBuffer(int i, byte[] bArr, int i2, int i3) {
        int position = i - this.mBuffer.position();
        if (i3 <= position) {
            position = i3;
        }
        this.mBuffer.put(bArr, i2, position);
        return position;
    }

    public void writeExifData(OutputStream outputStream) throws IOException {
        if (this.mExifData != null) {
            Log.v(TAG, "Writing exif data...");
            ArrayList<ExifTag> stripNullValueTags = stripNullValueTags(this.mExifData);
            createRequiredIfdAndTag();
            int calculateAllOffset = calculateAllOffset() + 8;
            if (calculateAllOffset <= 65535) {
                OrderedDataOutputStream orderedDataOutputStream = new OrderedDataOutputStream(new BufferedOutputStream(outputStream, 65536));
                orderedDataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
                orderedDataOutputStream.write(255);
                orderedDataOutputStream.write(JpegHeader.TAG_M_EXIF);
                orderedDataOutputStream.writeShort((short) calculateAllOffset);
                orderedDataOutputStream.writeInt(EXIF_HEADER);
                orderedDataOutputStream.writeShort(0);
                if (this.mExifData.getByteOrder() == ByteOrder.BIG_ENDIAN) {
                    orderedDataOutputStream.writeShort(TIFF_BIG_ENDIAN);
                } else {
                    orderedDataOutputStream.writeShort(TIFF_LITTLE_ENDIAN);
                }
                orderedDataOutputStream.setByteOrder(this.mExifData.getByteOrder());
                orderedDataOutputStream.writeShort(TIFF_HEADER);
                orderedDataOutputStream.writeInt(8);
                writeAllTags(orderedDataOutputStream);
                writeThumbnail(orderedDataOutputStream);
                Iterator<ExifTag> it2 = stripNullValueTags.iterator();
                while (it2.hasNext()) {
                    this.mExifData.addTag(it2.next());
                }
                orderedDataOutputStream.flush();
                return;
            }
            throw new IOException("Exif header is too large (>64Kb)");
        }
    }

    private ArrayList<ExifTag> stripNullValueTags(ExifData exifData) {
        ArrayList<ExifTag> arrayList = new ArrayList<>();
        for (ExifTag exifTag : exifData.getAllTags()) {
            if (exifTag.getValue() == null && !ExifInterface.isOffsetTag(exifTag.getTagId())) {
                exifData.removeTag(exifTag.getTagId(), exifTag.getIfd());
                arrayList.add(exifTag);
            }
        }
        return arrayList;
    }

    private void writeThumbnail(OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        if (this.mExifData.hasCompressedThumbnail()) {
            Log.d(TAG, "writing thumbnail..");
            orderedDataOutputStream.write(this.mExifData.getCompressedThumbnail());
        } else if (this.mExifData.hasUncompressedStrip()) {
            Log.d(TAG, "writing uncompressed strip..");
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                orderedDataOutputStream.write(this.mExifData.getStrip(i));
            }
        }
    }

    private void writeAllTags(OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        writeIfd(this.mExifData.getIfdData(0), orderedDataOutputStream);
        writeIfd(this.mExifData.getIfdData(2), orderedDataOutputStream);
        IfdData ifdData = this.mExifData.getIfdData(3);
        if (ifdData != null) {
            writeIfd(ifdData, orderedDataOutputStream);
        }
        IfdData ifdData2 = this.mExifData.getIfdData(4);
        if (ifdData2 != null) {
            writeIfd(ifdData2, orderedDataOutputStream);
        }
        if (this.mExifData.getIfdData(1) != null) {
            writeIfd(this.mExifData.getIfdData(1), orderedDataOutputStream);
        }
    }

    private void writeIfd(IfdData ifdData, OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        ExifTag[] allTags = ifdData.getAllTags();
        orderedDataOutputStream.writeShort((short) allTags.length);
        for (ExifTag exifTag : allTags) {
            orderedDataOutputStream.writeShort(exifTag.getTagId());
            orderedDataOutputStream.writeShort(exifTag.getDataType());
            orderedDataOutputStream.writeInt(exifTag.getComponentCount());
            if (exifTag.getDataSize() > 4) {
                orderedDataOutputStream.writeInt(exifTag.getOffset());
            } else {
                writeTagValue(exifTag, orderedDataOutputStream);
                int dataSize = 4 - exifTag.getDataSize();
                for (int i = 0; i < dataSize; i++) {
                    orderedDataOutputStream.write(0);
                }
            }
        }
        orderedDataOutputStream.writeInt(ifdData.getOffsetToNextIfd());
        for (ExifTag exifTag2 : allTags) {
            if (exifTag2.getDataSize() > 4) {
                writeTagValue(exifTag2, orderedDataOutputStream);
            }
        }
    }

    private int calculateOffsetOfIfd(IfdData ifdData, int i) {
        int tagCount = i + (ifdData.getTagCount() * 12) + 2 + 4;
        ExifTag[] allTags = ifdData.getAllTags();
        for (ExifTag exifTag : allTags) {
            if (exifTag.getDataSize() > 4) {
                exifTag.setOffset(tagCount);
                tagCount += exifTag.getDataSize();
            }
        }
        return tagCount;
    }

    private void createRequiredIfdAndTag() throws IOException {
        IfdData ifdData = this.mExifData.getIfdData(0);
        if (ifdData == null) {
            ifdData = new IfdData(0);
            this.mExifData.addIfdData(ifdData);
        }
        ExifTag buildUninitializedTag = this.mInterface.buildUninitializedTag(ExifInterface.TAG_EXIF_IFD);
        if (buildUninitializedTag != null) {
            ifdData.setTag(buildUninitializedTag);
            IfdData ifdData2 = this.mExifData.getIfdData(2);
            if (ifdData2 == null) {
                ifdData2 = new IfdData(2);
                this.mExifData.addIfdData(ifdData2);
            }
            if (this.mExifData.getIfdData(4) != null) {
                ExifTag buildUninitializedTag2 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_GPS_IFD);
                if (buildUninitializedTag2 != null) {
                    ifdData.setTag(buildUninitializedTag2);
                } else {
                    throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_GPS_IFD);
                }
            }
            if (this.mExifData.getIfdData(3) != null) {
                ExifTag buildUninitializedTag3 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_INTEROPERABILITY_IFD);
                if (buildUninitializedTag3 != null) {
                    ifdData2.setTag(buildUninitializedTag3);
                } else {
                    throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_INTEROPERABILITY_IFD);
                }
            }
            IfdData ifdData3 = this.mExifData.getIfdData(1);
            if (this.mExifData.hasCompressedThumbnail()) {
                if (ifdData3 == null) {
                    ifdData3 = new IfdData(1);
                    this.mExifData.addIfdData(ifdData3);
                }
                ExifTag buildUninitializedTag4 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
                if (buildUninitializedTag4 != null) {
                    ifdData3.setTag(buildUninitializedTag4);
                    ExifTag buildUninitializedTag5 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
                    if (buildUninitializedTag5 != null) {
                        buildUninitializedTag5.setValue(this.mExifData.getCompressedThumbnail().length);
                        ifdData3.setTag(buildUninitializedTag5);
                        ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS));
                        ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS));
                        return;
                    }
                    throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
                }
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            } else if (this.mExifData.hasUncompressedStrip()) {
                if (ifdData3 == null) {
                    ifdData3 = new IfdData(1);
                    this.mExifData.addIfdData(ifdData3);
                }
                int stripCount = this.mExifData.getStripCount();
                ExifTag buildUninitializedTag6 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_STRIP_OFFSETS);
                if (buildUninitializedTag6 != null) {
                    ExifTag buildUninitializedTag7 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_STRIP_BYTE_COUNTS);
                    if (buildUninitializedTag7 != null) {
                        long[] jArr = new long[stripCount];
                        for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                            jArr[i] = (long) this.mExifData.getStrip(i).length;
                        }
                        buildUninitializedTag7.setValue(jArr);
                        ifdData3.setTag(buildUninitializedTag6);
                        ifdData3.setTag(buildUninitializedTag7);
                        ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
                        ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
                        return;
                    }
                    throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_STRIP_BYTE_COUNTS);
                }
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_STRIP_OFFSETS);
            } else if (ifdData3 != null) {
                ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS));
                ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS));
                ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
                ifdData3.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
            }
        } else {
            throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_EXIF_IFD);
        }
    }

    private int calculateAllOffset() {
        IfdData ifdData = this.mExifData.getIfdData(0);
        int calculateOffsetOfIfd = calculateOffsetOfIfd(ifdData, 8);
        ifdData.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_EXIF_IFD)).setValue(calculateOffsetOfIfd);
        IfdData ifdData2 = this.mExifData.getIfdData(2);
        int calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData2, calculateOffsetOfIfd);
        IfdData ifdData3 = this.mExifData.getIfdData(3);
        if (ifdData3 != null) {
            ifdData2.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_INTEROPERABILITY_IFD)).setValue(calculateOffsetOfIfd2);
            calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData3, calculateOffsetOfIfd2);
        }
        IfdData ifdData4 = this.mExifData.getIfdData(4);
        if (ifdData4 != null) {
            ifdData.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_GPS_IFD)).setValue(calculateOffsetOfIfd2);
            calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData4, calculateOffsetOfIfd2);
        }
        IfdData ifdData5 = this.mExifData.getIfdData(1);
        if (ifdData5 != null) {
            ifdData.setOffsetToNextIfd(calculateOffsetOfIfd2);
            calculateOffsetOfIfd2 = calculateOffsetOfIfd(ifdData5, calculateOffsetOfIfd2);
        }
        if (this.mExifData.hasCompressedThumbnail()) {
            ifdData5.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)).setValue(calculateOffsetOfIfd2);
            return calculateOffsetOfIfd2 + this.mExifData.getCompressedThumbnail().length;
        } else if (!this.mExifData.hasUncompressedStrip()) {
            return calculateOffsetOfIfd2;
        } else {
            long[] jArr = new long[this.mExifData.getStripCount()];
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                jArr[i] = (long) calculateOffsetOfIfd2;
                calculateOffsetOfIfd2 += this.mExifData.getStrip(i).length;
            }
            ifdData5.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS)).setValue(jArr);
            return calculateOffsetOfIfd2;
        }
    }

    static void writeTagValue(ExifTag exifTag, OrderedDataOutputStream orderedDataOutputStream) throws IOException {
        int i = 0;
        switch (exifTag.getDataType()) {
            case 1:
            case 7:
                byte[] bArr = new byte[exifTag.getComponentCount()];
                exifTag.getBytes(bArr);
                orderedDataOutputStream.write(bArr);
                return;
            case 2:
                byte[] stringByte = exifTag.getStringByte();
                if (stringByte.length == exifTag.getComponentCount()) {
                    stringByte[stringByte.length - 1] = 0;
                    orderedDataOutputStream.write(stringByte);
                    return;
                }
                orderedDataOutputStream.write(stringByte);
                orderedDataOutputStream.write(0);
                return;
            case 3:
                int componentCount = exifTag.getComponentCount();
                while (i < componentCount) {
                    orderedDataOutputStream.writeShort((short) ((int) exifTag.getValueAt(i)));
                    i++;
                }
                return;
            case 4:
            case 9:
                int componentCount2 = exifTag.getComponentCount();
                while (i < componentCount2) {
                    orderedDataOutputStream.writeInt((int) exifTag.getValueAt(i));
                    i++;
                }
                return;
            case 5:
            case 10:
                int componentCount3 = exifTag.getComponentCount();
                while (i < componentCount3) {
                    orderedDataOutputStream.writeRational(exifTag.getRational(i));
                    i++;
                }
                return;
            case 6:
            case 8:
            default:
                return;
        }
    }
}
