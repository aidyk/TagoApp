package com.liber8tech.tago.service;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.IntentFilter;
import com.liber8tech.tago.model.ExtendedConnection;
import com.liber8tech.tago.model.Firmware;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.model.SyncState;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import com.polidea.rxandroidble2.RxBleClient;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.RxBleDevice;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanSettings;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 /2\u00020\u0001:\u0001/B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001bJ\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010\u001e\u001a\u00020\u0015J\u0012\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150 0\u001bJ\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%J\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00120\u001b2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'J\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00120\u001b2\u0006\u0010#\u001a\u00020\u001dJ\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u001b2\u0006\u0010#\u001a\u00020\u001dJ\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001bJ\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020.R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0010\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00120\u00120\u0011X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u00060"}, d2 = {"Lcom/liber8tech/tago/service/BluetoothService;", "", "ctx", "Landroid/content/Context;", "bleClient", "Lcom/polidea/rxandroidble2/RxBleClient;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "runtime", "Lcom/liber8tech/tago/util/RuntimeConfig;", "(Landroid/content/Context;Lcom/polidea/rxandroidble2/RxBleClient;Lorg/greenrobot/eventbus/EventBus;Lcom/liber8tech/tago/util/RuntimeConfig;)V", "bluetoothManager", "Landroid/bluetooth/BluetoothManager;", "bluetoothStates", "Lio/reactivex/subjects/BehaviorSubject;", "", "doneSignal", "Lio/reactivex/subjects/PublishSubject;", "", "kotlin.jvm.PlatformType", "selectedDevice", "Lcom/polidea/rxandroidble2/RxBleDevice;", "getSelectedDevice", "()Lcom/polidea/rxandroidble2/RxBleDevice;", "setSelectedDevice", "(Lcom/polidea/rxandroidble2/RxBleDevice;)V", "bluetoothOff", "Lio/reactivex/Observable;", "connect", "Lcom/polidea/rxandroidble2/RxBleConnection;", "device", "discover", "", "firmwareUpdate", "Lcom/liber8tech/tago/model/SyncState;", "connection", "firmware", "Lcom/liber8tech/tago/model/Firmware;", "kioskMode", "", "resetDevice", "startCommunication", "Lcom/liber8tech/tago/model/ExtendedConnection;", "states", "syncPattern", "pattern", "Lcom/liber8tech/tago/model/Pattern;", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
@Singleton
/* compiled from: BluetoothService.kt */
public final class BluetoothService {
    public static final Companion Companion = new Companion(null);
    private static final UUID clientId = UUID.fromString("00002902-0000-1000-8000-00805F9B34FB");
    public static final long connectionTimeout = 15000;
    private static final long deviceTTL = 8000;
    public static final int lowBattery = 3750;
    public static final long messageTimeout = 10000;
    public static final int payloadMtu = 20;
    public static final int payloadSize = 1020;
    @NotNull
    private static final UUID rxId;
    @NotNull
    private static final UUID txId;
    private static final UUID uartId = UUID.fromString("6E400001-B5A3-F393-E0A9-E50E24DCCA9E");
    private final RxBleClient bleClient;
    private final BluetoothManager bluetoothManager;
    private final BehaviorSubject<Boolean> bluetoothStates;
    private final Context ctx;
    private final PublishSubject<Unit> doneSignal;
    private final EventBus eventBus;
    private final RuntimeConfig runtime;
    @Nullable
    private RxBleDevice selectedDevice;

    @Inject
    public BluetoothService(@NotNull Context context, @NotNull RxBleClient rxBleClient, @NotNull EventBus eventBus2, @NotNull RuntimeConfig runtimeConfig) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(rxBleClient, "bleClient");
        Intrinsics.checkParameterIsNotNull(eventBus2, "eventBus");
        Intrinsics.checkParameterIsNotNull(runtimeConfig, "runtime");
        this.ctx = context;
        this.bleClient = rxBleClient;
        this.eventBus = eventBus2;
        this.runtime = runtimeConfig;
        PublishSubject<Unit> create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create<Unit>()");
        this.doneSignal = create;
        Object systemService = this.ctx.getSystemService("bluetooth");
        if (systemService != null) {
            this.bluetoothManager = (BluetoothManager) systemService;
            BluetoothAdapter adapter = this.bluetoothManager.getAdapter();
            Intrinsics.checkExpressionValueIsNotNull(adapter, "bluetoothManager.adapter");
            BehaviorSubject<Boolean> createDefault = BehaviorSubject.createDefault(Boolean.valueOf(adapter.isEnabled()));
            Intrinsics.checkExpressionValueIsNotNull(createDefault, "BehaviorSubject.createDe…anager.adapter.isEnabled)");
            this.bluetoothStates = createDefault;
            this.ctx.registerReceiver(new BluetoothService$receiver$1(this), new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.bluetooth.BluetoothManager");
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007XT¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007XT¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nXT¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007XT¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nXT¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nXT¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0013\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/service/BluetoothService$Companion;", "", "()V", "clientId", "Ljava/util/UUID;", "kotlin.jvm.PlatformType", "connectionTimeout", "", "deviceTTL", "lowBattery", "", "messageTimeout", "payloadMtu", "payloadSize", "rxId", "getRxId", "()Ljava/util/UUID;", "txId", "getTxId", "uartId", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: BluetoothService.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final UUID getTxId() {
            return BluetoothService.txId;
        }

        @NotNull
        public final UUID getRxId() {
            return BluetoothService.rxId;
        }
    }

    static {
        UUID fromString = UUID.fromString("6E400002-B5A3-F393-E0A9-E50E24DCCA9E");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"6E40000…-F393-E0A9-E50E24DCCA9E\")");
        txId = fromString;
        UUID fromString2 = UUID.fromString("6E400003-B5A3-F393-E0A9-E50E24DCCA9E");
        Intrinsics.checkExpressionValueIsNotNull(fromString2, "UUID.fromString(\"6E40000…-F393-E0A9-E50E24DCCA9E\")");
        rxId = fromString2;
    }

    @Nullable
    public final RxBleDevice getSelectedDevice() {
        return this.selectedDevice;
    }

    public final void setSelectedDevice(@Nullable RxBleDevice rxBleDevice) {
        this.selectedDevice = rxBleDevice;
    }

    @NotNull
    public final Observable<Boolean> states() {
        Observable<Boolean> distinctUntilChanged = this.bluetoothStates.distinctUntilChanged();
        Intrinsics.checkExpressionValueIsNotNull(distinctUntilChanged, "bluetoothStates.distinctUntilChanged()");
        return distinctUntilChanged;
    }

    @NotNull
    public final Observable<Boolean> bluetoothOff() {
        Observable<Boolean> filter = this.bluetoothStates.distinctUntilChanged().filter(BluetoothService$bluetoothOff$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(filter, "bluetoothStates.distinct…ged().filter { it.not() }");
        return filter;
    }

    @NotNull
    public final Observable<List<RxBleDevice>> discover() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Observable<List<RxBleDevice>> observeOn = Observable.combineLatest(this.bleClient.scanBleDevices(new ScanSettings.Builder().build(), new ScanFilter[0]).map(BluetoothService$discover$scan$1.INSTANCE).filter(BluetoothService$discover$scan$2.INSTANCE).buffer(1000, TimeUnit.MILLISECONDS), Observable.timer(1000, TimeUnit.MILLISECONDS), BluetoothService$discover$1.INSTANCE).doOnNext(new BluetoothService$discover$2(linkedHashMap)).map(new BluetoothService$discover$3(linkedHashMap)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "Observable.combineLatest…dSchedulers.mainThread())");
        return observeOn;
    }

    @NotNull
    public final Observable<RxBleConnection> connect(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "device");
        Observable<R> flatMap = rxBleDevice.establishConnection(false).flatMap(BluetoothService$connect$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "device.establishConnecti…out vs timeoutFirst\n    }");
        Observable<RxBleConnection> takeUntil = RxExtensionsKt.timeoutFirst(flatMap, connectionTimeout).retry(10).takeUntil(this.doneSignal);
        Intrinsics.checkExpressionValueIsNotNull(takeUntil, "device.establishConnecti…10).takeUntil(doneSignal)");
        return takeUntil;
    }

    @NotNull
    public final Observable<SyncState> syncPattern(@NotNull RxBleConnection rxBleConnection, @NotNull Pattern pattern) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        Intrinsics.checkParameterIsNotNull(pattern, "pattern");
        Observable<SyncState> doAfterTerminate = new PatternSync(this.ctx, this.eventBus, rxBleConnection, pattern).perform().doAfterTerminate(new BluetoothService$syncPattern$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doAfterTerminate, "PatternSync(ctx, eventBu…Signal.onNext(Unit)\n    }");
        return doAfterTerminate;
    }

    @NotNull
    public final Observable<Unit> resetDevice(@NotNull RxBleConnection rxBleConnection) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        Observable<Unit> doAfterTerminate = new ResetDevice(rxBleConnection).perform().doAfterTerminate(new BluetoothService$resetDevice$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doAfterTerminate, "ResetDevice(connection).…doneSignal.onNext(Unit) }");
        return doAfterTerminate;
    }

    @NotNull
    public final Observable<SyncState> firmwareUpdate(@NotNull RxBleConnection rxBleConnection, @NotNull Firmware firmware) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        Intrinsics.checkParameterIsNotNull(firmware, "firmware");
        Observable<SyncState> doAfterTerminate = new FirmwareUpdate(this.ctx, this.eventBus, rxBleConnection, firmware, this.runtime).perform().doAfterTerminate(new BluetoothService$firmwareUpdate$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doAfterTerminate, "FirmwareUpdate(ctx, even…doneSignal.onNext(Unit) }");
        return doAfterTerminate;
    }

    @NotNull
    public final Observable<ExtendedConnection> startCommunication(@NotNull RxBleConnection rxBleConnection) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        return new StartCommunication(rxBleConnection, this.runtime).perform();
    }

    @NotNull
    public final Observable<Unit> kioskMode(@NotNull RxBleConnection rxBleConnection, int i) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        Observable<Unit> doAfterTerminate = new KioskMode(rxBleConnection, i).perform().doAfterTerminate(new BluetoothService$kioskMode$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doAfterTerminate, "KioskMode(connection, ki…doneSignal.onNext(Unit) }");
        return doAfterTerminate;
    }
}
