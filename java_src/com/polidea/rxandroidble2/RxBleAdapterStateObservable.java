package com.polidea.rxandroidble2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.util.Log;
import bleshadow.javax.inject.Inject;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Action;

public class RxBleAdapterStateObservable extends Observable<BleAdapterState> {
    private static final String TAG = "AdapterStateObs";
    @NonNull
    private final Context context;

    public static class BleAdapterState {
        public static final BleAdapterState STATE_OFF = new BleAdapterState(false);
        public static final BleAdapterState STATE_ON = new BleAdapterState(true);
        public static final BleAdapterState STATE_TURNING_OFF = new BleAdapterState(false);
        public static final BleAdapterState STATE_TURNING_ON = new BleAdapterState(false);
        private final boolean isUsable;

        private BleAdapterState(boolean z) {
            this.isUsable = z;
        }

        public boolean isUsable() {
            return this.isUsable;
        }
    }

    @Inject
    public RxBleAdapterStateObservable(@NonNull Context context2) {
        this.context = context2;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Observable
    public void subscribeActual(final Observer<? super BleAdapterState> observer) {
        final AnonymousClass1 r0 = new BroadcastReceiver() {
            /* class com.polidea.rxandroidble2.RxBleAdapterStateObservable.AnonymousClass1 */

            public void onReceive(Context context, Intent intent) {
                if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction())) {
                    observer.onNext(RxBleAdapterStateObservable.mapToBleAdapterState(intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1)));
                }
            }
        };
        observer.onSubscribe(Disposables.fromAction(new Action() {
            /* class com.polidea.rxandroidble2.RxBleAdapterStateObservable.AnonymousClass2 */

            @Override // io.reactivex.functions.Action
            public void run() throws Exception {
                try {
                    RxBleAdapterStateObservable.this.context.unregisterReceiver(r0);
                } catch (IllegalArgumentException unused) {
                    Log.d(RxBleAdapterStateObservable.TAG, "The receiver is already not registered.");
                }
            }
        }));
        this.context.registerReceiver(r0, createFilter());
    }

    /* access modifiers changed from: private */
    public static BleAdapterState mapToBleAdapterState(int i) {
        switch (i) {
            case 11:
                return BleAdapterState.STATE_TURNING_ON;
            case 12:
                return BleAdapterState.STATE_ON;
            case 13:
                return BleAdapterState.STATE_TURNING_OFF;
            default:
                return BleAdapterState.STATE_OFF;
        }
    }

    private static IntentFilter createFilter() {
        return new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
    }
}
