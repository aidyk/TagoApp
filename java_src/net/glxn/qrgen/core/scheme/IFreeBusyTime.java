package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class IFreeBusyTime extends SubSchema {
    private static final String BEGIN_TODO = "BEGIN:VFREEBUSY";
    public static final String NAME = "VFREEBUSY";

    public static SubSchema parse(Map<String, String> map, String str) {
        return null;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public SubSchema parseSchema(Map<String, String> map, String str) {
        return null;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public String generateString() {
        return BEGIN_TODO + "\n" + "\n" + "END:VFREEBUSY";
    }

    public String toString() {
        return generateString();
    }
}
