package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
import kotlin.UByte;

final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        long j = 1024;
        if (length != -1 && length <= 1024) {
            j = length;
        }
        int i = (int) j;
        extractorInput.peekFully(this.scratch.data, 0, 4);
        long readUnsignedInt = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (readUnsignedInt != 440786851) {
            int i2 = this.peekLength + 1;
            this.peekLength = i2;
            if (i2 == i) {
                return false;
            }
            extractorInput.peekFully(this.scratch.data, 0, 1);
            readUnsignedInt = ((readUnsignedInt << 8) & -256) | ((long) (this.scratch.data[0] & UByte.MAX_VALUE));
        }
        long readUint = readUint(extractorInput);
        long j2 = (long) this.peekLength;
        if (readUint == Long.MIN_VALUE || (length != -1 && j2 + readUint >= length)) {
            return false;
        }
        while (true) {
            long j3 = j2 + readUint;
            if (((long) this.peekLength) < j3) {
                if (readUint(extractorInput) == Long.MIN_VALUE) {
                    return false;
                }
                long readUint2 = readUint(extractorInput);
                if (readUint2 < 0 || readUint2 > 2147483647L) {
                    return false;
                }
                if (readUint2 != 0) {
                    extractorInput.advancePeekPosition((int) readUint2);
                    this.peekLength = (int) (((long) this.peekLength) + readUint2);
                }
            } else if (((long) this.peekLength) == j3) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    private long readUint(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = 0;
        extractorInput.peekFully(this.scratch.data, 0, 1);
        int i2 = this.scratch.data[0] & UByte.MAX_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ -1);
        extractorInput.peekFully(this.scratch.data, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.scratch.data[i] & UByte.MAX_VALUE) + (i5 << 8);
        }
        this.peekLength += i4 + 1;
        return (long) i5;
    }
}
