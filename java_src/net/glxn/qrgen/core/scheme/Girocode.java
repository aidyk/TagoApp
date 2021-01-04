package net.glxn.qrgen.core.scheme;

public class Girocode extends Schema {
    protected static final String FUNCTION_SEPA_CREDIT_TRANSFER = "SCT";
    protected static final String SERVICE_HEADER = "BCD";
    protected static final String VERSION_1 = "001";
    private String amount;
    private String bic;
    private Encoding encoding;
    private String hint;
    private String iban;
    private String name;
    private String purposeCode;
    private String reference;
    private String text;

    public enum Encoding {
        UTF_8,
        ISO_8859_1,
        ISO_8859_2,
        ISO_8859_4,
        ISO_8859_5,
        ISO_8859_7,
        ISO_8859_10,
        ISO_8859_15;

        public String value() {
            return "" + (ordinal() + 1);
        }

        public String toString() {
            return value();
        }

        public static Encoding encodingFor(String str) {
            Encoding[] values = values();
            for (Encoding encoding : values) {
                if (encoding.value().equals(str)) {
                    return encoding;
                }
            }
            throw new IllegalArgumentException(String.format("unknown encoding value '%s'", str));
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getIban() {
        return this.iban;
    }

    public void setIban(String str) {
        this.iban = str;
    }

    public String getBic() {
        return this.bic;
    }

    public void setBic(String str) {
        this.bic = str;
    }

    public String getAmount() {
        return this.amount;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public String getPurposeCode() {
        return this.purposeCode;
    }

    public void setPurposeCode(String str) {
        this.purposeCode = str;
    }

    public String getReference() {
        return this.reference;
    }

    public void setReference(String str) {
        this.reference = str;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public Encoding getEncoding() {
        return this.encoding;
    }

    public void setEncoding(Encoding encoding2) {
        this.encoding = encoding2;
    }

    public String getHint() {
        return this.hint;
    }

    public void setHint(String str) {
        this.hint = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str != null) {
            String[] split = str.split(SchemeUtil.DEFAULT_PARAM_SEPARATOR);
            if (split.length < 6 || split[0].equals("SERVICE_HEADER")) {
                throw new IllegalArgumentException("this is not a valid Girocode: " + str);
            }
            setEncoding(Encoding.encodingFor(split[2]));
            setBic(split[4]);
            setName(split[5]);
            setIban(split[6]);
            if (split.length > 7) {
                setAmount(split[7]);
            }
            if (split.length > 8) {
                setPurposeCode(split[8]);
            }
            if (split.length > 9) {
                setReference(split[9]);
            }
            if (split.length > 10) {
                setText(split[10]);
            }
            if (split.length > 11) {
                setHint(split[11]);
            }
            return this;
        }
        throw new IllegalArgumentException("this is not a valid Girocode: " + str);
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        return SERVICE_HEADER + "\n" + VERSION_1 + "\n" + nullToEmptyString(getEncoding()) + "\n" + FUNCTION_SEPA_CREDIT_TRANSFER + "\n" + nullToEmptyString(getBic()) + "\n" + nullToEmptyString(getName()) + "\n" + nullToEmptyString(getIban()) + "\n" + nullToEmptyString(getAmount()) + "\n" + nullToEmptyString(getPurposeCode()) + "\n" + nullToEmptyString(getReference()) + "\n" + nullToEmptyString(getText()) + "\n" + nullToEmptyString(getHint()) + "\n";
    }

    private String nullToEmptyString(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public String toString() {
        return generateString();
    }

    public static Girocode parse(String str) {
        Girocode girocode = new Girocode();
        girocode.parseSchema(str);
        return girocode;
    }
}
