package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class EMail extends Schema {
    private static final String MAILTO = "mailto";
    private String email;

    public EMail() {
    }

    public EMail(String str) {
        this.email = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.toLowerCase().startsWith(MAILTO)) {
            throw new IllegalArgumentException("this is not a valid email code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.toLowerCase());
        if (parameters.containsKey(MAILTO)) {
            setEmail(parameters.get(MAILTO));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        return "mailto:" + this.email;
    }

    public static EMail parse(String str) {
        EMail eMail = new EMail();
        eMail.parseSchema(str);
        return eMail;
    }

    public String toString() {
        return generateString();
    }
}
