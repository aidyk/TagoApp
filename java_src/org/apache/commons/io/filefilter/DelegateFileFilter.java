package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.Serializable;

public class DelegateFileFilter extends AbstractFileFilter implements Serializable {
    private final FileFilter fileFilter;
    private final FilenameFilter filenameFilter;

    public DelegateFileFilter(FilenameFilter filenameFilter2) {
        if (filenameFilter2 != null) {
            this.filenameFilter = filenameFilter2;
            this.fileFilter = null;
            return;
        }
        throw new IllegalArgumentException("The FilenameFilter must not be null");
    }

    public DelegateFileFilter(FileFilter fileFilter2) {
        if (fileFilter2 != null) {
            this.fileFilter = fileFilter2;
            this.filenameFilter = null;
            return;
        }
        throw new IllegalArgumentException("The FileFilter must not be null");
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file) {
        if (this.fileFilter != null) {
            return this.fileFilter.accept(file);
        }
        return super.accept(file);
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file, String str) {
        if (this.filenameFilter != null) {
            return this.filenameFilter.accept(file, str);
        }
        return super.accept(file, str);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        String obj = (this.fileFilter != null ? this.fileFilter : this.filenameFilter).toString();
        return super.toString() + "(" + obj + ")";
    }
}
