package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

public class UnicodeEscaper extends CodePointTranslator {
    private final int above;
    private final int below;
    private final boolean between;

    public UnicodeEscaper() {
        this(0, Integer.MAX_VALUE, true);
    }

    protected UnicodeEscaper(int i, int i2, boolean z) {
        this.below = i;
        this.above = i2;
        this.between = z;
    }

    public static UnicodeEscaper below(int i) {
        return outsideOf(i, Integer.MAX_VALUE);
    }

    public static UnicodeEscaper above(int i) {
        return outsideOf(0, i);
    }

    public static UnicodeEscaper outsideOf(int i, int i2) {
        return new UnicodeEscaper(i, i2, false);
    }

    public static UnicodeEscaper between(int i, int i2) {
        return new UnicodeEscaper(i, i2, true);
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.between) {
            if (i < this.below || i > this.above) {
                return false;
            }
        } else if (i >= this.below && i <= this.above) {
            return false;
        }
        if (i > 65535) {
            writer.write(toUtf16Escape(i));
            return true;
        } else if (i > 4095) {
            writer.write("\\u" + hex(i));
            return true;
        } else if (i > 255) {
            writer.write("\\u0" + hex(i));
            return true;
        } else if (i > 15) {
            writer.write("\\u00" + hex(i));
            return true;
        } else {
            writer.write("\\u000" + hex(i));
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public String toUtf16Escape(int i) {
        return "\\u" + hex(i);
    }
}
