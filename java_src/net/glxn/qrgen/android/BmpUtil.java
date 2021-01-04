package net.glxn.qrgen.android;

import android.graphics.Bitmap;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class BmpUtil {
    private static final int BMP_WIDTH_OF_TIMES = 4;
    private static final int BYTE_PER_PIXEL = 3;

    public static boolean save(Bitmap bitmap, OutputStream outputStream) throws IOException {
        boolean z;
        byte[] bArr;
        long currentTimeMillis = System.currentTimeMillis();
        if (bitmap == null || outputStream == null) {
            return false;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * 3;
        int i2 = i % 4;
        if (i2 > 0) {
            byte[] bArr2 = new byte[(4 - i2)];
            for (int i3 = 0; i3 < bArr2.length; i3++) {
                bArr2[i3] = -1;
            }
            bArr = bArr2;
            z = true;
        } else {
            bArr = null;
            z = false;
        }
        int i4 = width * height;
        int[] iArr = new int[i4];
        int length = (i + (z ? bArr.length : 0)) * height;
        int i5 = length + 54;
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        ByteBuffer allocate = ByteBuffer.allocate(i5);
        allocate.put((byte) 66);
        allocate.put((byte) 77);
        allocate.put(writeInt(i5));
        allocate.put(writeShort(0));
        allocate.put(writeShort(0));
        allocate.put(writeInt(54));
        allocate.put(writeInt(40));
        allocate.put(writeInt(((!z || bArr.length != 3) ? 0 : 1) + width));
        allocate.put(writeInt(height));
        allocate.put(writeShort(1));
        allocate.put(writeShort(24));
        allocate.put(writeInt(0));
        allocate.put(writeInt(length));
        allocate.put(writeInt(0));
        allocate.put(writeInt(0));
        allocate.put(writeInt(0));
        allocate.put(writeInt(0));
        int i6 = (height - 1) * width;
        int i7 = i4;
        while (height > 0) {
            for (int i8 = i6; i8 < i7; i8++) {
                allocate.put((byte) (iArr[i8] & 255));
                allocate.put((byte) ((iArr[i8] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8));
                allocate.put((byte) ((iArr[i8] & 16711680) >> 16));
            }
            if (z) {
                allocate.put(bArr);
            }
            height--;
            i6 -= width;
            i7 = i6;
        }
        outputStream.write(allocate.array());
        outputStream.close();
        Log.v("BmpUtil", (System.currentTimeMillis() - currentTimeMillis) + " ms");
        return true;
    }

    private static byte[] writeInt(int i) throws IOException {
        return new byte[]{(byte) (i & 255), (byte) ((65280 & i) >> 8), (byte) ((16711680 & i) >> 16), (byte) ((i & -16777216) >> 24)};
    }

    private static byte[] writeShort(short s) throws IOException {
        return new byte[]{(byte) (s & 255), (byte) ((s & 65280) >> 8)};
    }
}
