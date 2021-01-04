package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import io.realm.internal.sync.OsSubscription;
import javax.annotation.Nullable;

public class SubscriptionAwareOsResults extends OsResults {
    private boolean collectionChanged = false;
    private long delayedNotificationPtr = 0;
    private boolean firstCallback = true;
    private OsSubscription subscription = null;
    private boolean subscriptionChanged;

    public static SubscriptionAwareOsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor sortDescriptor2, String str) {
        tableQuery.validateQuery();
        return new SubscriptionAwareOsResults(osSharedRealm, tableQuery.getTable(), nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), sortDescriptor, sortDescriptor2), str);
    }

    SubscriptionAwareOsResults(OsSharedRealm osSharedRealm, Table table, long j, String str) {
        super(osSharedRealm, table, j);
        this.subscription = new OsSubscription(this, str);
        this.subscription.addChangeListener(new RealmChangeListener<OsSubscription>() {
            /* class io.realm.internal.SubscriptionAwareOsResults.AnonymousClass1 */

            public void onChange(OsSubscription osSubscription) {
                SubscriptionAwareOsResults.this.subscriptionChanged = true;
            }
        });
        RealmNotifier realmNotifier = osSharedRealm.realmNotifier;
        realmNotifier.addBeginSendingNotificationsCallback(new Runnable() {
            /* class io.realm.internal.SubscriptionAwareOsResults.AnonymousClass2 */

            public void run() {
                SubscriptionAwareOsResults.this.subscriptionChanged = false;
                SubscriptionAwareOsResults.this.collectionChanged = false;
                SubscriptionAwareOsResults.this.delayedNotificationPtr = 0;
            }
        });
        realmNotifier.addFinishedSendingNotificationsCallback(new Runnable() {
            /* class io.realm.internal.SubscriptionAwareOsResults.AnonymousClass3 */

            public void run() {
                if (SubscriptionAwareOsResults.this.collectionChanged || SubscriptionAwareOsResults.this.subscriptionChanged) {
                    SubscriptionAwareOsResults.this.triggerDelayedChangeListener();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void triggerDelayedChangeListener() {
        OsCollectionChangeSet osCollectionChangeSet;
        OsSubscription osSubscription = this.subscriptionChanged ? this.subscription : null;
        if (this.delayedNotificationPtr != 0 || osSubscription == null || osSubscription.getState() == OsSubscription.SubscriptionState.ERROR || osSubscription.getState() == OsSubscription.SubscriptionState.COMPLETE) {
            if (this.delayedNotificationPtr == 0) {
                osCollectionChangeSet = new EmptyLoadChangeSet(osSubscription, this.firstCallback, true);
            } else {
                osCollectionChangeSet = new OsCollectionChangeSet(this.delayedNotificationPtr, this.firstCallback, osSubscription, true);
            }
            if (!osCollectionChangeSet.isEmpty() || !isLoaded()) {
                this.loaded = true;
                this.firstCallback = false;
                this.observerPairs.foreach(new ObservableCollection.Callback(osCollectionChangeSet));
            }
        }
    }

    @Override // io.realm.internal.OsResults, io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        this.collectionChanged = true;
        this.delayedNotificationPtr = j;
    }
}
