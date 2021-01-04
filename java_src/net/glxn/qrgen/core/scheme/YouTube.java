package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class YouTube extends Schema {
    public static final String YOUTUBE = "youtube";
    private String videoId;

    public YouTube() {
    }

    public YouTube(String str) {
        this.videoId = str;
    }

    public String getVideoId() {
        return this.videoId;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.toLowerCase().startsWith(YOUTUBE)) {
            throw new IllegalArgumentException("this is not a valid you tube code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str);
        if (parameters.containsKey(YOUTUBE)) {
            setVideoId(parameters.get(YOUTUBE));
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        return "youtube:" + this.videoId;
    }

    public String toString() {
        return generateString();
    }

    public static YouTube parse(String str) {
        YouTube youTube = new YouTube();
        youTube.parseSchema(str);
        return youTube;
    }
}
