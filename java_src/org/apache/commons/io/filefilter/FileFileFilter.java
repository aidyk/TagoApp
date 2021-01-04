package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class FileFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter FILE = new FileFileFilter();

    protected FileFileFilter() {
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file) {
        return file.isFile();
    }
}
