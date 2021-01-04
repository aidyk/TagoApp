package net.glxn.qrgen.core.scheme;

import java.net.MalformedURLException;
import java.net.URL;

public class Url extends Schema {
    private URL url;

    public String getUrl() {
        if (this.url != null) {
            return this.url.toString().toUpperCase();
        }
        return null;
    }

    public void setUrl(String str) {
        try {
            this.url = new URL(str);
        } catch (MalformedURLException unused) {
            this.url = null;
        }
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || (!str.trim().toLowerCase().startsWith("http") && !str.trim().toLowerCase().startsWith("https"))) {
            throw new IllegalArgumentException("this is not a valid url code: " + str);
        }
        setUrl(str.trim());
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        return getUrl();
    }

    public String toString() {
        return generateString();
    }

    public static Url parse(String str) {
        Url url2 = new Url();
        url2.parseSchema(str);
        return url2;
    }
}
