package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class MeCard extends Schema {
    private static final String ADDRESS = "ADR";
    private static final String BEGIN_MECARD = "MECARD";
    private static final String EMAIL = "EMAIL";
    private static final String LINE_SEPARATOR = ";";
    private static final String NAME = "N";
    private static final String TEL = "TEL";
    private String address;
    private String email;
    private String name;
    private String telephone;

    public MeCard() {
    }

    public MeCard(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getTelephone() {
        return this.telephone;
    }

    public void setTelephone(String str) {
        this.telephone = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.startsWith(BEGIN_MECARD)) {
            throw new IllegalArgumentException("this is not a valid MeCard code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.replaceFirst("MECARD:", ""), LINE_SEPARATOR, SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
        if (parameters.containsKey("N")) {
            setName(parameters.get("N"));
        }
        if (parameters.containsKey(ADDRESS)) {
            setAddress(parameters.get(ADDRESS));
        }
        if (parameters.containsKey(TEL)) {
            setTelephone(parameters.get(TEL));
        }
        if (parameters.containsKey(EMAIL)) {
            setEmail(parameters.get(EMAIL));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder();
        sb.append(BEGIN_MECARD);
        sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
        if (this.name != null) {
            sb.append("N");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.name);
            sb.append(LINE_SEPARATOR);
        }
        if (this.address != null) {
            sb.append(ADDRESS);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.address);
            sb.append(LINE_SEPARATOR);
        }
        if (this.telephone != null) {
            sb.append(TEL);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.telephone);
            sb.append(LINE_SEPARATOR);
        }
        if (this.email != null) {
            sb.append(EMAIL);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.email);
            sb.append(LINE_SEPARATOR);
        }
        sb.append(LINE_SEPARATOR);
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static MeCard parse(String str) {
        MeCard meCard = new MeCard();
        meCard.parseSchema(str);
        return meCard;
    }
}
