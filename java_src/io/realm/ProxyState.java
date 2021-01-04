package io.realm;

import io.realm.RealmModel;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsObject;
import io.realm.internal.PendingRow;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.UncheckedRow;
import java.util.List;
import javax.annotation.Nullable;

public final class ProxyState<E extends RealmModel> implements PendingRow.FrontEnd {
    private static QueryCallback queryCallback = new QueryCallback();
    private boolean acceptDefaultValue;
    private List<String> excludeFields;
    private E model;
    private ObserverPairList<OsObject.ObjectObserverPair> observerPairs = new ObserverPairList<>();
    private OsObject osObject;
    private BaseRealm realm;
    private Row row;
    private boolean underConstruction = true;

    /* access modifiers changed from: package-private */
    public static class RealmChangeListenerWrapper<T extends RealmModel> implements RealmObjectChangeListener<T> {
        private final RealmChangeListener<T> listener;

        RealmChangeListenerWrapper(RealmChangeListener<T> realmChangeListener) {
            if (realmChangeListener != null) {
                this.listener = realmChangeListener;
                return;
            }
            throw new IllegalArgumentException("Listener should not be null");
        }

        @Override // io.realm.RealmObjectChangeListener
        public void onChange(T t, @Nullable ObjectChangeSet objectChangeSet) {
            this.listener.onChange(t);
        }

        public boolean equals(Object obj) {
            return (obj instanceof RealmChangeListenerWrapper) && this.listener == ((RealmChangeListenerWrapper) obj).listener;
        }

        public int hashCode() {
            return this.listener.hashCode();
        }
    }

    /* access modifiers changed from: private */
    public static class QueryCallback implements ObserverPairList.Callback<OsObject.ObjectObserverPair> {
        private QueryCallback() {
        }

        public void onCalled(OsObject.ObjectObserverPair objectObserverPair, Object obj) {
            objectObserverPair.onChange((RealmModel) obj, null);
        }
    }

    public ProxyState() {
    }

    public ProxyState(E e) {
        this.model = e;
    }

    public BaseRealm getRealm$realm() {
        return this.realm;
    }

    public void setRealm$realm(BaseRealm baseRealm) {
        this.realm = baseRealm;
    }

    public Row getRow$realm() {
        return this.row;
    }

    public void setRow$realm(Row row2) {
        this.row = row2;
    }

    public boolean getAcceptDefaultValue$realm() {
        return this.acceptDefaultValue;
    }

    public void setAcceptDefaultValue$realm(boolean z) {
        this.acceptDefaultValue = z;
    }

    public List<String> getExcludeFields$realm() {
        return this.excludeFields;
    }

    public void setExcludeFields$realm(List<String> list) {
        this.excludeFields = list;
    }

    private void notifyQueryFinished() {
        this.observerPairs.foreach(queryCallback);
    }

    public void addChangeListener(RealmObjectChangeListener<E> realmObjectChangeListener) {
        if (this.row instanceof PendingRow) {
            this.observerPairs.add(new OsObject.ObjectObserverPair(this.model, realmObjectChangeListener));
        } else if (this.row instanceof UncheckedRow) {
            registerToObjectNotifier();
            if (this.osObject != null) {
                this.osObject.addListener(this.model, realmObjectChangeListener);
            }
        }
    }

    public void removeChangeListener(RealmObjectChangeListener<E> realmObjectChangeListener) {
        if (this.osObject != null) {
            this.osObject.removeListener(this.model, realmObjectChangeListener);
        } else {
            this.observerPairs.remove(this.model, realmObjectChangeListener);
        }
    }

    public void removeAllChangeListeners() {
        if (this.osObject != null) {
            this.osObject.removeListener(this.model);
        } else {
            this.observerPairs.clear();
        }
    }

    public boolean isUnderConstruction() {
        return this.underConstruction;
    }

    public void setConstructionFinished() {
        this.underConstruction = false;
        this.excludeFields = null;
    }

    private void registerToObjectNotifier() {
        if (this.realm.sharedRealm != null && !this.realm.sharedRealm.isClosed() && this.row.isAttached() && this.osObject == null) {
            this.osObject = new OsObject(this.realm.sharedRealm, (UncheckedRow) this.row);
            this.osObject.setObserverPairs(this.observerPairs);
            this.observerPairs = null;
        }
    }

    public boolean isLoaded() {
        return !(this.row instanceof PendingRow);
    }

    public void load() {
        if (this.row instanceof PendingRow) {
            ((PendingRow) this.row).executeQuery();
        }
    }

    @Override // io.realm.internal.PendingRow.FrontEnd
    public void onQueryFinished(Row row2) {
        this.row = row2;
        notifyQueryFinished();
        if (row2.isAttached()) {
            registerToObjectNotifier();
        }
    }

    public void checkValidObject(RealmModel realmModel) {
        if (!RealmObject.isValid(realmModel) || !RealmObject.isManaged(realmModel)) {
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != getRealm$realm()) {
            throw new IllegalArgumentException("'value' belongs to a different Realm.");
        }
    }
}
