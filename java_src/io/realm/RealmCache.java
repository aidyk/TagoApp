package io.realm;

import io.realm.BaseRealm;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Util;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* access modifiers changed from: package-private */
public final class RealmCache {
    private static final String ASYNC_CALLBACK_NULL_MSG = "The callback cannot be null.";
    private static final String ASYNC_NOT_ALLOWED_MSG = "Realm instances cannot be loaded asynchronously on a non-looper thread.";
    private static final String DIFFERENT_KEY_MESSAGE = "Wrong key used to decrypt Realm.";
    private static final String WRONG_REALM_CLASS_MESSAGE = "The type of Realm class must be Realm or DynamicRealm.";
    private static final List<WeakReference<RealmCache>> cachesList = new ArrayList();
    private static final Collection<RealmCache> leakedCaches = new ConcurrentLinkedQueue();
    private RealmConfiguration configuration;
    private final AtomicBoolean isLeaked = new AtomicBoolean(false);
    private final String realmPath;
    private final EnumMap<RealmCacheType, RefAndCount> refAndCountMap;

    /* access modifiers changed from: package-private */
    public interface Callback {
        void onResult(int i);
    }

    /* access modifiers changed from: package-private */
    public interface Callback0 {
        void onCall();
    }

    /* access modifiers changed from: private */
    public static class RefAndCount {
        private int globalCount;
        private final ThreadLocal<Integer> localCount;
        private final ThreadLocal<BaseRealm> localRealm;

        private RefAndCount() {
            this.localRealm = new ThreadLocal<>();
            this.localCount = new ThreadLocal<>();
            this.globalCount = 0;
        }

        static /* synthetic */ int access$808(RefAndCount refAndCount) {
            int i = refAndCount.globalCount;
            refAndCount.globalCount = i + 1;
            return i;
        }

        static /* synthetic */ int access$810(RefAndCount refAndCount) {
            int i = refAndCount.globalCount;
            refAndCount.globalCount = i - 1;
            return i;
        }
    }

    /* access modifiers changed from: private */
    public enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        static RealmCacheType valueOf(Class<? extends BaseRealm> cls) {
            if (cls == Realm.class) {
                return TYPED_REALM;
            }
            if (cls == DynamicRealm.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException(RealmCache.WRONG_REALM_CLASS_MESSAGE);
        }
    }

    /* access modifiers changed from: private */
    public static class CreateRealmRunnable<T extends BaseRealm> implements Runnable {
        private final BaseRealm.InstanceCallback<T> callback;
        private final CountDownLatch canReleaseBackgroundInstanceLatch = new CountDownLatch(1);
        private final RealmConfiguration configuration;
        private Future future;
        private final RealmNotifier notifier;
        private final Class<T> realmClass;

        CreateRealmRunnable(RealmNotifier realmNotifier, RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
            this.configuration = realmConfiguration;
            this.realmClass = cls;
            this.callback = instanceCallback;
            this.notifier = realmNotifier;
        }

        public void setFuture(Future future2) {
            this.future = future2;
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:0x0047 A[Catch:{ InterruptedException -> 0x005b, Throwable -> 0x0039, all -> 0x0036, all -> 0x006c }] */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x005a A[Catch:{ InterruptedException -> 0x005b, Throwable -> 0x0039, all -> 0x0036, all -> 0x006c }] */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x006f  */
        /* JADX WARNING: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            // Method dump skipped, instructions count: 115
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.CreateRealmRunnable.run():void");
        }
    }

    private RealmCache(String str) {
        this.realmPath = str;
        this.refAndCountMap = new EnumMap<>(RealmCacheType.class);
        for (RealmCacheType realmCacheType : RealmCacheType.values()) {
            this.refAndCountMap.put(realmCacheType, new RefAndCount());
        }
    }

    private static RealmCache getCache(String str, boolean z) {
        RealmCache realmCache;
        synchronized (cachesList) {
            Iterator<WeakReference<RealmCache>> it2 = cachesList.iterator();
            realmCache = null;
            while (it2.hasNext()) {
                RealmCache realmCache2 = it2.next().get();
                if (realmCache2 == null) {
                    it2.remove();
                } else if (realmCache2.realmPath.equals(str)) {
                    realmCache = realmCache2;
                }
            }
            if (realmCache == null && z) {
                realmCache = new RealmCache(str);
                cachesList.add(new WeakReference<>(realmCache));
            }
        }
        return realmCache;
    }

    static <T extends BaseRealm> RealmAsyncTask createRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        return getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCacheAsync(realmConfiguration, instanceCallback, cls);
    }

    private synchronized <T extends BaseRealm> RealmAsyncTask doCreateRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        Future<?> submitTransaction;
        AndroidCapabilities androidCapabilities = new AndroidCapabilities();
        androidCapabilities.checkCanDeliverNotification(ASYNC_NOT_ALLOWED_MSG);
        if (instanceCallback != null) {
            CreateRealmRunnable createRealmRunnable = new CreateRealmRunnable(new AndroidRealmNotifier(null, androidCapabilities), realmConfiguration, instanceCallback, cls);
            submitTransaction = BaseRealm.asyncTaskExecutor.submitTransaction(createRealmRunnable);
            createRealmRunnable.setFuture(submitTransaction);
        } else {
            throw new IllegalArgumentException(ASYNC_CALLBACK_NULL_MSG);
        }
        return new RealmAsyncTaskImpl(submitTransaction, BaseRealm.asyncTaskExecutor);
    }

    static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        return (E) getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls);
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0050  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized <E extends io.realm.BaseRealm> E doCreateRealmOrGetFromCache(io.realm.RealmConfiguration r5, java.lang.Class<E> r6) {
        /*
        // Method dump skipped, instructions count: 187
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.doCreateRealmOrGetFromCache(io.realm.RealmConfiguration, java.lang.Class):io.realm.BaseRealm");
    }

    /* access modifiers changed from: package-private */
    public synchronized void release(BaseRealm baseRealm) {
        String path = baseRealm.getPath();
        RefAndCount refAndCount = this.refAndCountMap.get(RealmCacheType.valueOf((Class<? extends BaseRealm>) baseRealm.getClass()));
        Integer num = (Integer) refAndCount.localCount.get();
        if (num == null) {
            num = 0;
        }
        if (num.intValue() <= 0) {
            RealmLog.warn("%s has been closed already. refCount is %s", path, num);
            return;
        }
        Integer valueOf = Integer.valueOf(num.intValue() - 1);
        if (valueOf.intValue() == 0) {
            refAndCount.localCount.set(null);
            refAndCount.localRealm.set(null);
            RefAndCount.access$810(refAndCount);
            if (refAndCount.globalCount >= 0) {
                baseRealm.doClose();
                if (getTotalGlobalRefCount() == 0) {
                    this.configuration = null;
                    ObjectServerFacade.getFacade(baseRealm.getConfiguration().isSyncConfiguration()).realmClosed(baseRealm.getConfiguration());
                }
            } else {
                throw new IllegalStateException("Global reference counter of Realm" + path + " got corrupted.");
            }
        } else {
            refAndCount.localCount.set(valueOf);
        }
    }

    private void validateConfiguration(RealmConfiguration realmConfiguration) {
        if (!this.configuration.equals(realmConfiguration)) {
            if (Arrays.equals(this.configuration.getEncryptionKey(), realmConfiguration.getEncryptionKey())) {
                RealmMigration migration = realmConfiguration.getMigration();
                RealmMigration migration2 = this.configuration.getMigration();
                if (migration2 == null || migration == null || !migration2.getClass().equals(migration.getClass()) || migration.equals(migration2)) {
                    throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.configuration + "\n\nNew configuration: \n" + realmConfiguration);
                }
                throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + realmConfiguration.getMigration().getClass().getCanonicalName());
            }
            throw new IllegalArgumentException(DIFFERENT_KEY_MESSAGE);
        }
    }

    static void invokeWithGlobalRefCount(RealmConfiguration realmConfiguration, Callback callback) {
        synchronized (cachesList) {
            RealmCache cache = getCache(realmConfiguration.getPath(), false);
            if (cache == null) {
                callback.onResult(0);
            } else {
                cache.doInvokeWithGlobalRefCount(callback);
            }
        }
    }

    private synchronized void doInvokeWithGlobalRefCount(Callback callback) {
        callback.onResult(getTotalGlobalRefCount());
    }

    /* access modifiers changed from: package-private */
    public synchronized void invokeWithLock(Callback0 callback0) {
        callback0.onCall();
    }

    private static void copyAssetFileIfNeeded(final RealmConfiguration realmConfiguration) {
        final File file = realmConfiguration.hasAssetFile() ? new File(realmConfiguration.getRealmDirectory(), realmConfiguration.getRealmFileName()) : null;
        final String syncServerCertificateAssetName = ObjectServerFacade.getFacade(realmConfiguration.isSyncConfiguration()).getSyncServerCertificateAssetName(realmConfiguration);
        final boolean z = !Util.isEmptyString(syncServerCertificateAssetName);
        if (file != null || z) {
            OsObjectStore.callWithLock(realmConfiguration, new Runnable() {
                /* class io.realm.RealmCache.AnonymousClass1 */

                public void run() {
                    if (file != null) {
                        RealmCache.copyFileIfNeeded(realmConfiguration.getAssetFilePath(), file);
                    }
                    if (z) {
                        RealmCache.copyFileIfNeeded(syncServerCertificateAssetName, new File(ObjectServerFacade.getFacade(realmConfiguration.isSyncConfiguration()).getSyncServerCertificateFilePath(realmConfiguration)));
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0087 A[SYNTHETIC, Splitter:B:44:0x0087] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x008e A[SYNTHETIC, Splitter:B:48:0x008e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyFileIfNeeded(java.lang.String r7, java.io.File r8) {
        /*
        // Method dump skipped, instructions count: 146
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.copyFileIfNeeded(java.lang.String, java.io.File):void");
    }

    static int getLocalThreadCount(RealmConfiguration realmConfiguration) {
        RealmCache cache = getCache(realmConfiguration.getPath(), false);
        if (cache == null) {
            return 0;
        }
        int i = 0;
        for (RefAndCount refAndCount : cache.refAndCountMap.values()) {
            Integer num = (Integer) refAndCount.localCount.get();
            i += num != null ? num.intValue() : 0;
        }
        return i;
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    private int getTotalGlobalRefCount() {
        int i = 0;
        for (RefAndCount refAndCount : this.refAndCountMap.values()) {
            i += refAndCount.globalCount;
        }
        return i;
    }

    /* access modifiers changed from: package-private */
    public void leak() {
        if (!this.isLeaked.getAndSet(true)) {
            leakedCaches.add(this);
        }
    }
}
