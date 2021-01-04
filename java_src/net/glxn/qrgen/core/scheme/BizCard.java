package net.glxn.qrgen.core.scheme;

public class BizCard extends Schema {
    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        return "NOT IMPLEMENTED!!!";
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        return null;
    }

    public String toString() {
        return generateString();
    }
}
