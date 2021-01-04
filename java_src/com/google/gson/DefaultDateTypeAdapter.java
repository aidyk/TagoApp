package com.google.gson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

final class DefaultDateTypeAdapter implements JsonSerializer<Date>, JsonDeserializer<Date> {
    private final DateFormat enUsFormat;
    private final DateFormat localFormat;

    DefaultDateTypeAdapter() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    DefaultDateTypeAdapter(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    DefaultDateTypeAdapter(int i) {
        this(DateFormat.getDateInstance(i, Locale.US), DateFormat.getDateInstance(i));
    }

    public DefaultDateTypeAdapter(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    DefaultDateTypeAdapter(DateFormat dateFormat, DateFormat dateFormat2) {
        this.enUsFormat = dateFormat;
        this.localFormat = dateFormat2;
    }

    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.localFormat) {
            jsonPrimitive = new JsonPrimitive(this.enUsFormat.format(date));
        }
        return jsonPrimitive;
    }

    @Override // com.google.gson.JsonDeserializer
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement instanceof JsonPrimitive) {
            Date deserializeToDate = deserializeToDate(jsonElement);
            if (type == Date.class) {
                return deserializeToDate;
            }
            if (type == Timestamp.class) {
                return new Timestamp(deserializeToDate.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(deserializeToDate.getTime());
            }
            throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
        }
        throw new JsonParseException("The date should be a string value");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:8|9|10|11) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001c, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        r1 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r5.getAsString(), new java.text.ParsePosition(0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002c, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002d, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0037, code lost:
        throw new com.google.gson.JsonSyntaxException(r5.getAsString(), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
        r1 = r4.enUsFormat.parse(r5.getAsString());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x001d */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0011 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Date deserializeToDate(com.google.gson.JsonElement r5) {
        /*
            r4 = this;
            java.text.DateFormat r0 = r4.localFormat
            monitor-enter(r0)
            java.text.DateFormat r1 = r4.localFormat     // Catch:{ ParseException -> 0x0011 }
            java.lang.String r2 = r5.getAsString()     // Catch:{ ParseException -> 0x0011 }
            java.util.Date r1 = r1.parse(r2)     // Catch:{ ParseException -> 0x0011 }
            monitor-exit(r0)     // Catch:{ all -> 0x000f }
            return r1
        L_0x000f:
            r5 = move-exception
            goto L_0x0038
        L_0x0011:
            java.text.DateFormat r1 = r4.enUsFormat     // Catch:{ ParseException -> 0x001d }
            java.lang.String r2 = r5.getAsString()     // Catch:{ ParseException -> 0x001d }
            java.util.Date r1 = r1.parse(r2)     // Catch:{ ParseException -> 0x001d }
            monitor-exit(r0)
            return r1
        L_0x001d:
            java.lang.String r1 = r5.getAsString()     // Catch:{ ParseException -> 0x002d }
            java.text.ParsePosition r2 = new java.text.ParsePosition     // Catch:{ ParseException -> 0x002d }
            r3 = 0
            r2.<init>(r3)     // Catch:{ ParseException -> 0x002d }
            java.util.Date r1 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r1, r2)     // Catch:{ ParseException -> 0x002d }
            monitor-exit(r0)
            return r1
        L_0x002d:
            r1 = move-exception
            com.google.gson.JsonSyntaxException r2 = new com.google.gson.JsonSyntaxException
            java.lang.String r5 = r5.getAsString()
            r2.<init>(r5, r1)
            throw r2
        L_0x0038:
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.DefaultDateTypeAdapter.deserializeToDate(com.google.gson.JsonElement):java.util.Date");
    }

    public String toString() {
        return DefaultDateTypeAdapter.class.getSimpleName() + '(' + this.localFormat.getClass().getSimpleName() + ')';
    }
}
