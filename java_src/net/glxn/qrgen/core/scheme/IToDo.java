package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class IToDo extends SubSchema {
    private static final String BEGIN_TODO = "BEGIN:VTODO";
    public static final String NAME = "VTODO";

    public static SubSchema parse(Map<String, String> map, String str) {
        return null;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public SubSchema parseSchema(Map<String, String> map, String str) {
        return null;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public String generateString() {
        return BEGIN_TODO + "\n" + "\n" + "END:VTODO";
    }

    public String toString() {
        return generateString();
    }
}
