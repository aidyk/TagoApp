package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class SizeFileFilter extends AbstractFileFilter implements Serializable {
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j) {
        this(j, true);
    }

    public SizeFileFilter(long j, boolean z) {
        if (j >= 0) {
            this.size = j;
            this.acceptLarger = z;
            return;
        }
        throw new IllegalArgumentException("The size must be non-negative");
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file) {
        boolean z = file.length() < this.size;
        if (!this.acceptLarger) {
            return z;
        }
        if (!z) {
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        String str = this.acceptLarger ? ">=" : "<";
        return super.toString() + "(" + str + this.size + ")";
    }
}
