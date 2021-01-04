package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class Telephone extends Schema {
    private static final String TEL = "tel";
    private String telephone;

    public String getTelephone() {
        return this.telephone;
    }

    public void setTelephone(String str) {
        this.telephone = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.trim().toLowerCase().startsWith(TEL)) {
            throw new IllegalArgumentException("this is not a valid telephone code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.trim().toLowerCase());
        if (parameters.containsKey(TEL)) {
            setTelephone(parameters.get(TEL));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        return "tel:" + this.telephone;
    }

    public String toString() {
        return generateString();
    }

    public static Telephone parse(String str) {
        Telephone telephone2 = new Telephone();
        telephone2.parseSchema(str);
        return telephone2;
    }
}
