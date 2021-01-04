package net.glxn.qrgen.core.scheme;

import java.util.ArrayList;
import java.util.List;

public class GeoInfo extends Schema {
    public static final String GEO = "geo";
    private List<String> points = new ArrayList();

    public List<String> getPoints() {
        return this.points;
    }

    public void setPoints(List<String> list) {
        this.points = list;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.trim().toLowerCase().startsWith(GEO)) {
            throw new IllegalArgumentException("this is not a geo info code: " + str);
        }
        String[] split = str.trim().toLowerCase().replaceAll("geo:", "").split(",");
        if (split != null && split.length > 0) {
            for (String str2 : split) {
                this.points.add(str2);
            }
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder();
        if (this.points != null) {
            int size = this.points.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.points.get(i));
                if (i < size - 1) {
                    sb.append(",");
                }
            }
        }
        return "geo:" + sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static GeoInfo parse(String str) {
        GeoInfo geoInfo = new GeoInfo();
        geoInfo.parseSchema(str);
        return geoInfo;
    }
}
