package io.realm.internal;

import android.content.Context;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmException;
import java.lang.reflect.InvocationTargetException;

public class ObjectServerFacade {
    private static final ObjectServerFacade nonSyncFacade = new ObjectServerFacade();
    private static ObjectServerFacade syncFacade;

    public void addSupportForObjectLevelPermissions(RealmConfiguration.Builder builder) {
    }

    public void downloadRemoteChanges(RealmConfiguration realmConfiguration) {
    }

    public String getSyncServerCertificateAssetName(RealmConfiguration realmConfiguration) {
        return null;
    }

    public String getSyncServerCertificateFilePath(RealmConfiguration realmConfiguration) {
        return null;
    }

    public void init(Context context) {
    }

    public boolean isPartialRealm(RealmConfiguration realmConfiguration) {
        return false;
    }

    public void realmClosed(RealmConfiguration realmConfiguration) {
    }

    public boolean wasDownloadInterrupted(Throwable th) {
        return false;
    }

    public void wrapObjectStoreSessionIfRequired(OsRealmConfig osRealmConfig) {
    }

    static {
        syncFacade = null;
        try {
            syncFacade = (ObjectServerFacade) Class.forName("io.realm.internal.SyncObjectServerFacade").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
        } catch (InstantiationException e) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e);
        } catch (IllegalAccessException e2) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e2);
        } catch (NoSuchMethodException e3) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e4.getTargetException());
        }
    }

    public Object[] getUserAndServerUrl(RealmConfiguration realmConfiguration) {
        return new Object[8];
    }

    public static ObjectServerFacade getFacade(boolean z) {
        if (z) {
            return syncFacade;
        }
        return nonSyncFacade;
    }

    public static ObjectServerFacade getSyncFacadeIfPossible() {
        if (syncFacade != null) {
            return syncFacade;
        }
        return nonSyncFacade;
    }

    public OsResults createSubscriptionAwareResults(OsSharedRealm osSharedRealm, TableQuery tableQuery, SortDescriptor sortDescriptor, SortDescriptor sortDescriptor2, String str) {
        throw new IllegalStateException("Should only be called by builds supporting Sync");
    }
}
