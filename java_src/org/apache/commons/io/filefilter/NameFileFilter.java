package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

public class NameFileFilter extends AbstractFileFilter implements Serializable {
    private final IOCase caseSensitivity;
    private final String[] names;

    public NameFileFilter(String str) {
        this(str, (IOCase) null);
    }

    public NameFileFilter(String str, IOCase iOCase) {
        if (str != null) {
            this.names = new String[]{str};
            this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
            return;
        }
        throw new IllegalArgumentException("The wildcard must not be null");
    }

    public NameFileFilter(String[] strArr) {
        this(strArr, (IOCase) null);
    }

    public NameFileFilter(String[] strArr, IOCase iOCase) {
        if (strArr != null) {
            this.names = new String[strArr.length];
            System.arraycopy(strArr, 0, this.names, 0, strArr.length);
            this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
            return;
        }
        throw new IllegalArgumentException("The array of names must not be null");
    }

    public NameFileFilter(List<String> list) {
        this(list, (IOCase) null);
    }

    public NameFileFilter(List<String> list, IOCase iOCase) {
        if (list != null) {
            this.names = (String[]) list.toArray(new String[list.size()]);
            this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
            return;
        }
        throw new IllegalArgumentException("The list of names must not be null");
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file) {
        String name = file.getName();
        for (String str : this.names) {
            if (this.caseSensitivity.checkEquals(name, str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.filefilter.AbstractFileFilter
    public boolean accept(File file, String str) {
        for (String str2 : this.names) {
            if (this.caseSensitivity.checkEquals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        if (this.names != null) {
            for (int i = 0; i < this.names.length; i++) {
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(this.names[i]);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
