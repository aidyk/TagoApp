package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class IJournal extends SubSchema {
    private static final String BEGIN_TODO = "BEGIN:VJOURNAL";
    public static final String NAME = "VJOURNAL";

    public static SubSchema parse(Map<String, String> map, String str) {
        return null;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public SubSchema parseSchema(Map<String, String> map, String str) {
        return null;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public String generateString() {
        return BEGIN_TODO + "\n" + "\n" + "END:VJOURNAL";
    }

    public String toString() {
        return generateString();
    }
}
