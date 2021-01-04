package net.glxn.qrgen.core.scheme;

import java.util.LinkedHashMap;
import java.util.Map;

public class SchemeUtil {
    public static final String DEFAULT_KEY_VALUE_SEPARATOR = ":";
    public static final String DEFAULT_PARAM_SEPARATOR = "\r?\n";
    public static final String LINE_FEED = "\n";

    public static Map<String, String> getParameters(String str, String str2) {
        return getParameters(str, str2, DEFAULT_KEY_VALUE_SEPARATOR);
    }

    public static Map<String, String> getParameters(String str) {
        return getParameters(str, DEFAULT_PARAM_SEPARATOR, DEFAULT_KEY_VALUE_SEPARATOR);
    }

    public static Map<String, String> getParameters(String str, String str2, String str3) {
        String[] split;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str4 : str.split(str2)) {
            String[] split2 = str4.split(str3);
            if (split2.length > 1) {
                linkedHashMap.put(split2[0], split2[1]);
            }
        }
        return linkedHashMap;
    }
}
