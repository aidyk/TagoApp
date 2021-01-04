package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class TrueFileFilter implements IOFileFilter, Serializable {
    public static final IOFileFilter INSTANCE = TRUE;
    public static final IOFileFilter TRUE = new TrueFileFilter();

    @Override // org.apache.commons.io.filefilter.IOFileFilter
    public boolean accept(File file) {
        return true;
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter
    public boolean accept(File file, String str) {
        return true;
    }

    protected TrueFileFilter() {
    }
}
