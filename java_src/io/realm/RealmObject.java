package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.ProxyState;
import io.realm.annotations.RealmClass;
import io.realm.internal.InvalidRow;
import io.realm.internal.ManagableObject;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.rx.ObjectChange;

@RealmClass
public abstract class RealmObject implements RealmModel, ManagableObject {
    static final String MSG_DELETED_OBJECT = "the object is already deleted.";
    static final String MSG_DYNAMIC_OBJECT = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead.";
    static final String MSG_NULL_OBJECT = "'model' is null.";

    public final void deleteFromRealm() {
        deleteFromRealm(this);
    }

    public static <E extends RealmModel> void deleteFromRealm(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            if (realmObjectProxy.realmGet$proxyState().getRow$realm() == null) {
                throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            } else if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                realmObjectProxy.realmGet$proxyState().getRealm$realm().checkIfValid();
                Row row$realm = realmObjectProxy.realmGet$proxyState().getRow$realm();
                row$realm.getTable().moveLastOver(row$realm.getIndex());
                realmObjectProxy.realmGet$proxyState().setRow$realm(InvalidRow.INSTANCE);
            } else {
                throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            }
        } else {
            throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
        }
    }

    @Override // io.realm.internal.ManagableObject
    public final boolean isValid() {
        return isValid(this);
    }

    public static <E extends RealmModel> boolean isValid(E e) {
        if (e instanceof RealmObjectProxy) {
            Row row$realm = ((RealmObjectProxy) e).realmGet$proxyState().getRow$realm();
            if (row$realm == null || !row$realm.isAttached()) {
                return false;
            }
            return true;
        } else if (e != null) {
            return true;
        } else {
            return false;
        }
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    public static <E extends RealmModel> boolean isLoaded(E e) {
        if (!(e instanceof RealmObjectProxy)) {
            return true;
        }
        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
        realmObjectProxy.realmGet$proxyState().getRealm$realm().checkIfValid();
        return realmObjectProxy.realmGet$proxyState().isLoaded();
    }

    @Override // io.realm.internal.ManagableObject
    public boolean isManaged() {
        return isManaged(this);
    }

    public static <E extends RealmModel> boolean isManaged(E e) {
        return e instanceof RealmObjectProxy;
    }

    public Realm getRealm() {
        return getRealm(this);
    }

    public static Realm getRealm(RealmModel realmModel) {
        if (realmModel == null) {
            throw new IllegalArgumentException(MSG_NULL_OBJECT);
        } else if (realmModel instanceof DynamicRealmObject) {
            throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
        } else if (!(realmModel instanceof RealmObjectProxy)) {
            return null;
        } else {
            BaseRealm realm$realm = ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm();
            realm$realm.checkIfValid();
            if (isValid(realmModel)) {
                return (Realm) realm$realm;
            }
            throw new IllegalStateException(MSG_DELETED_OBJECT);
        }
    }

    public final boolean load() {
        return load(this);
    }

    public static <E extends RealmModel> boolean load(E e) {
        if (isLoaded(e)) {
            return true;
        }
        if (!(e instanceof RealmObjectProxy)) {
            return false;
        }
        ((RealmObjectProxy) e).realmGet$proxyState().load();
        return true;
    }

    public final <E extends RealmModel> void addChangeListener(RealmObjectChangeListener<E> realmObjectChangeListener) {
        addChangeListener(this, realmObjectChangeListener);
    }

    public final <E extends RealmModel> void addChangeListener(RealmChangeListener<E> realmChangeListener) {
        addChangeListener(this, realmChangeListener);
    }

    public static <E extends RealmModel> void addChangeListener(E e, RealmObjectChangeListener<E> realmObjectChangeListener) {
        if (e == null) {
            throw new IllegalArgumentException("Object should not be null");
        } else if (realmObjectChangeListener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            realm$realm.checkIfValid();
            realm$realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            realmObjectProxy.realmGet$proxyState().addChangeListener(realmObjectChangeListener);
        } else {
            throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
        }
    }

    public static <E extends RealmModel> void addChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        addChangeListener(e, new ProxyState.RealmChangeListenerWrapper(realmChangeListener));
    }

    public final void removeChangeListener(RealmObjectChangeListener realmObjectChangeListener) {
        removeChangeListener(this, realmObjectChangeListener);
    }

    public final void removeChangeListener(RealmChangeListener realmChangeListener) {
        removeChangeListener(this, realmChangeListener);
    }

    public static <E extends RealmModel> void removeChangeListener(E e, RealmObjectChangeListener realmObjectChangeListener) {
        if (e == null) {
            throw new IllegalArgumentException("Object should not be null");
        } else if (realmObjectChangeListener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            realm$realm.checkIfValid();
            realm$realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            realmObjectProxy.realmGet$proxyState().removeChangeListener(realmObjectChangeListener);
        } else {
            throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
        }
    }

    public static <E extends RealmModel> void removeChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        removeChangeListener(e, new ProxyState.RealmChangeListenerWrapper(realmChangeListener));
    }

    public final void removeAllChangeListeners() {
        removeAllChangeListeners(this);
    }

    public static <E extends RealmModel> void removeAllChangeListeners(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            realm$realm.checkIfValid();
            realm$realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            realmObjectProxy.realmGet$proxyState().removeAllChangeListeners();
            return;
        }
        throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
    }

    public final <E extends RealmObject> Flowable<E> asFlowable() {
        return asFlowable(this);
    }

    public final <E extends RealmObject> Observable<ObjectChange<E>> asChangesetObservable() {
        return asChangesetObservable(this);
    }

    public static <E extends RealmModel> Flowable<E> asFlowable(E e) {
        if (e instanceof RealmObjectProxy) {
            BaseRealm realm$realm = ((RealmObjectProxy) e).realmGet$proxyState().getRealm$realm();
            if (realm$realm instanceof Realm) {
                return realm$realm.configuration.getRxFactory().from((Realm) realm$realm, e);
            }
            if (realm$realm instanceof DynamicRealm) {
                return realm$realm.configuration.getRxFactory().from((DynamicRealm) realm$realm, (DynamicRealmObject) e);
            }
            throw new UnsupportedOperationException(realm$realm.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends RealmModel> Observable<ObjectChange<E>> asChangesetObservable(E e) {
        if (e instanceof RealmObjectProxy) {
            BaseRealm realm$realm = ((RealmObjectProxy) e).realmGet$proxyState().getRealm$realm();
            if (realm$realm instanceof Realm) {
                return realm$realm.configuration.getRxFactory().changesetsFrom((Realm) realm$realm, e);
            }
            if (realm$realm instanceof DynamicRealm) {
                return realm$realm.configuration.getRxFactory().changesetsFrom((DynamicRealm) realm$realm, (DynamicRealmObject) e);
            }
            throw new UnsupportedOperationException(realm$realm.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }
}
