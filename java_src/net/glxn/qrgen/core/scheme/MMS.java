package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class MMS extends Schema {
    private static final String MMS = "mms";
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
        if (str == null || !str.trim().toLowerCase().startsWith(MMS)) {
            throw new IllegalArgumentException("this is not a valid sms code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.trim().toLowerCase());
        if (parameters.containsKey(MMS)) {
            setNumber(parameters.get(MMS));
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
        sb.append("mms:");
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

    public static MMS parse(String str) {
        MMS mms = new MMS();
        mms.parseSchema(str);
        return mms;
    }
}
