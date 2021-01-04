package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.exceptions.BleGattCallbackTimeoutException;
import com.polidea.rxandroidble2.exceptions.BleGattCannotStartException;
import com.polidea.rxandroidble2.exceptions.BleGattCharacteristicException;
import com.polidea.rxandroidble2.exceptions.BleGattException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.QueueOperation;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.connection.PayloadSizeLimitProvider;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import com.polidea.rxandroidble2.internal.util.ByteAssociation;
import com.polidea.rxandroidble2.internal.util.DisposableUtil;
import com.polidea.rxandroidble2.internal.util.QueueReleasingEmitterWrapper;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.observers.DisposableObserver;
import java.nio.ByteBuffer;
import java.util.UUID;

public class CharacteristicLongWriteOperation extends QueueOperation<byte[]> {
    private final PayloadSizeLimitProvider batchSizeProvider;
    private final BluetoothGatt bluetoothGatt;
    private final BluetoothGattCharacteristic bluetoothGattCharacteristic;
    private final Scheduler bluetoothInteractionScheduler;
    private final byte[] bytesToWrite;
    private final RxBleGattCallback rxBleGattCallback;
    private byte[] tempBatchArray;
    private final TimeoutConfiguration timeoutConfiguration;
    private final RxBleConnection.WriteOperationAckStrategy writeOperationAckStrategy;
    private final RxBleConnection.WriteOperationRetryStrategy writeOperationRetryStrategy;

    CharacteristicLongWriteOperation(BluetoothGatt bluetoothGatt2, RxBleGattCallback rxBleGattCallback2, @Named("bluetooth_interaction") Scheduler scheduler, @Named("operation-timeout") TimeoutConfiguration timeoutConfiguration2, BluetoothGattCharacteristic bluetoothGattCharacteristic2, PayloadSizeLimitProvider payloadSizeLimitProvider, RxBleConnection.WriteOperationAckStrategy writeOperationAckStrategy2, RxBleConnection.WriteOperationRetryStrategy writeOperationRetryStrategy2, byte[] bArr) {
        this.bluetoothGatt = bluetoothGatt2;
        this.rxBleGattCallback = rxBleGattCallback2;
        this.bluetoothInteractionScheduler = scheduler;
        this.timeoutConfiguration = timeoutConfiguration2;
        this.bluetoothGattCharacteristic = bluetoothGattCharacteristic2;
        this.batchSizeProvider = payloadSizeLimitProvider;
        this.writeOperationAckStrategy = writeOperationAckStrategy2;
        this.writeOperationRetryStrategy = writeOperationRetryStrategy2;
        this.bytesToWrite = bArr;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public void protectedRun(ObservableEmitter<byte[]> observableEmitter, QueueReleaseInterface queueReleaseInterface) {
        int payloadSizeLimit = this.batchSizeProvider.getPayloadSizeLimit();
        if (payloadSizeLimit > 0) {
            Observable error = Observable.error(new BleGattCallbackTimeoutException(this.bluetoothGatt, BleGattOperationType.CHARACTERISTIC_LONG_WRITE));
            ByteBuffer wrap = ByteBuffer.wrap(this.bytesToWrite);
            final QueueReleasingEmitterWrapper queueReleasingEmitterWrapper = new QueueReleasingEmitterWrapper(observableEmitter, queueReleaseInterface);
            writeBatchAndObserve(payloadSizeLimit, wrap).subscribeOn(this.bluetoothInteractionScheduler).filter(writeResponseForMatchingCharacteristic(this.bluetoothGattCharacteristic)).take(1).timeout(this.timeoutConfiguration.timeout, this.timeoutConfiguration.timeoutTimeUnit, this.timeoutConfiguration.timeoutScheduler, error).repeatWhen(bufferIsNotEmptyAndOperationHasBeenAcknowledgedAndNotUnsubscribed(this.writeOperationAckStrategy, wrap, queueReleasingEmitterWrapper)).retryWhen(errorIsRetryableAndAccordingTo(this.writeOperationRetryStrategy, wrap, payloadSizeLimit)).subscribe(new Observer<ByteAssociation<UUID>>() {
                /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass1 */

                public void onNext(ByteAssociation<UUID> byteAssociation) {
                }

                @Override // io.reactivex.Observer
                public void onSubscribe(Disposable disposable) {
                }

                @Override // io.reactivex.Observer
                public void onError(Throwable th) {
                    queueReleasingEmitterWrapper.onError(th);
                }

                @Override // io.reactivex.Observer
                public void onComplete() {
                    queueReleasingEmitterWrapper.onNext(CharacteristicLongWriteOperation.this.bytesToWrite);
                    queueReleasingEmitterWrapper.onComplete();
                }
            });
            return;
        }
        throw new IllegalArgumentException("batchSizeProvider value must be greater than zero (now: " + payloadSizeLimit + ")");
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public BleException provideException(DeadObjectException deadObjectException) {
        return new BleDisconnectedException(deadObjectException, this.bluetoothGatt.getDevice().getAddress(), -1);
    }

    @NonNull
    private Observable<ByteAssociation<UUID>> writeBatchAndObserve(final int i, final ByteBuffer byteBuffer) {
        final Observable<ByteAssociation<UUID>> onCharacteristicWrite = this.rxBleGattCallback.getOnCharacteristicWrite();
        return Observable.create(new ObservableOnSubscribe<ByteAssociation<UUID>>() {
            /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass2 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<ByteAssociation<UUID>> observableEmitter) {
                observableEmitter.setDisposable((DisposableObserver) onCharacteristicWrite.subscribeWith(DisposableUtil.disposableObserverFromEmitter(observableEmitter)));
                try {
                    CharacteristicLongWriteOperation.this.writeData(CharacteristicLongWriteOperation.this.getNextBatch(byteBuffer, i));
                } catch (Throwable th) {
                    observableEmitter.onError(th);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private byte[] getNextBatch(ByteBuffer byteBuffer, int i) {
        int min = Math.min(byteBuffer.remaining(), i);
        if (this.tempBatchArray == null || this.tempBatchArray.length != min) {
            this.tempBatchArray = new byte[min];
        }
        byteBuffer.get(this.tempBatchArray);
        return this.tempBatchArray;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void writeData(byte[] bArr) {
        RxBleLog.d("Writing next batch", new Object[0]);
        this.bluetoothGattCharacteristic.setValue(bArr);
        if (!this.bluetoothGatt.writeCharacteristic(this.bluetoothGattCharacteristic)) {
            throw new BleGattCannotStartException(this.bluetoothGatt, BleGattOperationType.CHARACTERISTIC_LONG_WRITE);
        }
    }

    private static Predicate<ByteAssociation<UUID>> writeResponseForMatchingCharacteristic(final BluetoothGattCharacteristic bluetoothGattCharacteristic2) {
        return new Predicate<ByteAssociation<UUID>>() {
            /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass3 */

            public boolean test(ByteAssociation<UUID> byteAssociation) {
                return byteAssociation.first.equals(bluetoothGattCharacteristic2.getUuid());
            }
        };
    }

    static Function<Observable<?>, ObservableSource<?>> bufferIsNotEmptyAndOperationHasBeenAcknowledgedAndNotUnsubscribed(final RxBleConnection.WriteOperationAckStrategy writeOperationAckStrategy2, final ByteBuffer byteBuffer, final QueueReleasingEmitterWrapper<byte[]> queueReleasingEmitterWrapper) {
        return new Function<Observable<?>, ObservableSource<?>>() {
            /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass4 */

            public ObservableSource<?> apply(Observable<?> observable) {
                return observable.takeWhile(notUnsubscribed(queueReleasingEmitterWrapper)).map(bufferIsNotEmpty(byteBuffer)).compose(writeOperationAckStrategy2).takeWhile(new Predicate<Boolean>() {
                    /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass4.AnonymousClass1 */

                    public boolean test(Boolean bool) {
                        return bool.booleanValue();
                    }
                });
            }

            @NonNull
            private Function<Object, Boolean> bufferIsNotEmpty(final ByteBuffer byteBuffer) {
                return new Function<Object, Boolean>() {
                    /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass4.AnonymousClass2 */

                    @Override // io.reactivex.functions.Function
                    public Boolean apply(Object obj) {
                        return Boolean.valueOf(byteBuffer.hasRemaining());
                    }
                };
            }

            @NonNull
            private Predicate<Object> notUnsubscribed(final QueueReleasingEmitterWrapper<byte[]> queueReleasingEmitterWrapper) {
                return new Predicate<Object>() {
                    /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass4.AnonymousClass3 */

                    @Override // io.reactivex.functions.Predicate
                    public boolean test(Object obj) {
                        return !queueReleasingEmitterWrapper.isWrappedEmitterUnsubscribed();
                    }
                };
            }
        };
    }

    private static Function<Observable<Throwable>, ObservableSource<?>> errorIsRetryableAndAccordingTo(final RxBleConnection.WriteOperationRetryStrategy writeOperationRetryStrategy2, final ByteBuffer byteBuffer, final int i) {
        return new Function<Observable<Throwable>, ObservableSource<?>>() {
            /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass5 */

            public ObservableSource<?> apply(Observable<Throwable> observable) {
                return observable.flatMap(toLongWriteFailureOrError()).doOnNext(repositionByteBufferForRetry()).compose(writeOperationRetryStrategy2);
            }

            @NonNull
            private Function<Throwable, Observable<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure>> toLongWriteFailureOrError() {
                return new Function<Throwable, Observable<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure>>() {
                    /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass5.AnonymousClass1 */

                    public Observable<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure> apply(Throwable th) {
                        if ((th instanceof BleGattCharacteristicException) || (th instanceof BleGattCannotStartException)) {
                            return Observable.just(new RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure(AnonymousClass5.this.calculateFailedBatchIndex(byteBuffer, i), (BleGattException) th));
                        }
                        return Observable.error(th);
                    }
                };
            }

            @NonNull
            private Consumer<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure> repositionByteBufferForRetry() {
                return new Consumer<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure>() {
                    /* class com.polidea.rxandroidble2.internal.operations.CharacteristicLongWriteOperation.AnonymousClass5.AnonymousClass2 */

                    public void accept(RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure longWriteFailure) {
                        byteBuffer.position(longWriteFailure.getBatchIndex() * i);
                    }
                };
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private int calculateFailedBatchIndex(ByteBuffer byteBuffer, int i) {
                return ((int) Math.ceil((double) (((float) byteBuffer.position()) / ((float) i)))) - 1;
            }
        };
    }
}
