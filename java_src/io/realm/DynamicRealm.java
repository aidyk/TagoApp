package io.realm;

import io.reactivex.Flowable;
import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.annotations.ObjectServer;
import io.realm.log.RealmLog;
import io.realm.sync.permissions.ClassPrivileges;
import io.realm.sync.permissions.ObjectPrivileges;
import io.realm.sync.permissions.RealmPrivileges;
import java.io.File;
import java.util.Locale;

public class DynamicRealm extends BaseRealm {
    private final RealmSchema schema = new MutableRealmSchema(this);

    public interface Transaction {
        void execute(DynamicRealm dynamicRealm);
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

    private DynamicRealm(final RealmCache realmCache) {
        super(realmCache, (OsSchemaInfo) null);
        RealmCache.invokeWithGlobalRefCount(realmCache.getConfiguration(), new RealmCache.Callback() {
            /* class io.realm.DynamicRealm.AnonymousClass1 */

            @Override // io.realm.RealmCache.Callback
            public void onResult(int i) {
                if (i <= 0 && !realmCache.getConfiguration().isReadOnly() && OsObjectStore.getSchemaVersion(DynamicRealm.this.sharedRealm) == -1) {
                    DynamicRealm.this.sharedRealm.beginTransaction();
                    if (OsObjectStore.getSchemaVersion(DynamicRealm.this.sharedRealm) == -1) {
                        OsObjectStore.setSchemaVersion(DynamicRealm.this.sharedRealm, -1);
                    }
                    DynamicRealm.this.sharedRealm.commitTransaction();
                }
            }
        });
    }

    private DynamicRealm(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
    }

    public static DynamicRealm getInstance(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (DynamicRealm) RealmCache.createRealmOrGetFromCache(realmConfiguration, DynamicRealm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    public static RealmAsyncTask getInstanceAsync(RealmConfiguration realmConfiguration, Callback callback) {
        if (realmConfiguration != null) {
            return RealmCache.createRealmOrGetFromCacheAsync(realmConfiguration, callback, DynamicRealm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    public DynamicRealmObject createObject(String str) {
        checkIfValid();
        Table table = this.schema.getTable(str);
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, str);
        if (primaryKeyForObject == null) {
            return new DynamicRealmObject(this, CheckedRow.getFromRow(OsObject.create(table)));
        }
        throw new RealmException(String.format(Locale.US, "'%s' has a primary key field '%s', use  'createObject(String, Object)' instead.", str, primaryKeyForObject));
    }

    public DynamicRealmObject createObject(String str, Object obj) {
        return new DynamicRealmObject(this, CheckedRow.getFromRow(OsObject.createWithPrimaryKey(this.schema.getTable(str), obj)));
    }

    public RealmQuery<DynamicRealmObject> where(String str) {
        checkIfValid();
        if (this.sharedRealm.hasTable(Table.getTableNameForClass(str))) {
            return RealmQuery.createDynamicQuery(this, str);
        }
        throw new IllegalArgumentException("Class does not exist in the Realm and cannot be queried: " + str);
    }

    public void addChangeListener(RealmChangeListener<DynamicRealm> realmChangeListener) {
        addListener(realmChangeListener);
    }

    public void removeChangeListener(RealmChangeListener<DynamicRealm> realmChangeListener) {
        removeListener(realmChangeListener);
    }

    public void removeAllChangeListeners() {
        removeAllListeners();
    }

    public void delete(String str) {
        checkIfValid();
        checkIfInTransaction();
        if (!this.sharedRealm.isPartial()) {
            this.schema.getTable(str).clear(this.sharedRealm.isPartial());
            return;
        }
        throw new IllegalStateException("This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'");
    }

    public void executeTransaction(Transaction transaction) {
        if (transaction != null) {
            beginTransaction();
            try {
                transaction.execute(this);
                commitTransaction();
            } catch (RuntimeException e) {
                if (isInTransaction()) {
                    cancelTransaction();
                } else {
                    RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
                }
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Transaction should not be null");
        }
    }

    static DynamicRealm createInstance(RealmCache realmCache) {
        return new DynamicRealm(realmCache);
    }

    static DynamicRealm createInstance(OsSharedRealm osSharedRealm) {
        return new DynamicRealm(osSharedRealm);
    }

    @Override // io.realm.BaseRealm
    public Flowable<DynamicRealm> asFlowable() {
        return this.configuration.getRxFactory().from(this);
    }

    @ObjectServer
    public ClassPrivileges getPrivileges(String str) {
        checkIfValid();
        if (Util.isEmptyString(str)) {
            throw new IllegalArgumentException("Non-empty 'className' required.");
        } else if (this.schema.contains(str)) {
            return new ClassPrivileges((long) this.sharedRealm.getClassPrivileges(str));
        } else {
            throw new RealmException("Class '" + str + "' is not part of the schema for this Realm");
        }
    }

    @Override // io.realm.BaseRealm
    public RealmSchema getSchema() {
        return this.schema;
    }

    /* access modifiers changed from: package-private */
    public void setVersion(long j) {
        OsObjectStore.setSchemaVersion(this.sharedRealm, j);
    }

    public static abstract class Callback extends BaseRealm.InstanceCallback<DynamicRealm> {
        public abstract void onSuccess(DynamicRealm dynamicRealm);

        @Override // io.realm.BaseRealm.InstanceCallback
        public void onError(Throwable th) {
            super.onError(th);
        }
    }
}
