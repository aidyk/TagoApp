package it.sephiroth.android.library.exif2;

import android.util.Log;
import it.sephiroth.android.library.exif2.ExifParser;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.CharEncoding;

/* access modifiers changed from: package-private */
public class ExifData {
    private static final String TAG = "ExifData";
    private static final byte[] USER_COMMENT_ASCII = {65, 83, 67, 73, 73, 0, 0, 0};
    private static final byte[] USER_COMMENT_JIS = {74, 73, 83, 0, 0, 0, 0, 0};
    private static final byte[] USER_COMMENT_UNICODE = {85, 78, 73, 67, 79, 68, 69, 0};
    private int imageLength = -1;
    private int imageWidth = -1;
    private short jpegProcess = 0;
    private final ByteOrder mByteOrder;
    private final IfdData[] mIfdDatas = new IfdData[5];
    private List<ExifParser.Section> mSections;
    private ArrayList<byte[]> mStripBytes = new ArrayList<>();
    private byte[] mThumbnail;
    public int mUncompressedDataPosition = 0;
    private int qualityGuess = 0;

    ExifData(ByteOrder byteOrder) {
        this.mByteOrder = byteOrder;
    }

    /* access modifiers changed from: protected */
    public byte[] getCompressedThumbnail() {
        return this.mThumbnail;
    }

    /* access modifiers changed from: protected */
    public void setCompressedThumbnail(byte[] bArr) {
        this.mThumbnail = bArr;
    }

    /* access modifiers changed from: protected */
    public boolean hasCompressedThumbnail() {
        return this.mThumbnail != null;
    }

    /* access modifiers changed from: protected */
    public void setStripBytes(int i, byte[] bArr) {
        if (i < this.mStripBytes.size()) {
            this.mStripBytes.set(i, bArr);
            return;
        }
        for (int size = this.mStripBytes.size(); size < i; size++) {
            this.mStripBytes.add(null);
        }
        this.mStripBytes.add(bArr);
    }

    /* access modifiers changed from: protected */
    public int getStripCount() {
        return this.mStripBytes.size();
    }

    /* access modifiers changed from: protected */
    public byte[] getStrip(int i) {
        return this.mStripBytes.get(i);
    }

    /* access modifiers changed from: protected */
    public boolean hasUncompressedStrip() {
        return this.mStripBytes.size() != 0;
    }

    /* access modifiers changed from: protected */
    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }

    /* access modifiers changed from: protected */
    public void addIfdData(IfdData ifdData) {
        this.mIfdDatas[ifdData.getId()] = ifdData;
    }

    /* access modifiers changed from: protected */
    public ExifTag getTag(short s, int i) {
        IfdData ifdData = this.mIfdDatas[i];
        if (ifdData == null) {
            return null;
        }
        return ifdData.getTag(s);
    }

    /* access modifiers changed from: protected */
    public ExifTag addTag(ExifTag exifTag) {
        if (exifTag != null) {
            return addTag(exifTag, exifTag.getIfd());
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public ExifTag addTag(ExifTag exifTag, int i) {
        if (exifTag == null || !ExifTag.isValidIfd(i)) {
            return null;
        }
        return getOrCreateIfdData(i).setTag(exifTag);
    }

    /* access modifiers changed from: protected */
    public IfdData getOrCreateIfdData(int i) {
        IfdData ifdData = this.mIfdDatas[i];
        if (ifdData != null) {
            return ifdData;
        }
        IfdData ifdData2 = new IfdData(i);
        this.mIfdDatas[i] = ifdData2;
        return ifdData2;
    }

    /* access modifiers changed from: protected */
    public void removeThumbnailData() {
        clearThumbnailAndStrips();
        this.mIfdDatas[1] = null;
    }

    /* access modifiers changed from: protected */
    public void clearThumbnailAndStrips() {
        this.mThumbnail = null;
        this.mStripBytes.clear();
    }

    /* access modifiers changed from: protected */
    public void removeTag(short s, int i) {
        IfdData ifdData = this.mIfdDatas[i];
        if (ifdData != null) {
            ifdData.removeTag(s);
        }
    }

    /* access modifiers changed from: protected */
    public String getUserComment() {
        ExifTag tag;
        IfdData ifdData = this.mIfdDatas[0];
        if (ifdData == null || (tag = ifdData.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_USER_COMMENT))) == null || tag.getComponentCount() < 8) {
            return null;
        }
        byte[] bArr = new byte[tag.getComponentCount()];
        tag.getBytes(bArr);
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, 0, bArr2, 0, 8);
        try {
            if (Arrays.equals(bArr2, USER_COMMENT_ASCII)) {
                return new String(bArr, 8, bArr.length - 8, CharEncoding.US_ASCII);
            }
            if (Arrays.equals(bArr2, USER_COMMENT_JIS)) {
                return new String(bArr, 8, bArr.length - 8, "EUC-JP");
            }
            if (Arrays.equals(bArr2, USER_COMMENT_UNICODE)) {
                return new String(bArr, 8, bArr.length - 8, "UTF-16");
            }
            return null;
        } catch (UnsupportedEncodingException unused) {
            Log.w(TAG, "Failed to decode the user comment");
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public List<ExifTag> getAllTags() {
        ExifTag[] allTags;
        ArrayList arrayList = new ArrayList();
        IfdData[] ifdDataArr = this.mIfdDatas;
        for (IfdData ifdData : ifdDataArr) {
            if (!(ifdData == null || (allTags = ifdData.getAllTags()) == null)) {
                for (ExifTag exifTag : allTags) {
                    arrayList.add(exifTag);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public List<ExifTag> getAllTagsForIfd(int i) {
        ExifTag[] allTags;
        IfdData ifdData = this.mIfdDatas[i];
        if (ifdData == null || (allTags = ifdData.getAllTags()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allTags.length);
        for (ExifTag exifTag : allTags) {
            arrayList.add(exifTag);
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public List<ExifTag> getAllTagsForTagId(short s) {
        ExifTag tag;
        ArrayList arrayList = new ArrayList();
        IfdData[] ifdDataArr = this.mIfdDatas;
        for (IfdData ifdData : ifdDataArr) {
            if (!(ifdData == null || (tag = ifdData.getTag(s)) == null)) {
                arrayList.add(tag);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ExifData)) {
            return false;
        }
        ExifData exifData = (ExifData) obj;
        if (!(exifData.mByteOrder == this.mByteOrder && exifData.mStripBytes.size() == this.mStripBytes.size() && Arrays.equals(exifData.mThumbnail, this.mThumbnail))) {
            return false;
        }
        for (int i = 0; i < this.mStripBytes.size(); i++) {
            if (!Arrays.equals(exifData.mStripBytes.get(i), this.mStripBytes.get(i))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            IfdData ifdData = exifData.getIfdData(i2);
            IfdData ifdData2 = getIfdData(i2);
            if (!(ifdData == ifdData2 || ifdData == null || ifdData.equals(ifdData2))) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public IfdData getIfdData(int i) {
        if (ExifTag.isValidIfd(i)) {
            return this.mIfdDatas[i];
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void setQualityGuess(int i) {
        this.qualityGuess = i;
    }

    public int getQualityGuess() {
        return this.qualityGuess;
    }

    /* access modifiers changed from: protected */
    public void setImageSize(int i, int i2) {
        this.imageWidth = i;
        this.imageLength = i2;
    }

    public int[] getImageSize() {
        return new int[]{this.imageWidth, this.imageLength};
    }

    public void setJpegProcess(short s) {
        this.jpegProcess = s;
    }

    public short getJpegProcess() {
        return this.jpegProcess;
    }

    public void setSections(List<ExifParser.Section> list) {
        this.mSections = list;
    }

    public List<ExifParser.Section> getSections() {
        return this.mSections;
    }
}
