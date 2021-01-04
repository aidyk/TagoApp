package io.realm;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.SystemClock;
import android.util.JsonReader;
import io.reactivex.Flowable;
import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.ColumnIndices;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsResults;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmNotifier;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.annotations.ObjectServer;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import io.realm.sync.permissions.ClassPermissions;
import io.realm.sync.permissions.ClassPrivileges;
import io.realm.sync.permissions.ObjectPrivileges;
import io.realm.sync.permissions.RealmPermissions;
import io.realm.sync.permissions.RealmPrivileges;
import io.realm.sync.permissions.Role;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Realm extends BaseRealm {
    public static final String DEFAULT_REALM_NAME = "default.realm";
    private static final String NULL_CONFIG_MSG = "A non-null RealmConfiguration must be provided";
    private static RealmConfiguration defaultConfiguration;
    private static final Object defaultConfigurationLock = new Object();
    private final RealmSchema schema;

    public interface Transaction {

        public static class Callback {
            public void onError(Exception exc) {
            }

            public void onSuccess() {
            }
        }

        public interface OnError {
            void onError(Throwable th);
        }

        public interface OnSuccess {
            void onSuccess();
        }

        void execute(Realm realm);
    }

    public interface UnsubscribeCallback {
        void onError(String str, Throwable th);

        void onSuccess(String str);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void beginTransaction() {
        super.beginTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void cancelTransaction() {
        super.cancelTransaction();
    }

    @Override // io.realm.BaseRealm, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void commitTransaction() {
        super.commitTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void deleteAll() {
        super.deleteAll();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ RealmConfiguration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ ObjectPrivileges getPrivileges(RealmModel realmModel) {
        return super.getPrivileges(realmModel);
    }

    @Override // io.realm.BaseRealm
    @ObjectServer
    public /* bridge */ /* synthetic */ RealmPrivileges getPrivileges() {
        return super.getPrivileges();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isAutoRefresh() {
        return super.isAutoRefresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isClosed() {
        return super.isClosed();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isInTransaction() {
        return super.isInTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void refresh() {
        super.refresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void setAutoRefresh(boolean z) {
        super.setAutoRefresh(z);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void stopWaitForChange() {
        super.stopWaitForChange();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean waitForChange() {
        return super.waitForChange();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeCopyTo(File file) {
        super.writeCopyTo(file);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeEncryptedCopyTo(File file, byte[] bArr) {
        super.writeEncryptedCopyTo(file, bArr);
    }

    private Realm(RealmCache realmCache) {
        super(realmCache, createExpectedSchemaInfo(realmCache.getConfiguration().getSchemaMediator()));
        this.schema = new ImmutableRealmSchema(this, new ColumnIndices(this.configuration.getSchemaMediator(), this.sharedRealm.getSchemaInfo()));
        if (this.configuration.isReadOnly()) {
            RealmProxyMediator schemaMediator = this.configuration.getSchemaMediator();
            for (Class<? extends RealmModel> cls : schemaMediator.getModelClasses()) {
                String tableNameForClass = Table.getTableNameForClass(schemaMediator.getSimpleClassName(cls));
                if (!this.sharedRealm.hasTable(tableNameForClass)) {
                    this.sharedRealm.close();
                    throw new RealmMigrationNeededException(this.configuration.getPath(), String.format(Locale.US, "Cannot open the read only Realm. '%s' is missing.", Table.getClassNameForTable(tableNameForClass)));
                }
            }
        }
    }

    private Realm(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
        this.schema = new ImmutableRealmSchema(this, new ColumnIndices(this.configuration.getSchemaMediator(), osSharedRealm.getSchemaInfo()));
    }

    private static OsSchemaInfo createExpectedSchemaInfo(RealmProxyMediator realmProxyMediator) {
        return new OsSchemaInfo(realmProxyMediator.getExpectedObjectSchemaInfoMap().values());
    }

    @Override // io.realm.BaseRealm
    public Flowable<Realm> asFlowable() {
        return this.configuration.getRxFactory().from(this);
    }

    @Override // io.realm.BaseRealm
    public RealmSchema getSchema() {
        return this.schema;
    }

    public static synchronized void init(Context context) {
        synchronized (Realm.class) {
            if (BaseRealm.applicationContext == null) {
                if (context != null) {
                    checkFilesDirAvailable(context);
                    RealmCore.loadLibrary(context);
                    setDefaultConfiguration(new RealmConfiguration.Builder(context).build());
                    ObjectServerFacade.getSyncFacadeIfPossible().init(context);
                    if (context.getApplicationContext() != null) {
                        BaseRealm.applicationContext = context.getApplicationContext();
                    } else {
                        BaseRealm.applicationContext = context;
                    }
                    OsSharedRealm.initialize(new File(context.getFilesDir(), ".realm.temp"));
                } else {
                    throw new IllegalArgumentException("Non-null context required.");
                }
            }
        }
    }

    private static void checkFilesDirAvailable(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            if (!filesDir.exists()) {
                try {
                    filesDir.mkdirs();
                } catch (SecurityException unused) {
                }
            } else {
                return;
            }
        }
        if (filesDir == null || !filesDir.exists()) {
            long[] jArr = {1, 2, 5, 10, 16};
            long j = 0;
            int i = -1;
            do {
                if (context.getFilesDir() != null && context.getFilesDir().exists()) {
                    break;
                }
                i++;
                long j2 = jArr[Math.min(i, jArr.length - 1)];
                SystemClock.sleep(j2);
                j += j2;
            } while (j <= 200);
        }
        if (context.getFilesDir() == null || !context.getFilesDir().exists()) {
            throw new IllegalStateException("Context.getFilesDir() returns " + context.getFilesDir() + " which is not an existing directory. See https://issuetracker.google.com/issues/36918154");
        }
    }

    public static Realm getDefaultInstance() {
        RealmConfiguration defaultConfiguration2 = getDefaultConfiguration();
        if (defaultConfiguration2 != null) {
            return (Realm) RealmCache.createRealmOrGetFromCache(defaultConfiguration2, Realm.class);
        }
        if (BaseRealm.applicationContext == null) {
            throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
        }
        throw new IllegalStateException("Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`.");
    }

    public static Realm getInstance(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (Realm) RealmCache.createRealmOrGetFromCache(realmConfiguration, Realm.class);
        }
        throw new IllegalArgumentException(NULL_CONFIG_MSG);
    }

    public static RealmAsyncTask getInstanceAsync(RealmConfiguration realmConfiguration, Callback callback) {
        if (realmConfiguration != null) {
            return RealmCache.createRealmOrGetFromCacheAsync(realmConfiguration, callback, Realm.class);
        }
        throw new IllegalArgumentException(NULL_CONFIG_MSG);
    }

    public static void setDefaultConfiguration(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            synchronized (defaultConfigurationLock) {
                defaultConfiguration = realmConfiguration;
            }
            return;
        }
        throw new IllegalArgumentException(NULL_CONFIG_MSG);
    }

    @Nullable
    public static RealmConfiguration getDefaultConfiguration() {
        RealmConfiguration realmConfiguration;
        synchronized (defaultConfigurationLock) {
            realmConfiguration = defaultConfiguration;
        }
        return realmConfiguration;
    }

    public static void removeDefaultConfiguration() {
        synchronized (defaultConfigurationLock) {
            defaultConfiguration = null;
        }
    }

    static Realm createInstance(RealmCache realmCache) {
        return new Realm(realmCache);
    }

    static Realm createInstance(OsSharedRealm osSharedRealm) {
        return new Realm(osSharedRealm);
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> cls, JSONArray jSONArray) {
        if (!(cls == null || jSONArray == null)) {
            checkIfValid();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONArray.getJSONObject(i), false);
                } catch (JSONException e) {
                    throw new RealmException("Could not map JSON", e);
                }
            }
        }
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> cls, JSONArray jSONArray) {
        if (!(cls == null || jSONArray == null)) {
            checkIfValid();
            checkHasPrimaryKey(cls);
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONArray.getJSONObject(i), true);
                } catch (JSONException e) {
                    throw new RealmException("Could not map JSON", e);
                }
            }
        }
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> cls, String str) {
        if (cls != null && str != null && str.length() != 0) {
            try {
                createAllFromJson(cls, new JSONArray(str));
            } catch (JSONException e) {
                throw new RealmException("Could not create JSON array from string", e);
            }
        }
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> cls, String str) {
        if (cls != null && str != null && str.length() != 0) {
            checkIfValid();
            checkHasPrimaryKey(cls);
            try {
                createOrUpdateAllFromJson(cls, new JSONArray(str));
            } catch (JSONException e) {
                throw new RealmException("Could not create JSON array from string", e);
            }
        }
    }

    @TargetApi(11)
    public <E extends RealmModel> void createAllFromJson(Class<E> cls, InputStream inputStream) throws IOException {
        if (cls != null && inputStream != null) {
            checkIfValid();
            JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, "UTF-8"));
            try {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    this.configuration.getSchemaMediator().createUsingJsonStream(cls, this, jsonReader);
                }
                jsonReader.endArray();
            } finally {
                jsonReader.close();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x004a  */
    @android.annotation.TargetApi(11)
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <E extends io.realm.RealmModel> void createOrUpdateAllFromJson(java.lang.Class<E> r6, java.io.InputStream r7) {
        /*
            r5 = this;
            if (r6 == 0) goto L_0x004e
            if (r7 != 0) goto L_0x0005
            goto L_0x004e
        L_0x0005:
            r5.checkIfValid()
            r5.checkHasPrimaryKey(r6)
            r0 = 0
            java.util.Scanner r7 = r5.getFullStringScanner(r7)     // Catch:{ JSONException -> 0x003f }
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            java.lang.String r1 = r7.next()     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            r0.<init>(r1)     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            r1 = 0
        L_0x001a:
            int r2 = r0.length()     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            if (r1 >= r2) goto L_0x0031
            io.realm.RealmConfiguration r2 = r5.configuration     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            io.realm.internal.RealmProxyMediator r2 = r2.getSchemaMediator()     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            org.json.JSONObject r3 = r0.getJSONObject(r1)     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            r4 = 1
            r2.createOrUpdateUsingJsonObject(r6, r5, r3, r4)     // Catch:{ JSONException -> 0x0039, all -> 0x0037 }
            int r1 = r1 + 1
            goto L_0x001a
        L_0x0031:
            if (r7 == 0) goto L_0x0036
            r7.close()
        L_0x0036:
            return
        L_0x0037:
            r6 = move-exception
            goto L_0x0048
        L_0x0039:
            r6 = move-exception
            r0 = r7
            goto L_0x0040
        L_0x003c:
            r6 = move-exception
            r7 = r0
            goto L_0x0048
        L_0x003f:
            r6 = move-exception
        L_0x0040:
            io.realm.exceptions.RealmException r7 = new io.realm.exceptions.RealmException     // Catch:{ all -> 0x003c }
            java.lang.String r1 = "Failed to read JSON"
            r7.<init>(r1, r6)     // Catch:{ all -> 0x003c }
            throw r7     // Catch:{ all -> 0x003c }
        L_0x0048:
            if (r7 == 0) goto L_0x004d
            r7.close()
        L_0x004d:
            throw r6
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.createOrUpdateAllFromJson(java.lang.Class, java.io.InputStream):void");
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, JSONObject jSONObject) {
        if (cls == null || jSONObject == null) {
            return null;
        }
        checkIfValid();
        try {
            return (E) this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONObject, false);
        } catch (JSONException e) {
            throw new RealmException("Could not map JSON", e);
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, JSONObject jSONObject) {
        if (cls == null || jSONObject == null) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            return (E) this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONObject, true);
        } catch (JSONException e) {
            throw new RealmException("Could not map JSON", e);
        }
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        try {
            return (E) createObjectFromJson(cls, new JSONObject(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create Json object from string", e);
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            return (E) createOrUpdateObjectFromJson(cls, new JSONObject(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create Json object from string", e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x004c  */
    @javax.annotation.Nullable
    @android.annotation.TargetApi(11)
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <E extends io.realm.RealmModel> E createObjectFromJson(java.lang.Class<E> r4, java.io.InputStream r5) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 112
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.createObjectFromJson(java.lang.Class, java.io.InputStream):io.realm.RealmModel");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0036  */
    @android.annotation.TargetApi(11)
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <E extends io.realm.RealmModel> E createOrUpdateObjectFromJson(java.lang.Class<E> r3, java.io.InputStream r4) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L_0x003a
            if (r4 != 0) goto L_0x0006
            goto L_0x003a
        L_0x0006:
            r2.checkIfValid()
            r2.checkHasPrimaryKey(r3)
            java.util.Scanner r4 = r2.getFullStringScanner(r4)     // Catch:{ JSONException -> 0x002b }
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch:{ JSONException -> 0x0026, all -> 0x0023 }
            java.lang.String r1 = r4.next()     // Catch:{ JSONException -> 0x0026, all -> 0x0023 }
            r0.<init>(r1)     // Catch:{ JSONException -> 0x0026, all -> 0x0023 }
            io.realm.RealmModel r3 = r2.createOrUpdateObjectFromJson(r3, r0)     // Catch:{ JSONException -> 0x0026, all -> 0x0023 }
            if (r4 == 0) goto L_0x0022
            r4.close()
        L_0x0022:
            return r3
        L_0x0023:
            r3 = move-exception
            r0 = r4
            goto L_0x0034
        L_0x0026:
            r3 = move-exception
            r0 = r4
            goto L_0x002c
        L_0x0029:
            r3 = move-exception
            goto L_0x0034
        L_0x002b:
            r3 = move-exception
        L_0x002c:
            io.realm.exceptions.RealmException r4 = new io.realm.exceptions.RealmException     // Catch:{ all -> 0x0029 }
            java.lang.String r1 = "Failed to read JSON"
            r4.<init>(r1, r3)     // Catch:{ all -> 0x0029 }
            throw r4     // Catch:{ all -> 0x0029 }
        L_0x0034:
            if (r0 == 0) goto L_0x0039
            r0.close()
        L_0x0039:
            throw r3
        L_0x003a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.createOrUpdateObjectFromJson(java.lang.Class, java.io.InputStream):io.realm.RealmModel");
    }

    private Scanner getFullStringScanner(InputStream inputStream) {
        return new Scanner(inputStream, "UTF-8").useDelimiter("\\A");
    }

    public <E extends RealmModel> E createObject(Class<E> cls) {
        checkIfValid();
        return (E) createObjectInternal(cls, true, Collections.emptyList());
    }

    /* access modifiers changed from: package-private */
    public <E extends RealmModel> E createObjectInternal(Class<E> cls, boolean z, List<String> list) {
        Table table = this.schema.getTable(cls);
        if (OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, this.configuration.getSchemaMediator().getSimpleClassName(cls)) == null) {
            return (E) this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.create(table), this.schema.getColumnInfo(cls), z, list);
        }
        throw new RealmException(String.format(Locale.US, "'%s' has a primary key, use 'createObject(Class<E>, Object)' instead.", table.getClassName()));
    }

    public <E extends RealmModel> E createObject(Class<E> cls, @Nullable Object obj) {
        checkIfValid();
        return (E) createObjectInternal(cls, obj, true, Collections.emptyList());
    }

    /* access modifiers changed from: package-private */
    public <E extends RealmModel> E createObjectInternal(Class<E> cls, @Nullable Object obj, boolean z, List<String> list) {
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.createWithPrimaryKey(this.schema.getTable(cls), obj), this.schema.getColumnInfo(cls), z, list);
    }

    public <E extends RealmModel> E copyToRealm(E e) {
        checkNotNullObject(e);
        return (E) copyOrUpdate(e, false, new HashMap());
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: io.realm.Realm */
    /* JADX WARN: Multi-variable type inference failed */
    public <E extends RealmModel> E copyToRealmOrUpdate(E e) {
        checkNotNullObject(e);
        checkHasPrimaryKey(e.getClass());
        return (E) copyOrUpdate(e, true, new HashMap());
    }

    public <E extends RealmModel> List<E> copyToRealm(Iterable<E> iterable) {
        if (iterable == null) {
            return new ArrayList();
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (E e : iterable) {
            checkNotNullObject(e);
            arrayList.add(copyOrUpdate(e, false, hashMap));
        }
        return arrayList;
    }

    public void insert(Collection<? extends RealmModel> collection) {
        checkIfValidAndInTransaction();
        if (collection == null) {
            throw new IllegalArgumentException("Null objects cannot be inserted into Realm.");
        } else if (!collection.isEmpty()) {
            this.configuration.getSchemaMediator().insert(this, collection);
        }
    }

    public void insert(RealmModel realmModel) {
        checkIfValidAndInTransaction();
        if (realmModel != null) {
            this.configuration.getSchemaMediator().insert(this, realmModel, new HashMap());
            return;
        }
        throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
    }

    public void insertOrUpdate(Collection<? extends RealmModel> collection) {
        checkIfValidAndInTransaction();
        if (collection == null) {
            throw new IllegalArgumentException("Null objects cannot be inserted into Realm.");
        } else if (!collection.isEmpty()) {
            this.configuration.getSchemaMediator().insertOrUpdate(this, collection);
        }
    }

    public void insertOrUpdate(RealmModel realmModel) {
        checkIfValidAndInTransaction();
        if (realmModel != null) {
            this.configuration.getSchemaMediator().insertOrUpdate(this, realmModel, new HashMap());
            return;
        }
        throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
    }

    public <E extends RealmModel> List<E> copyToRealmOrUpdate(Iterable<E> iterable) {
        if (iterable == null) {
            return new ArrayList(0);
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (E e : iterable) {
            checkNotNullObject(e);
            arrayList.add(copyOrUpdate(e, true, hashMap));
        }
        return arrayList;
    }

    public <E extends RealmModel> List<E> copyFromRealm(Iterable<E> iterable) {
        return copyFromRealm(iterable, Integer.MAX_VALUE);
    }

    public <E extends RealmModel> List<E> copyFromRealm(Iterable<E> iterable, int i) {
        checkMaxDepth(i);
        if (iterable == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (E e : iterable) {
            checkValidObjectForDetach(e);
            arrayList.add(createDetachedCopy(e, i, hashMap));
        }
        return arrayList;
    }

    public <E extends RealmModel> E copyFromRealm(E e) {
        return (E) copyFromRealm(e, Integer.MAX_VALUE);
    }

    public <E extends RealmModel> E copyFromRealm(E e, int i) {
        checkMaxDepth(i);
        checkValidObjectForDetach(e);
        return (E) createDetachedCopy(e, i, new HashMap());
    }

    public <E extends RealmModel> RealmQuery<E> where(Class<E> cls) {
        checkIfValid();
        return RealmQuery.createQuery(this, cls);
    }

    public void addChangeListener(RealmChangeListener<Realm> realmChangeListener) {
        addListener(realmChangeListener);
    }

    public void removeChangeListener(RealmChangeListener<Realm> realmChangeListener) {
        removeListener(realmChangeListener);
    }

    public void removeAllChangeListeners() {
        removeAllListeners();
    }

    public void executeTransaction(Transaction transaction) {
        if (transaction != null) {
            beginTransaction();
            try {
                transaction.execute(this);
                commitTransaction();
            } catch (Throwable th) {
                if (isInTransaction()) {
                    cancelTransaction();
                } else {
                    RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Transaction should not be null");
        }
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction) {
        return executeTransactionAsync(transaction, null, null);
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, Transaction.OnSuccess onSuccess) {
        if (onSuccess != null) {
            return executeTransactionAsync(transaction, onSuccess, null);
        }
        throw new IllegalArgumentException("onSuccess callback can't be null");
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, Transaction.OnError onError) {
        if (onError != null) {
            return executeTransactionAsync(transaction, null, onError);
        }
        throw new IllegalArgumentException("onError callback can't be null");
    }

    public RealmAsyncTask executeTransactionAsync(final Transaction transaction, @Nullable final Transaction.OnSuccess onSuccess, @Nullable final Transaction.OnError onError) {
        checkIfValid();
        if (transaction != null) {
            final boolean canDeliverNotification = this.sharedRealm.capabilities.canDeliverNotification();
            if (!(onSuccess == null && onError == null)) {
                this.sharedRealm.capabilities.checkCanDeliverNotification("Callback cannot be delivered on current thread.");
            }
            final RealmConfiguration configuration = getConfiguration();
            final RealmNotifier realmNotifier = this.sharedRealm.realmNotifier;
            return new RealmAsyncTaskImpl(asyncTaskExecutor.submitTransaction(new Runnable() {
                /* class io.realm.Realm.AnonymousClass1 */

                /* JADX INFO: finally extract failed */
                public void run() {
                    final OsSharedRealm.VersionID versionID;
                    if (!Thread.currentThread().isInterrupted()) {
                        Realm instance = Realm.getInstance(configuration);
                        instance.beginTransaction();
                        final Throwable th = null;
                        try {
                            transaction.execute(instance);
                            if (Thread.currentThread().isInterrupted()) {
                                try {
                                    if (instance.isInTransaction()) {
                                        instance.cancelTransaction();
                                    }
                                } finally {
                                    instance.close();
                                }
                            } else {
                                instance.commitTransaction();
                                versionID = instance.sharedRealm.getVersionID();
                                try {
                                    if (instance.isInTransaction()) {
                                        instance.cancelTransaction();
                                    }
                                    if (canDeliverNotification) {
                                        if (versionID != null && onSuccess != null) {
                                            realmNotifier.post(new Runnable() {
                                                /* class io.realm.Realm.AnonymousClass1.AnonymousClass1 */

                                                public void run() {
                                                    if (Realm.this.isClosed()) {
                                                        onSuccess.onSuccess();
                                                    } else if (Realm.this.sharedRealm.getVersionID().compareTo(versionID) < 0) {
                                                        Realm.this.sharedRealm.realmNotifier.addTransactionCallback(new Runnable() {
                                                            /* class io.realm.Realm.AnonymousClass1.AnonymousClass1.AnonymousClass1 */

                                                            public void run() {
                                                                onSuccess.onSuccess();
                                                            }
                                                        });
                                                    } else {
                                                        onSuccess.onSuccess();
                                                    }
                                                }
                                            });
                                        } else if (th != null) {
                                            realmNotifier.post(new Runnable() {
                                                /* class io.realm.Realm.AnonymousClass1.AnonymousClass2 */

                                                public void run() {
                                                    if (onError != null) {
                                                        onError.onError(th);
                                                        return;
                                                    }
                                                    throw new RealmException("Async transaction failed", th);
                                                }
                                            });
                                        }
                                    } else if (th != null) {
                                        throw new RealmException("Async transaction failed", th);
                                    }
                                } finally {
                                    instance.close();
                                }
                            }
                        } catch (Throwable th2) {
                            instance.close();
                            throw th2;
                        }
                    }
                }
            }), asyncTaskExecutor);
        }
        throw new IllegalArgumentException("Transaction should not be null");
    }

    public void delete(Class<? extends RealmModel> cls) {
        checkIfValid();
        if (!this.sharedRealm.isPartial()) {
            this.schema.getTable(cls).clear(this.sharedRealm.isPartial());
            return;
        }
        throw new IllegalStateException("This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'");
    }

    private <E extends RealmModel> E copyOrUpdate(E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        checkIfValid();
        return (E) this.configuration.getSchemaMediator().copyOrUpdate(this, e, z, map);
    }

    private <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        checkIfValid();
        return (E) this.configuration.getSchemaMediator().createDetachedCopy(e, i, map);
    }

    private <E extends RealmModel> void checkNotNullObject(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
    }

    private void checkHasPrimaryKey(Class<? extends RealmModel> cls) {
        if (this.sharedRealm.getSchemaInfo().getObjectSchemaInfo(this.configuration.getSchemaMediator().getSimpleClassName(cls)).getPrimaryKeyProperty() == null) {
            throw new IllegalArgumentException("A RealmObject with no @PrimaryKey cannot be updated: " + cls.toString());
        }
    }

    private void checkMaxDepth(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("maxDepth must be > 0. It was: " + i);
        }
    }

    private <E extends RealmModel> void checkValidObjectForDetach(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied from Realm.");
        } else if (!RealmObject.isManaged(e) || !RealmObject.isValid(e)) {
            throw new IllegalArgumentException("Only valid managed objects can be copied from Realm.");
        } else if (e instanceof DynamicRealmObject) {
            throw new IllegalArgumentException("DynamicRealmObject cannot be copied from Realm.");
        }
    }

    public static void migrateRealm(RealmConfiguration realmConfiguration) throws FileNotFoundException {
        migrateRealm(realmConfiguration, null);
    }

    public static void migrateRealm(RealmConfiguration realmConfiguration, @Nullable RealmMigration realmMigration) throws FileNotFoundException {
        BaseRealm.migrateRealm(realmConfiguration, realmMigration);
    }

    public static boolean deleteRealm(RealmConfiguration realmConfiguration) {
        return BaseRealm.deleteRealm(realmConfiguration);
    }

    public static boolean compactRealm(RealmConfiguration realmConfiguration) {
        if (!realmConfiguration.isSyncConfiguration()) {
            return BaseRealm.compactRealm(realmConfiguration);
        }
        throw new UnsupportedOperationException("Compacting is not supported yet on synced Realms. See https://github.com/realm/realm-core/issues/2345");
    }

    public RealmAsyncTask unsubscribeAsync(final String str, final UnsubscribeCallback unsubscribeCallback) {
        if (Util.isEmptyString(str)) {
            throw new IllegalArgumentException("Non-empty 'subscriptionName' required.");
        } else if (unsubscribeCallback != null) {
            this.sharedRealm.capabilities.checkCanDeliverNotification("This method is only available from a Looper thread.");
            if (ObjectServerFacade.getSyncFacadeIfPossible().isPartialRealm(this.configuration)) {
                return executeTransactionAsync(new Transaction() {
                    /* class io.realm.Realm.AnonymousClass2 */

                    @Override // io.realm.Realm.Transaction
                    public void execute(Realm realm) {
                        Table table = realm.sharedRealm.getTable("class___ResultSets");
                        OsResults createFromQuery = OsResults.createFromQuery(realm.sharedRealm, table.where().equalTo(new long[]{table.getColumnIndex("name")}, new long[]{0}, str));
                        long size = createFromQuery.size();
                        if (size != 0) {
                            if (size > 1) {
                                RealmLog.warn("Multiple subscriptions named '" + str + "' exists. This should not be possible. They will all be deleted", new Object[0]);
                            }
                            createFromQuery.clear();
                            return;
                        }
                        throw new IllegalArgumentException("No active subscription named '" + str + "' exists.");
                    }
                }, new Transaction.OnSuccess() {
                    /* class io.realm.Realm.AnonymousClass3 */

                    @Override // io.realm.Realm.Transaction.OnSuccess
                    public void onSuccess() {
                        unsubscribeCallback.onSuccess(str);
                    }
                }, new Transaction.OnError() {
                    /* class io.realm.Realm.AnonymousClass4 */

                    @Override // io.realm.Realm.Transaction.OnError
                    public void onError(Throwable th) {
                        unsubscribeCallback.onError(str, th);
                    }
                });
            }
            throw new UnsupportedOperationException("Realm is not a partially synchronized Realm: " + this.configuration.getPath());
        } else {
            throw new IllegalArgumentException("'callback' required.");
        }
    }

    @ObjectServer
    public RealmPermissions getPermissions() {
        checkIfValid();
        return (RealmPermissions) where(RealmPermissions.class).findFirst();
    }

    @ObjectServer
    public RealmResults<Role> getRoles() {
        checkIfValid();
        return where(Role.class).sort("name").findAll();
    }

    @ObjectServer
    public ClassPrivileges getPrivileges(Class<? extends RealmModel> cls) {
        checkIfValid();
        if (cls != null) {
            return new ClassPrivileges((long) this.sharedRealm.getClassPrivileges(this.configuration.getSchemaMediator().getSimpleClassName(cls)));
        }
        throw new IllegalArgumentException("Non-null 'clazz' required.");
    }

    @ObjectServer
    public ClassPermissions getPermissions(Class<? extends RealmModel> cls) {
        checkIfValid();
        if (cls != null) {
            return (ClassPermissions) where(ClassPermissions.class).equalTo("name", this.configuration.getSchemaMediator().getSimpleClassName(cls)).findFirst();
        }
        throw new IllegalArgumentException("Non-null 'clazz' required.");
    }

    /* access modifiers changed from: package-private */
    public Table getTable(Class<? extends RealmModel> cls) {
        return this.schema.getTable(cls);
    }

    @Nullable
    public static Object getDefaultModule() {
        try {
            Constructor<?> constructor = Class.forName("io.realm.DefaultRealmModule").getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (InvocationTargetException e) {
            throw new RealmException("Could not create an instance of " + "io.realm.DefaultRealmModule", e);
        } catch (InstantiationException e2) {
            throw new RealmException("Could not create an instance of " + "io.realm.DefaultRealmModule", e2);
        } catch (IllegalAccessException e3) {
            throw new RealmException("Could not create an instance of " + "io.realm.DefaultRealmModule", e3);
        }
    }

    public static int getGlobalInstanceCount(RealmConfiguration realmConfiguration) {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        RealmCache.invokeWithGlobalRefCount(realmConfiguration, new RealmCache.Callback() {
            /* class io.realm.Realm.AnonymousClass5 */

            @Override // io.realm.RealmCache.Callback
            public void onResult(int i) {
                atomicInteger.set(i);
            }
        });
        return atomicInteger.get();
    }

    public static int getLocalInstanceCount(RealmConfiguration realmConfiguration) {
        return RealmCache.getLocalThreadCount(realmConfiguration);
    }

    public static abstract class Callback extends BaseRealm.InstanceCallback<Realm> {
        public abstract void onSuccess(Realm realm);

        @Override // io.realm.BaseRealm.InstanceCallback
        public void onError(Throwable th) {
            super.onError(th);
        }
    }
}
