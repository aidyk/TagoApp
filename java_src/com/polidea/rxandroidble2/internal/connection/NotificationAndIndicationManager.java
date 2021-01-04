package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.NotificationSetupMode;
import com.polidea.rxandroidble2.exceptions.BleCannotSetCharacteristicNotificationException;
import com.polidea.rxandroidble2.exceptions.BleConflictingNotificationAlreadySetException;
import com.polidea.rxandroidble2.internal.util.ActiveCharacteristicNotification;
import com.polidea.rxandroidble2.internal.util.CharacteristicChangedEvent;
import com.polidea.rxandroidble2.internal.util.CharacteristicNotificationId;
import com.polidea.rxandroidble2.internal.util.ObservableUtil;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.CompletableTransformer;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Functions;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
@ConnectionScope
public class NotificationAndIndicationManager {
    static final UUID CLIENT_CHARACTERISTIC_CONFIG_UUID = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    private final Map<CharacteristicNotificationId, ActiveCharacteristicNotification> activeNotificationObservableMap = new HashMap();
    private final BluetoothGatt bluetoothGatt;
    private final byte[] configDisable;
    private final byte[] configEnableIndication;
    private final byte[] configEnableNotification;
    private final DescriptorWriter descriptorWriter;
    private final RxBleGattCallback gattCallback;

    @Inject
    NotificationAndIndicationManager(@Named("enable-notification-value") byte[] bArr, @Named("enable-indication-value") byte[] bArr2, @Named("disable-notification-value") byte[] bArr3, BluetoothGatt bluetoothGatt2, RxBleGattCallback rxBleGattCallback, DescriptorWriter descriptorWriter2) {
        this.configEnableNotification = bArr;
        this.configEnableIndication = bArr2;
        this.configDisable = bArr3;
        this.bluetoothGatt = bluetoothGatt2;
        this.gattCallback = rxBleGattCallback;
        this.descriptorWriter = descriptorWriter2;
    }

    /* access modifiers changed from: package-private */
    public Observable<Observable<byte[]>> setupServerInitiatedCharacteristicRead(@NonNull final BluetoothGattCharacteristic bluetoothGattCharacteristic, final NotificationSetupMode notificationSetupMode, final boolean z) {
        return Observable.defer(new Callable<ObservableSource<Observable<byte[]>>>() {
            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass1 */

            @Override // java.util.concurrent.Callable
            public ObservableSource<Observable<byte[]>> call() throws Exception {
                synchronized (NotificationAndIndicationManager.this.activeNotificationObservableMap) {
                    final CharacteristicNotificationId characteristicNotificationId = new CharacteristicNotificationId(bluetoothGattCharacteristic.getUuid(), Integer.valueOf(bluetoothGattCharacteristic.getInstanceId()));
                    ActiveCharacteristicNotification activeCharacteristicNotification = (ActiveCharacteristicNotification) NotificationAndIndicationManager.this.activeNotificationObservableMap.get(characteristicNotificationId);
                    if (activeCharacteristicNotification == null) {
                        byte[] bArr = z ? NotificationAndIndicationManager.this.configEnableIndication : NotificationAndIndicationManager.this.configEnableNotification;
                        final PublishSubject create = PublishSubject.create();
                        Observable refCount = NotificationAndIndicationManager.setCharacteristicNotification(NotificationAndIndicationManager.this.bluetoothGatt, bluetoothGattCharacteristic, true).compose(NotificationAndIndicationManager.setupModeTransformer(NotificationAndIndicationManager.this.descriptorWriter, bluetoothGattCharacteristic, bArr, notificationSetupMode)).andThen(ObservableUtil.justOnNext(NotificationAndIndicationManager.observeOnCharacteristicChangeCallbacks(NotificationAndIndicationManager.this.gattCallback, characteristicNotificationId).takeUntil(create))).doFinally(new Action() {
                            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass1.AnonymousClass1 */

                            @Override // io.reactivex.functions.Action
                            public void run() {
                                create.onComplete();
                                synchronized (NotificationAndIndicationManager.this.activeNotificationObservableMap) {
                                    NotificationAndIndicationManager.this.activeNotificationObservableMap.remove(characteristicNotificationId);
                                }
                                NotificationAndIndicationManager.setCharacteristicNotification(NotificationAndIndicationManager.this.bluetoothGatt, bluetoothGattCharacteristic, false).compose(NotificationAndIndicationManager.setupModeTransformer(NotificationAndIndicationManager.this.descriptorWriter, bluetoothGattCharacteristic, NotificationAndIndicationManager.this.configDisable, notificationSetupMode)).subscribe(Functions.EMPTY_ACTION, Functions.emptyConsumer());
                            }
                        }).mergeWith(NotificationAndIndicationManager.this.gattCallback.observeDisconnect()).replay(1).refCount();
                        NotificationAndIndicationManager.this.activeNotificationObservableMap.put(characteristicNotificationId, new ActiveCharacteristicNotification(refCount, z));
                        return refCount;
                    } else if (activeCharacteristicNotification.isIndication == z) {
                        return activeCharacteristicNotification.notificationObservable;
                    } else {
                        return Observable.error(new BleConflictingNotificationAlreadySetException(bluetoothGattCharacteristic.getUuid(), true ^ z));
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    @NonNull
    public static Completable setCharacteristicNotification(final BluetoothGatt bluetoothGatt2, final BluetoothGattCharacteristic bluetoothGattCharacteristic, final boolean z) {
        return Completable.fromAction(new Action() {
            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass2 */

            @Override // io.reactivex.functions.Action
            public void run() {
                if (!bluetoothGatt2.setCharacteristicNotification(bluetoothGattCharacteristic, z)) {
                    throw new BleCannotSetCharacteristicNotificationException(bluetoothGattCharacteristic, 1, null);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    @NonNull
    public static CompletableTransformer setupModeTransformer(final DescriptorWriter descriptorWriter2, final BluetoothGattCharacteristic bluetoothGattCharacteristic, final byte[] bArr, final NotificationSetupMode notificationSetupMode) {
        return new CompletableTransformer() {
            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass3 */

            @Override // io.reactivex.CompletableTransformer
            public Completable apply(Completable completable) {
                return notificationSetupMode == NotificationSetupMode.DEFAULT ? completable.andThen(NotificationAndIndicationManager.writeClientCharacteristicConfig(bluetoothGattCharacteristic, descriptorWriter2, bArr)) : completable;
            }
        };
    }

    /* JADX DEBUG: Type inference failed for r1v3. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<byte[]> */
    /* access modifiers changed from: private */
    @NonNull
    public static Observable<byte[]> observeOnCharacteristicChangeCallbacks(RxBleGattCallback rxBleGattCallback, final CharacteristicNotificationId characteristicNotificationId) {
        return (Observable<R>) rxBleGattCallback.getOnCharacteristicChanged().filter(new Predicate<CharacteristicChangedEvent>() {
            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass5 */

            public boolean test(CharacteristicChangedEvent characteristicChangedEvent) {
                return characteristicChangedEvent.equals(characteristicNotificationId);
            }
        }).map(new Function<CharacteristicChangedEvent, byte[]>() {
            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass4 */

            public byte[] apply(CharacteristicChangedEvent characteristicChangedEvent) {
                return characteristicChangedEvent.data;
            }
        });
    }

    /* access modifiers changed from: private */
    @NonNull
    public static Completable writeClientCharacteristicConfig(final BluetoothGattCharacteristic bluetoothGattCharacteristic, DescriptorWriter descriptorWriter2, byte[] bArr) {
        BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(CLIENT_CHARACTERISTIC_CONFIG_UUID);
        if (descriptor == null) {
            return Completable.error(new BleCannotSetCharacteristicNotificationException(bluetoothGattCharacteristic, 2, null));
        }
        return descriptorWriter2.writeDescriptor(descriptor, bArr).onErrorResumeNext(new Function<Throwable, CompletableSource>() {
            /* class com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager.AnonymousClass6 */

            public CompletableSource apply(Throwable th) throws Exception {
                return Completable.error(new BleCannotSetCharacteristicNotificationException(bluetoothGattCharacteristic, 3, th));
            }
        });
    }
}
