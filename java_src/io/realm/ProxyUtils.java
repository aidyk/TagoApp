package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import io.realm.internal.OsList;
import io.realm.internal.android.JsonUtils;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ProxyUtils {
    ProxyUtils() {
    }

    static <E> void setRealmListWithJsonObject(RealmList<E> realmList, JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject.has(str)) {
            OsList osList = realmList.getOsList();
            if (jSONObject.isNull(str)) {
                osList.removeAll();
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            osList.removeAll();
            int length = jSONArray.length();
            int i = 0;
            if (realmList.clazz == Boolean.class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addBoolean(jSONArray.getBoolean(i));
                    }
                    i++;
                }
            } else if (realmList.clazz == Float.class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addFloat((float) jSONArray.getDouble(i));
                    }
                    i++;
                }
            } else if (realmList.clazz == Double.class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addDouble(jSONArray.getDouble(i));
                    }
                    i++;
                }
            } else if (realmList.clazz == String.class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addString(jSONArray.getString(i));
                    }
                    i++;
                }
            } else if (realmList.clazz == byte[].class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addBinary(JsonUtils.stringToBytes(jSONArray.getString(i)));
                    }
                    i++;
                }
            } else if (realmList.clazz == Date.class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        Object obj = jSONArray.get(i);
                        if (obj instanceof String) {
                            osList.addDate(JsonUtils.stringToDate((String) obj));
                        } else {
                            osList.addDate(new Date(jSONArray.getLong(i)));
                        }
                    }
                    i++;
                }
            } else if (realmList.clazz == Long.class || realmList.clazz == Integer.class || realmList.clazz == Short.class || realmList.clazz == Byte.class) {
                while (i < length) {
                    if (jSONArray.isNull(i)) {
                        osList.addNull();
                    } else {
                        osList.addLong(jSONArray.getLong(i));
                    }
                    i++;
                }
            } else {
                throwWrongElementType(realmList.clazz);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: io.realm.RealmList<E> */
    /* JADX WARN: Multi-variable type inference failed */
    @TargetApi(11)
    static <E> RealmList<E> createRealmListWithJsonStream(Class<E> cls, JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == null) {
            jsonReader.skipValue();
            return null;
        }
        jsonReader.beginArray();
        RealmList<E> realmList = (RealmList<E>) new RealmList();
        if (cls == Boolean.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Boolean.valueOf(jsonReader.nextBoolean()));
                }
            }
        } else if (cls == Float.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Float.valueOf((float) jsonReader.nextDouble()));
                }
            }
        } else if (cls == Double.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Double.valueOf(jsonReader.nextDouble()));
                }
            }
        } else if (cls == String.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(jsonReader.nextString());
                }
            }
        } else if (cls == byte[].class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(JsonUtils.stringToBytes(jsonReader.nextString()));
                }
            }
        } else if (cls == Date.class) {
            while (jsonReader.hasNext()) {
                JsonToken peek = jsonReader.peek();
                if (peek == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else if (peek == JsonToken.NUMBER) {
                    realmList.add(new Date(jsonReader.nextLong()));
                } else {
                    realmList.add(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            }
        } else if (cls == Long.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Long.valueOf(jsonReader.nextLong()));
                }
            }
        } else if (cls == Integer.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Integer.valueOf((int) jsonReader.nextLong()));
                }
            }
        } else if (cls == Short.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Short.valueOf((short) ((int) jsonReader.nextLong())));
                }
            }
        } else if (cls == Byte.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Byte.valueOf((byte) ((int) jsonReader.nextLong())));
                }
            }
        } else {
            throwWrongElementType(cls);
        }
        jsonReader.endArray();
        return realmList;
    }

    private static void throwWrongElementType(@Nullable Class cls) {
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Element type '%s' is not handled.", cls));
    }
}
