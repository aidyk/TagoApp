package com.polidea.rxandroidble2;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.scan.BackgroundScanner;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanResult;
import com.polidea.rxandroidble2.scan.ScanSettings;
import io.reactivex.Observable;
import java.util.Set;
import java.util.UUID;

public abstract class RxBleClient {

    public enum State {
        BLUETOOTH_NOT_AVAILABLE,
        LOCATION_PERMISSION_NOT_GRANTED,
        BLUETOOTH_NOT_ENABLED,
        LOCATION_SERVICES_NOT_ENABLED,
        READY
    }

    public abstract BackgroundScanner getBackgroundScanner();

    public abstract RxBleDevice getBleDevice(@NonNull String str);

    public abstract Set<RxBleDevice> getBondedDevices();

    public abstract State getState();

    public abstract Observable<State> observeStateChanges();

    public abstract Observable<ScanResult> scanBleDevices(ScanSettings scanSettings, ScanFilter... scanFilterArr);

    @Deprecated
    public abstract Observable<RxBleScanResult> scanBleDevices(@Nullable UUID... uuidArr);

    public static RxBleClient create(@NonNull Context context) {
        return DaggerClientComponent.builder().clientModule(new ClientComponent.ClientModule(context)).build().rxBleClient();
    }

    public static void setLogLevel(int i) {
        RxBleLog.setLogLevel(i);
    }
}
