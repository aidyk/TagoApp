package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.Binds;
import bleshadow.dagger.Module;
import bleshadow.dagger.Provides;
import bleshadow.dagger.multibindings.IntoSet;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.operations.OperationsProviderImpl;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl;

/* access modifiers changed from: package-private */
@Module
public abstract class ConnectionModuleBinder {
    @Named("GATT_WRITE_MTU_OVERHEAD")
    @Provides
    static int gattWriteMtuOverhead() {
        return 3;
    }

    @Named("GATT_MTU_MINIMUM")
    @Provides
    static int minimumMtu() {
        return 23;
    }

    /* access modifiers changed from: package-private */
    @Binds
    public abstract ConnectionOperationQueue bindConnectionOperationQueue(ConnectionOperationQueueImpl connectionOperationQueueImpl);

    /* access modifiers changed from: package-private */
    @Binds
    @IntoSet
    public abstract ConnectionSubscriptionWatcher bindConnectionQueueSubscriptionWatcher(ConnectionOperationQueueImpl connectionOperationQueueImpl);

    /* access modifiers changed from: package-private */
    @Binds
    public abstract MtuProvider bindCurrentMtuProvider(MtuWatcher mtuWatcher);

    /* access modifiers changed from: package-private */
    @Binds
    @IntoSet
    public abstract ConnectionSubscriptionWatcher bindDisconnectActionSubscriptionWatcher(DisconnectAction disconnectAction);

    /* access modifiers changed from: package-private */
    @Binds
    public abstract DisconnectionRouterInput bindDisconnectionRouterInput(DisconnectionRouter disconnectionRouter);

    /* access modifiers changed from: package-private */
    @Binds
    public abstract DisconnectionRouterOutput bindDisconnectionRouterOutput(DisconnectionRouter disconnectionRouter);

    /* access modifiers changed from: package-private */
    @Binds
    public abstract RxBleConnection.LongWriteOperationBuilder bindLongWriteOperationBuilder(LongWriteOperationBuilderImpl longWriteOperationBuilderImpl);

    /* access modifiers changed from: package-private */
    @Binds
    @IntoSet
    public abstract ConnectionSubscriptionWatcher bindMtuWatcherSubscriptionWatcher(MtuWatcher mtuWatcher);

    /* access modifiers changed from: package-private */
    @Binds
    public abstract OperationsProvider bindOperationsProvider(OperationsProviderImpl operationsProviderImpl);

    /* access modifiers changed from: package-private */
    @ConnectionScope
    @Binds
    public abstract RxBleConnection bindRxBleConnection(RxBleConnectionImpl rxBleConnectionImpl);

    ConnectionModuleBinder() {
    }

    @ConnectionScope
    @Provides
    static BluetoothGatt provideBluetoothGatt(BluetoothGattProvider bluetoothGattProvider) {
        return bluetoothGattProvider.getBluetoothGatt();
    }
}
