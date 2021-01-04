package com.polidea.rxandroidble2.internal.util;

import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import com.polidea.rxandroidble2.RxBleClient;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.concurrent.TimeUnit;

public class ClientStateObservable extends Observable<RxBleClient.State> {
    private final Observable<RxBleAdapterStateObservable.BleAdapterState> bleAdapterStateObservable;
    private final Observable<Boolean> locationServicesOkObservable;
    private final LocationServicesStatus locationServicesStatus;
    private final RxBleAdapterWrapper rxBleAdapterWrapper;
    private final Scheduler timerScheduler;

    @Inject
    protected ClientStateObservable(RxBleAdapterWrapper rxBleAdapterWrapper2, Observable<RxBleAdapterStateObservable.BleAdapterState> observable, @Named("location-ok-boolean-observable") Observable<Boolean> observable2, LocationServicesStatus locationServicesStatus2, @Named("timeout") Scheduler scheduler) {
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
        this.bleAdapterStateObservable = observable;
        this.locationServicesOkObservable = observable2;
        this.locationServicesStatus = locationServicesStatus2;
        this.timerScheduler = scheduler;
    }

    @NonNull
    private static Single<Boolean> checkPermissionUntilGranted(final LocationServicesStatus locationServicesStatus2, Scheduler scheduler) {
        return Observable.interval(0, 1, TimeUnit.SECONDS, scheduler).takeWhile(new Predicate<Long>() {
            /* class com.polidea.rxandroidble2.internal.util.ClientStateObservable.AnonymousClass2 */

            public boolean test(Long l) {
                return !locationServicesStatus2.isLocationPermissionOk();
            }
        }).count().map(new Function<Long, Boolean>() {
            /* class com.polidea.rxandroidble2.internal.util.ClientStateObservable.AnonymousClass1 */

            public Boolean apply(Long l) throws Exception {
                return Boolean.valueOf(l.longValue() == 0);
            }
        });
    }

    /* access modifiers changed from: private */
    @NonNull
    public static Observable<RxBleClient.State> checkAdapterAndServicesState(Boolean bool, RxBleAdapterWrapper rxBleAdapterWrapper2, Observable<RxBleAdapterStateObservable.BleAdapterState> observable, final Observable<Boolean> observable2) {
        Observable<R> switchMap = observable.startWith(rxBleAdapterWrapper2.isBluetoothEnabled() ? RxBleAdapterStateObservable.BleAdapterState.STATE_ON : RxBleAdapterStateObservable.BleAdapterState.STATE_OFF).switchMap(new Function<RxBleAdapterStateObservable.BleAdapterState, Observable<RxBleClient.State>>() {
            /* class com.polidea.rxandroidble2.internal.util.ClientStateObservable.AnonymousClass3 */

            public Observable<RxBleClient.State> apply(RxBleAdapterStateObservable.BleAdapterState bleAdapterState) {
                if (bleAdapterState != RxBleAdapterStateObservable.BleAdapterState.STATE_ON) {
                    return Observable.just(RxBleClient.State.BLUETOOTH_NOT_ENABLED);
                }
                return observable2.map(new Function<Boolean, RxBleClient.State>() {
                    /* class com.polidea.rxandroidble2.internal.util.ClientStateObservable.AnonymousClass3.AnonymousClass1 */

                    public RxBleClient.State apply(Boolean bool) {
                        return bool.booleanValue() ? RxBleClient.State.READY : RxBleClient.State.LOCATION_SERVICES_NOT_ENABLED;
                    }
                });
            }
        });
        return bool.booleanValue() ? switchMap.skip(1) : switchMap;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super RxBleClient.State> observer) {
        if (!this.rxBleAdapterWrapper.hasBluetoothAdapter()) {
            observer.onSubscribe(Disposables.empty());
            observer.onComplete();
            return;
        }
        checkPermissionUntilGranted(this.locationServicesStatus, this.timerScheduler).flatMapObservable(new Function<Boolean, Observable<RxBleClient.State>>() {
            /* class com.polidea.rxandroidble2.internal.util.ClientStateObservable.AnonymousClass4 */

            public Observable<RxBleClient.State> apply(Boolean bool) {
                return ClientStateObservable.checkAdapterAndServicesState(bool, ClientStateObservable.this.rxBleAdapterWrapper, ClientStateObservable.this.bleAdapterStateObservable, ClientStateObservable.this.locationServicesOkObservable);
            }
        }).distinctUntilChanged().subscribe((Observer<? super R>) observer);
    }
}
