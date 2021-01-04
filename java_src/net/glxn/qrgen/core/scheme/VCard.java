package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class VCard extends Schema {
    private static final String ADDRESS = "ADR";
    private static final String BEGIN_VCARD = "BEGIN:VCARD";
    private static final String COMPANY = "ORG";
    private static final String EMAIL = "EMAIL";
    private static final String NAME = "N";
    private static final String NOTE = "NOTE";
    private static final String PHONE = "TEL";
    private static final String TITLE = "TITLE";
    private static final String WEB = "URL";
    private String address;
    private String company;
    private String email;
    private String name;
    private String note;
    private String phoneNumber;
    private String title;
    private String website;

    public VCard() {
    }

    public VCard(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public VCard setName(String str) {
        this.name = str;
        return this;
    }

    public String getCompany() {
        return this.company;
    }

    public VCard setCompany(String str) {
        this.company = str;
        return this;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public VCard setPhoneNumber(String str) {
        this.phoneNumber = str;
        return this;
    }

    public String getTitle() {
        return this.title;
    }

    public VCard setTitle(String str) {
        this.title = str;
        return this;
    }

    public String getEmail() {
        return this.email;
    }

    public VCard setEmail(String str) {
        this.email = str;
        return this;
    }

    public String getAddress() {
        return this.address;
    }

    public VCard setAddress(String str) {
        this.address = str;
        return this;
    }

    public String getWebsite() {
        return this.website;
    }

    public VCard setWebsite(String str) {
        this.website = str;
        return this;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String str) {
        this.note = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.startsWith(BEGIN_VCARD)) {
            throw new IllegalArgumentException("this is not a valid VCARD code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str);
        if (parameters.containsKey("N")) {
            setName(parameters.get("N"));
        }
        if (parameters.containsKey("TITLE")) {
            setTitle(parameters.get("TITLE"));
        }
        if (parameters.containsKey(COMPANY)) {
            setCompany(parameters.get(COMPANY));
        }
        if (parameters.containsKey(ADDRESS)) {
            setAddress(parameters.get(ADDRESS));
        }
        if (parameters.containsKey(EMAIL)) {
            setEmail(parameters.get(EMAIL));
        }
        if (parameters.containsKey(WEB)) {
            setWebsite(parameters.get(WEB));
        }
        if (parameters.containsKey(PHONE)) {
            setPhoneNumber(parameters.get(PHONE));
        }
        if (parameters.containsKey(NOTE)) {
            setNote(parameters.get(NOTE));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder();
        sb.append(BEGIN_VCARD);
        sb.append("\n");
        sb.append("VERSION:3.0");
        sb.append("\n");
        if (this.name != null) {
            sb.append("N");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.name);
        }
        if (this.company != null) {
            sb.append("\n");
            sb.append(COMPANY);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.company);
        }
        if (this.title != null) {
            sb.append("\n");
            sb.append("TITLE");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.title);
        }
        if (this.phoneNumber != null) {
            sb.append("\n");
            sb.append(PHONE);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.phoneNumber);
        }
        if (this.website != null) {
            sb.append("\n");
            sb.append(WEB);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.website);
        }
        if (this.email != null) {
            sb.append("\n");
            sb.append(EMAIL);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.email);
        }
        if (this.address != null) {
            sb.append("\n");
            sb.append(ADDRESS);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.address);
        }
        if (this.note != null) {
            sb.append("\n");
            sb.append(NOTE);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.note);
        }
        sb.append("\n");
        sb.append("END:VCARD");
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static VCard parse(String str) {
        VCard vCard = new VCard();
        vCard.parseSchema(str);
        return vCard;
    }
}
