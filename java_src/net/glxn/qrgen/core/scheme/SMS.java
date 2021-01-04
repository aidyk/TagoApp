package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class SMS extends Schema {
    private static final String SMS = "sms";
    private String number;
    private String subject;

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public String getSubject() {
        return this.subject;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.trim().toLowerCase().startsWith(SMS)) {
            throw new IllegalArgumentException("this is not a valid sms code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.trim().toLowerCase());
        if (parameters.containsKey(SMS)) {
            setNumber(parameters.get(SMS));
        }
        if (getNumber() != null && parameters.containsKey(getNumber())) {
            setSubject(parameters.get(getNumber()));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        sb.append(this.number);
        if (this.subject != null) {
            str = SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR + this.subject;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static SMS parse(String str) {
        SMS sms = new SMS();
        sms.parseSchema(str);
        return sms;
    }
}
