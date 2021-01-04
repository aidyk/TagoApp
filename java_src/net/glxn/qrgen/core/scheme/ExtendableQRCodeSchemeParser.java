package net.glxn.qrgen.core.scheme;

import java.io.UnsupportedEncodingException;
import java.util.LinkedHashSet;
import java.util.Set;

public class ExtendableQRCodeSchemeParser implements QRCodeSchemeParser {
    private Set<QRCodeSchemeParser> parser;

    @Override // net.glxn.qrgen.core.scheme.QRCodeSchemeParser
    public Set<Class<? extends Schema>> getSupportedSchemes() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (QRCodeSchemeParser qRCodeSchemeParser : getParser()) {
            linkedHashSet.addAll(qRCodeSchemeParser.getSupportedSchemes());
        }
        return linkedHashSet;
    }

    @Override // net.glxn.qrgen.core.scheme.QRCodeSchemeParser
    public Object parse(String str) throws UnsupportedEncodingException {
        for (QRCodeSchemeParser qRCodeSchemeParser : getParser()) {
            try {
                return qRCodeSchemeParser.parse(str);
            } catch (UnsupportedEncodingException unused) {
            }
        }
        throw new UnsupportedEncodingException("unkonwn QR code scheme: " + str);
    }

    /* access modifiers changed from: protected */
    public Set<QRCodeSchemeParser> getParser() {
        if (this.parser == null) {
            this.parser = loadParser();
        }
        return this.parser;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x005a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005f, code lost:
        if (r2 != null) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0061, code lost:
        if (r0 != null) goto L_0x0063;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0067, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0068, code lost:
        r0.addSuppressed(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006c, code lost:
        r2.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Set<net.glxn.qrgen.core.scheme.QRCodeSchemeParser> loadParser() {
        /*
        // Method dump skipped, instructions count: 130
        */
        throw new UnsupportedOperationException("Method not decompiled: net.glxn.qrgen.core.scheme.ExtendableQRCodeSchemeParser.loadParser():java.util.Set");
    }

    /* access modifiers changed from: protected */
    public QRCodeSchemeParser createParserInstance(String str) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return (QRCodeSchemeParser) Class.forName(str.trim()).newInstance();
    }

    /* access modifiers changed from: package-private */
    public static class QRCodeSchemeParserImpl implements QRCodeSchemeParser {
        QRCodeSchemeParserImpl() {
        }

        @Override // net.glxn.qrgen.core.scheme.QRCodeSchemeParser
        public Object parse(String str) throws UnsupportedEncodingException {
            for (Class<? extends Schema> cls : getSupportedSchemes()) {
                Object createInstance = createInstance(str, cls);
                if (createInstance != null) {
                    return createInstance;
                }
            }
            throw new UnsupportedEncodingException("unkonwn QR code scheme: " + str);
        }

        /* access modifiers changed from: protected */
        public Object createInstance(String str, Class<? extends Schema> cls) {
            try {
                return ((Schema) cls.getConstructor(null).newInstance(null)).parseSchema(str);
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // net.glxn.qrgen.core.scheme.QRCodeSchemeParser
        public Set<Class<? extends Schema>> getSupportedSchemes() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            linkedHashSet.add(Girocode.class);
            linkedHashSet.add(VCard.class);
            linkedHashSet.add(Wifi.class);
            linkedHashSet.add(BizCard.class);
            linkedHashSet.add(EMail.class);
            linkedHashSet.add(EnterpriseWifi.class);
            linkedHashSet.add(GeoInfo.class);
            linkedHashSet.add(GooglePlay.class);
            linkedHashSet.add(ICal.class);
            linkedHashSet.add(KddiAu.class);
            linkedHashSet.add(MeCard.class);
            linkedHashSet.add(MMS.class);
            linkedHashSet.add(SMS.class);
            linkedHashSet.add(Telephone.class);
            linkedHashSet.add(Url.class);
            return linkedHashSet;
        }
    }
}
