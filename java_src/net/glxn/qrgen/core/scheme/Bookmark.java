package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class Bookmark extends Schema {
    private static final String BEGIN_BOOKMARK = "MEBKM";
    private static final String LINE_SEPARATOR = ";";
    private static final String TITLE = "TITLE";
    private static final String URL = "URL";
    private String titel;
    private String url;

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getTitel() {
        return this.titel;
    }

    public void setTitel(String str) {
        this.titel = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.startsWith(BEGIN_BOOKMARK)) {
            throw new IllegalArgumentException("this is not a valid Bookmark code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str.replaceFirst("MEBKM:", ""), LINE_SEPARATOR, SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
        if (parameters.containsKey(URL)) {
            setUrl(parameters.get(URL));
        }
        if (parameters.containsKey("TITLE")) {
            setTitel(parameters.get("TITLE"));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder();
        sb.append(BEGIN_BOOKMARK);
        sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
        if (this.url != null) {
            sb.append(URL);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.url);
            sb.append(LINE_SEPARATOR);
        }
        if (this.titel != null) {
            sb.append("TITLE");
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.titel);
            sb.append(LINE_SEPARATOR);
        }
        sb.append(LINE_SEPARATOR);
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static Bookmark parse(String str) {
        Bookmark bookmark = new Bookmark();
        bookmark.parseSchema(str);
        return bookmark;
    }
}
