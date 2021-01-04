package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class CanWriteFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter CANNOT_WRITE = new NotFileFilter(CAN_WRITE);
    public static final IOFileFilter CAN_WRITE = new CanWriteFileFilter();

    protected CanWriteFileFilter() {
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file) {
        return file.canWrite();
    }
}
