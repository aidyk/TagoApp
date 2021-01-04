package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;

public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    public MagicNumberFileFilter(byte[] bArr) {
        this(bArr, 0);
    }

    public MagicNumberFileFilter(String str) {
        this(str, 0);
    }

    public MagicNumberFileFilter(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        } else if (str.length() == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        } else if (j >= 0) {
            this.magicNumbers = str.getBytes();
            this.byteOffset = j;
        } else {
            throw new IllegalArgumentException("The offset cannot be negative");
        }
    }

    public MagicNumberFileFilter(byte[] bArr, long j) {
        if (bArr == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        } else if (bArr.length == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        } else if (j >= 0) {
            this.magicNumbers = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.magicNumbers, 0, bArr.length);
            this.byteOffset = j;
        } else {
            throw new IllegalArgumentException("The offset cannot be negative");
        }
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        byte[] bArr;
        if (file != null && file.isFile() && file.canRead()) {
            try {
                bArr = new byte[this.magicNumbers.length];
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException unused) {
                randomAccessFile = null;
                IOUtils.closeQuietly(randomAccessFile);
                return false;
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = null;
                IOUtils.closeQuietly(randomAccessFile);
                throw th;
            }
            try {
                randomAccessFile.seek(this.byteOffset);
                if (randomAccessFile.read(bArr) != this.magicNumbers.length) {
                    IOUtils.closeQuietly(randomAccessFile);
                    return false;
                }
                boolean equals = Arrays.equals(this.magicNumbers, bArr);
                IOUtils.closeQuietly(randomAccessFile);
                return equals;
            } catch (IOException unused2) {
                IOUtils.closeQuietly(randomAccessFile);
                return false;
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly(randomAccessFile);
                throw th;
            }
        }
        return false;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + "(" + new String(this.magicNumbers) + "," + this.byteOffset + ")";
    }
}
