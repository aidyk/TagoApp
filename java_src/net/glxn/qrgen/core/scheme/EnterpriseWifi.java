package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class EnterpriseWifi extends Wifi {
    public static final String EAP = "E";
    public static final String PHASE = "PH";
    public static final String USER = "U";
    private String eap;
    private String phase;
    private String user;

    public EnterpriseWifi withUser(String str) {
        this.user = str;
        return this;
    }

    public void setUser(String str) {
        withUser(str);
    }

    public String getUser() {
        return this.user;
    }

    public EnterpriseWifi withEap(String str) {
        this.eap = str;
        return this;
    }

    public void setEap(String str) {
        withEap(str);
    }

    public String getEap() {
        return this.eap;
    }

    public EnterpriseWifi withPhase(String str) {
        this.phase = str;
        return this;
    }

    public void setPhase(String str) {
        withPhase(str);
    }

    public String getPhase() {
        return this.phase;
    }

    @Override // net.glxn.qrgen.core.scheme.Wifi, net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.startsWith(Wifi.WIFI_PROTOCOL_HEADER)) {
            throw new IllegalArgumentException("this is not a valid WIFI code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.substring(Wifi.WIFI_PROTOCOL_HEADER.length()), "(?<!\\\\);");
        if (parameters.containsKey("S")) {
            setSsid(unescape(parameters.get("S")));
        }
        if (parameters.containsKey(Wifi.PSK)) {
            setPsk(unescape(parameters.get(Wifi.PSK)));
        }
        if (parameters.containsKey(USER)) {
            setUser(unescape(parameters.get(USER)));
        }
        if (parameters.containsKey("E")) {
            setEap(unescape(parameters.get("E")));
        }
        if (parameters.containsKey(PHASE)) {
            setPhase(unescape(parameters.get(PHASE)));
        }
        if (parameters.containsKey(Wifi.HIDDEN)) {
            setHidden(parameters.get(Wifi.HIDDEN));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Wifi, net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder(Wifi.WIFI_PROTOCOL_HEADER);
        if (getSsid() != null) {
            sb.append("S");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getSsid()));
            sb.append(";");
        }
        if (getUser() != null) {
            sb.append(USER);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getUser()));
            sb.append(";");
        }
        if (getPsk() != null) {
            sb.append(Wifi.PSK);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getPsk()));
            sb.append(";");
        }
        if (getEap() != null) {
            sb.append("E");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getEap()));
            sb.append(";");
        }
        if (getPhase() != null) {
            sb.append(PHASE);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(escape(getPhase()));
            sb.append(";");
        }
        sb.append(Wifi.HIDDEN);
        sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
        sb.append(isHidden());
        sb.append(";");
        return sb.toString();
    }

    @Override // net.glxn.qrgen.core.scheme.Wifi
    public String toString() {
        return generateString();
    }

    public static EnterpriseWifi parse(String str) {
        EnterpriseWifi enterpriseWifi = new EnterpriseWifi();
        enterpriseWifi.parseSchema(str);
        return enterpriseWifi;
    }

    public static String escape(String str) {
        return str.replace("\\", "\\\\").replace(",", "\\,").replace(";", "\\;").replace(".", "\\.").replace("\"", "\\\"").replace("'", "\\'");
    }

    public static String unescape(String str) {
        return str.replace("\\\\", "\\").replace("\\,", ",").replace("\\;", ";").replace("\\.", ".").replace("\\\"", "\"").replace("\\'", "'");
    }
}
