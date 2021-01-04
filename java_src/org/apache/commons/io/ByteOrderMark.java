package org.apache.commons.io;

import it.sephiroth.android.library.exif2.JpegHeader;
import java.io.Serializable;
import org.apache.commons.lang3.CharEncoding;

public class ByteOrderMark implements Serializable {
    public static final ByteOrderMark UTF_16BE = new ByteOrderMark(CharEncoding.UTF_16BE, JpegHeader.TAG_M_COM, 255);
    public static final ByteOrderMark UTF_16LE = new ByteOrderMark(CharEncoding.UTF_16LE, 255, JpegHeader.TAG_M_COM);
    public static final ByteOrderMark UTF_32BE = new ByteOrderMark("UTF-32BE", 0, 0, JpegHeader.TAG_M_COM, 255);
    public static final ByteOrderMark UTF_32LE = new ByteOrderMark("UTF-32LE", 255, JpegHeader.TAG_M_COM, 0, 0);
    public static final ByteOrderMark UTF_8 = new ByteOrderMark("UTF-8", 239, 187, 191);
    private static final long serialVersionUID = 1;
    private final int[] bytes;
    private final String charsetName;

    public ByteOrderMark(String str, int... iArr) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("No charsetName specified");
        } else if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("No bytes specified");
        } else {
            this.charsetName = str;
            this.bytes = new int[iArr.length];
            System.arraycopy(iArr, 0, this.bytes, 0, iArr.length);
        }
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public int length() {
        return this.bytes.length;
    }

    public int get(int i) {
        return this.bytes[i];
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[this.bytes.length];
        for (int i = 0; i < this.bytes.length; i++) {
            bArr[i] = (byte) this.bytes[i];
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ByteOrderMark)) {
            return false;
        }
        ByteOrderMark byteOrderMark = (ByteOrderMark) obj;
        if (this.bytes.length != byteOrderMark.length()) {
            return false;
        }
        for (int i = 0; i < this.bytes.length; i++) {
            if (this.bytes[i] != byteOrderMark.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = getClass().hashCode();
        for (int i : this.bytes) {
            hashCode += i;
        }
        return hashCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append(this.charsetName);
        sb.append(": ");
        for (int i = 0; i < this.bytes.length; i++) {
            if (i > 0) {
                sb.append(",");
            }
            sb.append("0x");
            sb.append(Integer.toHexString(this.bytes[i] & 255).toUpperCase());
        }
        sb.append(']');
        return sb.toString();
    }
}
