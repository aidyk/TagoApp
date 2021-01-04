package com.polidea.rxandroidble2.internal.connection;

import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.exceptions.BleGattException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import io.reactivex.Observable;
import io.reactivex.disposables.SerialDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;

/* access modifiers changed from: package-private */
@ConnectionScope
public class MtuWatcher implements ConnectionSubscriptionWatcher, MtuProvider, Consumer<Integer> {
    private Integer currentMtu;
    private final Observable<Integer> mtuObservable;
    private final SerialDisposable serialSubscription = new SerialDisposable();

    @Inject
    MtuWatcher(RxBleGattCallback rxBleGattCallback, @Named("GATT_MTU_MINIMUM") int i) {
        this.mtuObservable = rxBleGattCallback.getOnMtuChanged().retry(new Predicate<Throwable>() {
            /* class com.polidea.rxandroidble2.internal.connection.MtuWatcher.AnonymousClass1 */

            public boolean test(Throwable th) {
                return (th instanceof BleGattException) && ((BleGattException) th).getBleGattOperationType() == BleGattOperationType.ON_MTU_CHANGED;
            }
        });
        this.currentMtu = Integer.valueOf(i);
    }

    @Override // com.polidea.rxandroidble2.internal.connection.MtuProvider
    public int getMtu() {
        return this.currentMtu.intValue();
    }

    @Override // com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher
    public void onConnectionSubscribed() {
        this.serialSubscription.set(this.mtuObservable.subscribe(this, new Consumer<Throwable>() {
            /* class com.polidea.rxandroidble2.internal.connection.MtuWatcher.AnonymousClass2 */

            public void accept(Throwable th) {
            }
        }));
    }

    @Override // com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher
    public void onConnectionUnsubscribed() {
        this.serialSubscription.dispose();
    }

    public void accept(Integer num) {
        this.currentMtu = num;
    }
}
