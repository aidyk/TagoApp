package it.sephiroth.android.library.exif2;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
public class ExifReader {
    private static final String TAG = "ExifReader";
    private final ExifInterface mInterface;

    ExifReader(ExifInterface exifInterface) {
        this.mInterface = exifInterface;
    }

    /* access modifiers changed from: protected */
    public ExifData read(InputStream inputStream, int i) throws ExifInvalidFormatException, IOException {
        ExifParser parse = ExifParser.parse(inputStream, i, this.mInterface);
        ExifData exifData = new ExifData(parse.getByteOrder());
        exifData.setSections(parse.getSections());
        exifData.mUncompressedDataPosition = parse.getUncompressedDataPosition();
        exifData.setQualityGuess(parse.getQualityGuess());
        exifData.setJpegProcess(parse.getJpegProcess());
        int imageWidth = parse.getImageWidth();
        int imageLength = parse.getImageLength();
        if (imageWidth > 0 && imageLength > 0) {
            exifData.setImageSize(imageWidth, imageLength);
        }
        for (int next = parse.next(); next != 5; next = parse.next()) {
            switch (next) {
                case 0:
                    exifData.addIfdData(new IfdData(parse.getCurrentIfd()));
                    break;
                case 1:
                    ExifTag tag = parse.getTag();
                    if (tag.hasValue()) {
                        if (parse.isDefinedTag(tag.getIfd(), tag.getTagId())) {
                            exifData.getIfdData(tag.getIfd()).setTag(tag);
                            break;
                        } else {
                            Log.w(TAG, "skip tag because not registered in the tag table:" + tag);
                            break;
                        }
                    } else {
                        parse.registerForTagValue(tag);
                        break;
                    }
                case 2:
                    ExifTag tag2 = parse.getTag();
                    if (tag2.getDataType() == 7) {
                        parse.readFullTagValue(tag2);
                    }
                    exifData.getIfdData(tag2.getIfd()).setTag(tag2);
                    break;
                case 3:
                    byte[] bArr = new byte[parse.getCompressedImageSize()];
                    if (bArr.length == parse.read(bArr)) {
                        exifData.setCompressedThumbnail(bArr);
                        break;
                    } else {
                        Log.w(TAG, "Failed to read the compressed thumbnail");
                        break;
                    }
                case 4:
                    byte[] bArr2 = new byte[parse.getStripSize()];
                    if (bArr2.length == parse.read(bArr2)) {
                        exifData.setStripBytes(parse.getStripIndex(), bArr2);
                        break;
                    } else {
                        Log.w(TAG, "Failed to read the strip bytes");
                        break;
                    }
            }
        }
        return exifData;
    }
}
