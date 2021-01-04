package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.model.TagoDevice;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class com_liber8tech_tago_model_TagoDeviceRealmProxy extends TagoDevice implements RealmObjectProxy, com_liber8tech_tago_model_TagoDeviceRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private TagoDeviceColumnInfo columnInfo;
    private ProxyState<TagoDevice> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "TagoDevice";
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    /* access modifiers changed from: package-private */
    public static final class TagoDeviceColumnInfo extends ColumnInfo {
        long colorIndex;
        long identifierIndex;
        long lowBatteryIndex;
        long nameIndex;
        long sizeIndex;

        TagoDeviceColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.identifierIndex = addColumnDetails(SettingsJsonConstants.APP_IDENTIFIER_KEY, SettingsJsonConstants.APP_IDENTIFIER_KEY, objectSchemaInfo);
            this.colorIndex = addColumnDetails(TtmlNode.ATTR_TTS_COLOR, TtmlNode.ATTR_TTS_COLOR, objectSchemaInfo);
            this.sizeIndex = addColumnDetails("size", "size", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.lowBatteryIndex = addColumnDetails("lowBattery", "lowBattery", objectSchemaInfo);
        }

        TagoDeviceColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        /* access modifiers changed from: protected */
        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new TagoDeviceColumnInfo(this, z);
        }

        /* access modifiers changed from: protected */
        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            TagoDeviceColumnInfo tagoDeviceColumnInfo = (TagoDeviceColumnInfo) columnInfo;
            TagoDeviceColumnInfo tagoDeviceColumnInfo2 = (TagoDeviceColumnInfo) columnInfo2;
            tagoDeviceColumnInfo2.identifierIndex = tagoDeviceColumnInfo.identifierIndex;
            tagoDeviceColumnInfo2.colorIndex = tagoDeviceColumnInfo.colorIndex;
            tagoDeviceColumnInfo2.sizeIndex = tagoDeviceColumnInfo.sizeIndex;
            tagoDeviceColumnInfo2.nameIndex = tagoDeviceColumnInfo.nameIndex;
            tagoDeviceColumnInfo2.lowBatteryIndex = tagoDeviceColumnInfo.lowBatteryIndex;
        }
    }

    com_liber8tech_tago_model_TagoDeviceRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = (BaseRealm.RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (TagoDeviceColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$identifier() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.identifierIndex);
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$identifier(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.identifierIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.identifierIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.identifierIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.identifierIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$color() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.colorIndex);
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$color(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.colorIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.colorIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.colorIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.colorIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$size() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.sizeIndex);
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$size(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.sizeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.sizeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.sizeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.sizeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public boolean realmGet$lowBattery() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.lowBatteryIndex);
    }

    @Override // com.liber8tech.tago.model.TagoDevice, io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$lowBattery(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.lowBatteryIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.lowBatteryIndex, row$realm.getIndex(), z, true);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty(SettingsJsonConstants.APP_IDENTIFIER_KEY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(TtmlNode.ATTR_TTS_COLOR, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("size", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("lowBattery", RealmFieldType.BOOLEAN, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static TagoDeviceColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new TagoDeviceColumnInfo(osSchemaInfo);
    }

    public static TagoDevice createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        TagoDevice tagoDevice = (TagoDevice) realm.createObjectInternal(TagoDevice.class, true, Collections.emptyList());
        TagoDevice tagoDevice2 = tagoDevice;
        if (jSONObject.has(SettingsJsonConstants.APP_IDENTIFIER_KEY)) {
            if (jSONObject.isNull(SettingsJsonConstants.APP_IDENTIFIER_KEY)) {
                tagoDevice2.realmSet$identifier(null);
            } else {
                tagoDevice2.realmSet$identifier(jSONObject.getString(SettingsJsonConstants.APP_IDENTIFIER_KEY));
            }
        }
        if (jSONObject.has(TtmlNode.ATTR_TTS_COLOR)) {
            if (jSONObject.isNull(TtmlNode.ATTR_TTS_COLOR)) {
                tagoDevice2.realmSet$color(null);
            } else {
                tagoDevice2.realmSet$color(jSONObject.getString(TtmlNode.ATTR_TTS_COLOR));
            }
        }
        if (jSONObject.has("size")) {
            if (jSONObject.isNull("size")) {
                tagoDevice2.realmSet$size(null);
            } else {
                tagoDevice2.realmSet$size(jSONObject.getString("size"));
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                tagoDevice2.realmSet$name(null);
            } else {
                tagoDevice2.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has("lowBattery")) {
            if (!jSONObject.isNull("lowBattery")) {
                tagoDevice2.realmSet$lowBattery(jSONObject.getBoolean("lowBattery"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'lowBattery' to null.");
            }
        }
        return tagoDevice;
    }

    @TargetApi(11)
    public static TagoDevice createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        TagoDevice tagoDevice = new TagoDevice();
        TagoDevice tagoDevice2 = tagoDevice;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(SettingsJsonConstants.APP_IDENTIFIER_KEY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagoDevice2.realmSet$identifier(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagoDevice2.realmSet$identifier(null);
                }
            } else if (nextName.equals(TtmlNode.ATTR_TTS_COLOR)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagoDevice2.realmSet$color(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagoDevice2.realmSet$color(null);
                }
            } else if (nextName.equals("size")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagoDevice2.realmSet$size(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagoDevice2.realmSet$size(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tagoDevice2.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tagoDevice2.realmSet$name(null);
                }
            } else if (!nextName.equals("lowBattery")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                tagoDevice2.realmSet$lowBattery(jsonReader.nextBoolean());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'lowBattery' to null.");
            }
        }
        jsonReader.endObject();
        return (TagoDevice) realm.copyToRealm(tagoDevice);
    }

    public static TagoDevice copyOrUpdate(Realm realm, TagoDevice tagoDevice, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        if (tagoDevice instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagoDevice;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return tagoDevice;
                }
            }
        }
        BaseRealm.RealmObjectContext realmObjectContext = (BaseRealm.RealmObjectContext) BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(tagoDevice);
        if (realmObjectProxy2 != null) {
            return (TagoDevice) realmObjectProxy2;
        }
        return copy(realm, tagoDevice, z, map);
    }

    public static TagoDevice copy(Realm realm, TagoDevice tagoDevice, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy = map.get(tagoDevice);
        if (realmObjectProxy != null) {
            return (TagoDevice) realmObjectProxy;
        }
        TagoDevice tagoDevice2 = (TagoDevice) realm.createObjectInternal(TagoDevice.class, false, Collections.emptyList());
        map.put(tagoDevice, (RealmObjectProxy) tagoDevice2);
        TagoDevice tagoDevice3 = tagoDevice;
        TagoDevice tagoDevice4 = tagoDevice2;
        tagoDevice4.realmSet$identifier(tagoDevice3.realmGet$identifier());
        tagoDevice4.realmSet$color(tagoDevice3.realmGet$color());
        tagoDevice4.realmSet$size(tagoDevice3.realmGet$size());
        tagoDevice4.realmSet$name(tagoDevice3.realmGet$name());
        tagoDevice4.realmSet$lowBattery(tagoDevice3.realmGet$lowBattery());
        return tagoDevice2;
    }

    public static long insert(Realm realm, TagoDevice tagoDevice, Map<RealmModel, Long> map) {
        if (tagoDevice instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagoDevice;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(TagoDevice.class);
        long nativePtr = table.getNativePtr();
        TagoDeviceColumnInfo tagoDeviceColumnInfo = (TagoDeviceColumnInfo) realm.getSchema().getColumnInfo(TagoDevice.class);
        long createRow = OsObject.createRow(table);
        map.put(tagoDevice, Long.valueOf(createRow));
        TagoDevice tagoDevice2 = tagoDevice;
        String realmGet$identifier = tagoDevice2.realmGet$identifier();
        if (realmGet$identifier != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.identifierIndex, createRow, realmGet$identifier, false);
        }
        String realmGet$color = tagoDevice2.realmGet$color();
        if (realmGet$color != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.colorIndex, createRow, realmGet$color, false);
        }
        String realmGet$size = tagoDevice2.realmGet$size();
        if (realmGet$size != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.sizeIndex, createRow, realmGet$size, false);
        }
        String realmGet$name = tagoDevice2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        Table.nativeSetBoolean(nativePtr, tagoDeviceColumnInfo.lowBatteryIndex, createRow, tagoDevice2.realmGet$lowBattery(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it2, Map<RealmModel, Long> map) {
        Table table = realm.getTable(TagoDevice.class);
        long nativePtr = table.getNativePtr();
        TagoDeviceColumnInfo tagoDeviceColumnInfo = (TagoDeviceColumnInfo) realm.getSchema().getColumnInfo(TagoDevice.class);
        while (it2.hasNext()) {
            TagoDevice tagoDevice = (TagoDevice) it2.next();
            if (!map.containsKey(tagoDevice)) {
                if (tagoDevice instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagoDevice;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(tagoDevice, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(tagoDevice, Long.valueOf(createRow));
                TagoDevice tagoDevice2 = tagoDevice;
                String realmGet$identifier = tagoDevice2.realmGet$identifier();
                if (realmGet$identifier != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.identifierIndex, createRow, realmGet$identifier, false);
                }
                String realmGet$color = tagoDevice2.realmGet$color();
                if (realmGet$color != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.colorIndex, createRow, realmGet$color, false);
                }
                String realmGet$size = tagoDevice2.realmGet$size();
                if (realmGet$size != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.sizeIndex, createRow, realmGet$size, false);
                }
                String realmGet$name = tagoDevice2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
                Table.nativeSetBoolean(nativePtr, tagoDeviceColumnInfo.lowBatteryIndex, createRow, tagoDevice2.realmGet$lowBattery(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, TagoDevice tagoDevice, Map<RealmModel, Long> map) {
        if (tagoDevice instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagoDevice;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(TagoDevice.class);
        long nativePtr = table.getNativePtr();
        TagoDeviceColumnInfo tagoDeviceColumnInfo = (TagoDeviceColumnInfo) realm.getSchema().getColumnInfo(TagoDevice.class);
        long createRow = OsObject.createRow(table);
        map.put(tagoDevice, Long.valueOf(createRow));
        TagoDevice tagoDevice2 = tagoDevice;
        String realmGet$identifier = tagoDevice2.realmGet$identifier();
        if (realmGet$identifier != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.identifierIndex, createRow, realmGet$identifier, false);
        } else {
            Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.identifierIndex, createRow, false);
        }
        String realmGet$color = tagoDevice2.realmGet$color();
        if (realmGet$color != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.colorIndex, createRow, realmGet$color, false);
        } else {
            Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.colorIndex, createRow, false);
        }
        String realmGet$size = tagoDevice2.realmGet$size();
        if (realmGet$size != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.sizeIndex, createRow, realmGet$size, false);
        } else {
            Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.sizeIndex, createRow, false);
        }
        String realmGet$name = tagoDevice2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.nameIndex, createRow, false);
        }
        Table.nativeSetBoolean(nativePtr, tagoDeviceColumnInfo.lowBatteryIndex, createRow, tagoDevice2.realmGet$lowBattery(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it2, Map<RealmModel, Long> map) {
        Table table = realm.getTable(TagoDevice.class);
        long nativePtr = table.getNativePtr();
        TagoDeviceColumnInfo tagoDeviceColumnInfo = (TagoDeviceColumnInfo) realm.getSchema().getColumnInfo(TagoDevice.class);
        while (it2.hasNext()) {
            TagoDevice tagoDevice = (TagoDevice) it2.next();
            if (!map.containsKey(tagoDevice)) {
                if (tagoDevice instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tagoDevice;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(tagoDevice, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(tagoDevice, Long.valueOf(createRow));
                TagoDevice tagoDevice2 = tagoDevice;
                String realmGet$identifier = tagoDevice2.realmGet$identifier();
                if (realmGet$identifier != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.identifierIndex, createRow, realmGet$identifier, false);
                } else {
                    Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.identifierIndex, createRow, false);
                }
                String realmGet$color = tagoDevice2.realmGet$color();
                if (realmGet$color != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.colorIndex, createRow, realmGet$color, false);
                } else {
                    Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.colorIndex, createRow, false);
                }
                String realmGet$size = tagoDevice2.realmGet$size();
                if (realmGet$size != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.sizeIndex, createRow, realmGet$size, false);
                } else {
                    Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.sizeIndex, createRow, false);
                }
                String realmGet$name = tagoDevice2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, tagoDeviceColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, tagoDeviceColumnInfo.nameIndex, createRow, false);
                }
                Table.nativeSetBoolean(nativePtr, tagoDeviceColumnInfo.lowBatteryIndex, createRow, tagoDevice2.realmGet$lowBattery(), false);
            }
        }
    }

    public static TagoDevice createDetachedCopy(TagoDevice tagoDevice, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        TagoDevice tagoDevice2;
        if (i > i2 || tagoDevice == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(tagoDevice);
        if (cacheData == null) {
            tagoDevice2 = new TagoDevice();
            map.put(tagoDevice, new RealmObjectProxy.CacheData<>(i, tagoDevice2));
        } else if (i >= cacheData.minDepth) {
            return (TagoDevice) cacheData.object;
        } else {
            cacheData.minDepth = i;
            tagoDevice2 = (TagoDevice) cacheData.object;
        }
        TagoDevice tagoDevice3 = tagoDevice2;
        TagoDevice tagoDevice4 = tagoDevice;
        tagoDevice3.realmSet$identifier(tagoDevice4.realmGet$identifier());
        tagoDevice3.realmSet$color(tagoDevice4.realmGet$color());
        tagoDevice3.realmSet$size(tagoDevice4.realmGet$size());
        tagoDevice3.realmSet$name(tagoDevice4.realmGet$name());
        tagoDevice3.realmSet$lowBattery(tagoDevice4.realmGet$lowBattery());
        return tagoDevice2;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("TagoDevice = proxy[");
        sb.append("{identifier:");
        sb.append(realmGet$identifier() != null ? realmGet$identifier() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{color:");
        sb.append(realmGet$color() != null ? realmGet$color() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{size:");
        sb.append(realmGet$size() != null ? realmGet$size() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{lowBattery:");
        sb.append(realmGet$lowBattery());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = (527 + (path != null ? path.hashCode() : 0)) * 31;
        if (name != null) {
            i = name.hashCode();
        }
        return ((hashCode + i) * 31) + ((int) ((index >>> 32) ^ index));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_liber8tech_tago_model_TagoDeviceRealmProxy com_liber8tech_tago_model_tagodevicerealmproxy = (com_liber8tech_tago_model_TagoDeviceRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_liber8tech_tago_model_tagodevicerealmproxy.proxyState.getRealm$realm().getPath();
        if (path == null ? path2 != null : !path.equals(path2)) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_liber8tech_tago_model_tagodevicerealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name == null ? name2 == null : name.equals(name2)) {
            return this.proxyState.getRow$realm().getIndex() == com_liber8tech_tago_model_tagodevicerealmproxy.proxyState.getRow$realm().getIndex();
        }
        return false;
    }
}
