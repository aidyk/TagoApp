package com.polidea.rxandroidble2.internal.util;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import bleshadow.javax.inject.Inject;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Cancellable;

@TargetApi(19)
public class LocationServicesOkObservableApi23Factory {
    private final Context context;
    private final LocationServicesStatus locationServicesStatus;

    @Inject
    LocationServicesOkObservableApi23Factory(Context context2, LocationServicesStatus locationServicesStatus2) {
        this.context = context2;
        this.locationServicesStatus = locationServicesStatus2;
    }

    public Observable<Boolean> get() {
        return Observable.create(new ObservableOnSubscribe<Boolean>() {
            /* class com.polidea.rxandroidble2.internal.util.LocationServicesOkObservableApi23Factory.AnonymousClass1 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<Boolean> observableEmitter) throws Exception {
                boolean isLocationProviderOk = LocationServicesOkObservableApi23Factory.this.locationServicesStatus.isLocationProviderOk();
                final AnonymousClass1 r1 = new BroadcastReceiver() {
                    /* class com.polidea.rxandroidble2.internal.util.LocationServicesOkObservableApi23Factory.AnonymousClass1.AnonymousClass1 */

                    public void onReceive(Context context, Intent intent) {
                        observableEmitter.onNext(Boolean.valueOf(LocationServicesOkObservableApi23Factory.this.locationServicesStatus.isLocationProviderOk()));
                    }
                };
                observableEmitter.onNext(Boolean.valueOf(isLocationProviderOk));
                LocationServicesOkObservableApi23Factory.this.context.registerReceiver(r1, new IntentFilter("android.location.MODE_CHANGED"));
                observableEmitter.setCancellable(new Cancellable() {
                    /* class com.polidea.rxandroidble2.internal.util.LocationServicesOkObservableApi23Factory.AnonymousClass1.AnonymousClass2 */

                    @Override // io.reactivex.functions.Cancellable
                    public void cancel() throws Exception {
                        LocationServicesOkObservableApi23Factory.this.context.unregisterReceiver(r1);
                    }
                });
            }
        }).distinctUntilChanged();
    }
}
