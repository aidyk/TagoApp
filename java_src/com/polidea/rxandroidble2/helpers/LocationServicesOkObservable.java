package com.polidea.rxandroidble2.helpers;

import android.content.Context;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.DaggerClientComponent;
import com.polidea.rxandroidble2.internal.util.DisposableUtil;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.observers.DisposableObserver;

public class LocationServicesOkObservable extends Observable<Boolean> {
    @NonNull
    private final Observable<Boolean> locationServicesOkObsImpl;

    public static LocationServicesOkObservable createInstance(@NonNull Context context) {
        return DaggerClientComponent.builder().clientModule(new ClientComponent.ClientModule(context)).build().locationServicesOkObservable();
    }

    @Inject
    LocationServicesOkObservable(@Named("location-ok-boolean-observable") @NonNull Observable<Boolean> observable) {
        this.locationServicesOkObsImpl = observable;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Boolean> observer) {
        DisposableObserver disposableObserver = DisposableUtil.disposableObserver(observer);
        observer.onSubscribe(disposableObserver);
        this.locationServicesOkObsImpl.subscribeWith(disposableObserver);
    }
}
