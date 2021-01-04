package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class Wifi extends Schema {
    public static final String AUTHENTICATION = "T";
    public static final String HIDDEN = "H";
    public static final String PSK = "P";
    public static final String SSID = "S";
    public static final String WIFI_PROTOCOL_HEADER = "WIFI:";
    private String authentication;
    private boolean hidden = false;
    private String psk;
    private String ssid;

    public enum Authentication {
        WEP,
        WPA,
        nopass
    }

    public String getAuthentication() {
        return this.authentication;
    }

    public void setAuthentication(Authentication authentication2) {
        setAuthentication(authentication2.toString());
    }

    public void setAuthentication(String str) {
        this.authentication = str;
    }

    public Wifi withAuthentication(Authentication authentication2) {
        setAuthentication(authentication2);
        return this;
    }

    public String getSsid() {
        return this.ssid;
    }

    public void setSsid(String str) {
        this.ssid = str;
    }

    public Wifi withSsid(String str) {
        setSsid(str);
        return this;
    }

    public String getPsk() {
        return this.psk;
    }

    public void setPsk(String str) {
        this.psk = str;
    }

    public Wifi withPsk(String str) {
        setPsk(str);
        return this;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public void setHidden(String str) {
        setHidden(Boolean.valueOf(str).booleanValue());
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public Wifi withHidden(boolean z) {
        setHidden(z);
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.startsWith(WIFI_PROTOCOL_HEADER)) {
            throw new IllegalArgumentException("this is not a valid WIFI code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.substring(WIFI_PROTOCOL_HEADER.length()), "(?<!\\\\);");
        if (parameters.containsKey("S")) {
            setSsid(unescape(parameters.get("S")));
        }
        if (parameters.containsKey("T")) {
            setAuthentication(parameters.get("T"));
        }
        if (parameters.containsKey(PSK)) {
            setPsk(unescape(parameters.get(PSK)));
        }
        if (parameters.containsKey(HIDDEN)) {
            setHidden(parameters.get(HIDDEN));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder(WIFI_PROTOCOL_HEADER);
        if (getSsid() != null) {
            sb.append("S");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getSsid()));
            sb.append(";");
        }
        if (getAuthentication() != null) {
            sb.append("T");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(getAuthentication());
            sb.append(";");
        }
        if (getPsk() != null) {
            sb.append(PSK);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getPsk()));
            sb.append(";");
        }
        sb.append(HIDDEN);
        sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
        sb.append(isHidden());
        sb.append(";");
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static Wifi parse(String str) {
        Wifi wifi = new Wifi();
        wifi.parseSchema(str);
        return wifi;
    }

    public static String escape(String str) {
        return str.replace("\\", "\\\\").replace(",", "\\,").replace(";", "\\;").replace(".", "\\.").replace("\"", "\\\"").replace("'", "\\'");
    }

    public static String unescape(String str) {
        return str.replace("\\\\", "\\").replace("\\,", ",").replace("\\;", ";").replace("\\.", ".").replace("\\\"", "\"").replace("\\'", "'");
    }
}
