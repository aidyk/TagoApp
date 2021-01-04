package io.realm.internal.android;

import android.util.Base64;
import io.realm.exceptions.RealmException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

public class JsonUtils {
    private static Pattern jsonDate = Pattern.compile("/Date\\((\\d*)(?:[+-]\\d*)?\\)/");
    private static Pattern numericOnly = Pattern.compile("-?\\d+");
    private static ParsePosition parsePosition = new ParsePosition(0);

    @Nullable
    public static Date stringToDate(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Matcher matcher = jsonDate.matcher(str);
        if (matcher.find()) {
            return new Date(Long.parseLong(matcher.group(1)));
        }
        if (numericOnly.matcher(str).matches()) {
            try {
                return new Date(Long.parseLong(str));
            } catch (NumberFormatException e) {
                throw new RealmException(e.getMessage(), e);
            }
        } else {
            try {
                parsePosition.setIndex(0);
                return ISO8601Utils.parse(str, parsePosition);
            } catch (ParseException e2) {
                throw new RealmException(e2.getMessage(), e2);
            }
        }
    }

    public static byte[] stringToBytes(String str) {
        if (str == null || str.length() == 0) {
            return new byte[0];
        }
        return Base64.decode(str, 0);
    }
}
