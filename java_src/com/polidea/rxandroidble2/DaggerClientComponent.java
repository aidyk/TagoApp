package com.polidea.rxandroidble2;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.DelegateFactory;
import bleshadow.dagger.internal.DoubleCheck;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.dagger.internal.SetBuilder;
import bleshadow.javax.inject.Provider;
import com.jakewharton.rxrelay2.BehaviorRelay;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.helpers.LocationServicesOkObservable;
import com.polidea.rxandroidble2.helpers.LocationServicesOkObservable_Factory;
import com.polidea.rxandroidble2.internal.DeviceComponent;
import com.polidea.rxandroidble2.internal.DeviceModule;
import com.polidea.rxandroidble2.internal.DeviceModule_ProvideBluetoothDeviceFactory;
import com.polidea.rxandroidble2.internal.DeviceModule_ProvideConnectionStateChangeListenerFactory;
import com.polidea.rxandroidble2.internal.DeviceModule_ProvideConnectionStateRelayFactory;
import com.polidea.rxandroidble2.internal.DeviceModule_ProvideMacAddressFactory;
import com.polidea.rxandroidble2.internal.DeviceModule_ProvidesConnectTimeoutConfFactory;
import com.polidea.rxandroidble2.internal.DeviceModule_ProvidesDisconnectTimeoutConfFactory;
import com.polidea.rxandroidble2.internal.RxBleDeviceImpl_Factory;
import com.polidea.rxandroidble2.internal.RxBleDeviceProvider;
import com.polidea.rxandroidble2.internal.RxBleDeviceProvider_Factory;
import com.polidea.rxandroidble2.internal.cache.DeviceComponentCache;
import com.polidea.rxandroidble2.internal.cache.DeviceComponentCache_Factory;
import com.polidea.rxandroidble2.internal.connection.BluetoothGattProvider;
import com.polidea.rxandroidble2.internal.connection.BluetoothGattProvider_Factory;
import com.polidea.rxandroidble2.internal.connection.ConnectionComponent;
import com.polidea.rxandroidble2.internal.connection.ConnectionModule;
import com.polidea.rxandroidble2.internal.connection.ConnectionModuleBinder_GattWriteMtuOverheadFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionModuleBinder_MinimumMtuFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionModuleBinder_ProvideBluetoothGattFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionModule_ProvideAutoConnectFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionModule_ProvideCharacteristicPropertiesParserFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionModule_ProvideIllegalOperationHandlerFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionModule_ProvidesOperationTimeoutConfFactory;
import com.polidea.rxandroidble2.internal.connection.ConnectionStateChangeListener;
import com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher;
import com.polidea.rxandroidble2.internal.connection.ConnectorImpl_Factory;
import com.polidea.rxandroidble2.internal.connection.DescriptorWriter_Factory;
import com.polidea.rxandroidble2.internal.connection.DisconnectAction_Factory;
import com.polidea.rxandroidble2.internal.connection.DisconnectionRouter_Factory;
import com.polidea.rxandroidble2.internal.connection.IllegalOperationChecker_Factory;
import com.polidea.rxandroidble2.internal.connection.IllegalOperationMessageCreator_Factory;
import com.polidea.rxandroidble2.internal.connection.LoggingIllegalOperationHandler_Factory;
import com.polidea.rxandroidble2.internal.connection.LongWriteOperationBuilderImpl_Factory;
import com.polidea.rxandroidble2.internal.connection.MtuBasedPayloadSizeLimit_Factory;
import com.polidea.rxandroidble2.internal.connection.MtuWatcher_Factory;
import com.polidea.rxandroidble2.internal.connection.NativeCallbackDispatcher_Factory;
import com.polidea.rxandroidble2.internal.connection.NotificationAndIndicationManager_Factory;
import com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl;
import com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl_Factory;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback_Factory;
import com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager_Factory;
import com.polidea.rxandroidble2.internal.connection.ThrowingIllegalOperationHandler_Factory;
import com.polidea.rxandroidble2.internal.operations.ConnectOperation;
import com.polidea.rxandroidble2.internal.operations.ConnectOperation_Factory;
import com.polidea.rxandroidble2.internal.operations.DisconnectOperation_Factory;
import com.polidea.rxandroidble2.internal.operations.OperationsProviderImpl_Factory;
import com.polidea.rxandroidble2.internal.operations.ReadRssiOperation_Factory;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import com.polidea.rxandroidble2.internal.scan.AndroidScanObjectsConverter_Factory;
import com.polidea.rxandroidble2.internal.scan.BackgroundScannerImpl_Factory;
import com.polidea.rxandroidble2.internal.scan.InternalScanResultCreator;
import com.polidea.rxandroidble2.internal.scan.InternalScanResultCreator_Factory;
import com.polidea.rxandroidble2.internal.scan.InternalToExternalScanResultConverter_Factory;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifierApi18_Factory;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifierApi24_Factory;
import com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator_Factory;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi18_Factory;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi21_Factory;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi23_Factory;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueueImpl_Factory;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl_Factory;
import com.polidea.rxandroidble2.internal.util.BleConnectionCompat;
import com.polidea.rxandroidble2.internal.util.CheckerLocationPermission_Factory;
import com.polidea.rxandroidble2.internal.util.CheckerLocationProvider_Factory;
import com.polidea.rxandroidble2.internal.util.ClientStateObservable_Factory;
import com.polidea.rxandroidble2.internal.util.LocationServicesOkObservableApi23Factory;
import com.polidea.rxandroidble2.internal.util.LocationServicesOkObservableApi23Factory_Factory;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatus;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatusApi18_Factory;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatusApi23_Factory;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper_Factory;
import com.polidea.rxandroidble2.internal.util.RxBleServicesLogger_Factory;
import com.polidea.rxandroidble2.internal.util.UUIDUtil_Factory;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public final class DaggerClientComponent implements ClientComponent {
    private AndroidScanObjectsConverter_Factory androidScanObjectsConverterProvider;
    private BackgroundScannerImpl_Factory backgroundScannerImplProvider;
    private Provider<ClientOperationQueue> bindClientOperationQueueProvider;
    private Provider<RxBleClient> bindRxBleClientProvider;
    private CheckerLocationPermission_Factory checkerLocationPermissionProvider;
    private CheckerLocationProvider_Factory checkerLocationProvider;
    private ClientComponent.ClientModule clientModule;
    private ClientOperationQueueImpl_Factory clientOperationQueueImplProvider;
    private ClientStateObservable_Factory clientStateObservableProvider;
    private Provider<DeviceComponent.Builder> deviceComponentBuilderProvider;
    private Provider<DeviceComponentCache> deviceComponentCacheProvider;
    private Provider<InternalScanResultCreator> internalScanResultCreatorProvider;
    private InternalToExternalScanResultConverter_Factory internalToExternalScanResultConverterProvider;
    private LocationServicesOkObservableApi23Factory_Factory locationServicesOkObservableApi23FactoryProvider;
    private LocationServicesStatusApi23_Factory locationServicesStatusApi23Provider;
    private ClientComponent_ClientModule_ProvideApplicationContextFactory provideApplicationContextProvider;
    private ClientComponent_ClientModule_ProvideBackgroundScannerFactory provideBackgroundScannerProvider;
    private Provider<ExecutorService> provideBluetoothCallbacksExecutorServiceProvider;
    private Provider<Scheduler> provideBluetoothCallbacksSchedulerProvider;
    private Provider<ExecutorService> provideBluetoothInteractionExecutorServiceProvider;
    private Provider<Scheduler> provideBluetoothInteractionSchedulerProvider;
    private ClientComponent_ClientModule_ProvideBluetoothManagerFactory provideBluetoothManagerProvider;
    private Provider<ExecutorService> provideConnectionQueueExecutorServiceProvider;
    private ClientComponent_ClientModule_ProvideContentResolverFactory provideContentResolverProvider;
    private ClientComponent_ClientModule_ProvideFinalizationCloseableFactory provideFinalizationCloseableProvider;
    private ClientComponent_ClientModule_ProvideIsAndroidWearFactory provideIsAndroidWearProvider;
    private ClientComponent_ClientModule_ProvideLocationManagerFactory provideLocationManagerProvider;
    private ClientComponent_ClientModule_ProvideLocationServicesOkObservableFactory provideLocationServicesOkObservableProvider;
    private ClientComponent_ClientModule_ProvideLocationServicesStatusFactory provideLocationServicesStatusProvider;
    private ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory provideScanPreconditionVerifierProvider;
    private Provider<ScanSetupBuilder> provideScanSetupProvider;
    private ClientComponent_ClientModule_ProvideTargetSdkFactory provideTargetSdkProvider;
    private RxBleAdapterStateObservable_Factory rxBleAdapterStateObservableProvider;
    private RxBleAdapterWrapper_Factory rxBleAdapterWrapperProvider;
    private RxBleClientImpl_Factory rxBleClientImplProvider;
    private Provider<RxBleDeviceProvider> rxBleDeviceProvider;
    private ScanPreconditionsVerifierApi18_Factory scanPreconditionsVerifierApi18Provider;
    private ScanPreconditionsVerifierApi24_Factory scanPreconditionsVerifierApi24Provider;
    private ScanSettingsEmulator_Factory scanSettingsEmulatorProvider;
    private ScanSetupBuilderImplApi18_Factory scanSetupBuilderImplApi18Provider;
    private ScanSetupBuilderImplApi21_Factory scanSetupBuilderImplApi21Provider;
    private ScanSetupBuilderImplApi23_Factory scanSetupBuilderImplApi23Provider;

    private DaggerClientComponent(Builder builder) {
        initialize(builder);
    }

    public static Builder builder() {
        return new Builder();
    }

    private LocationServicesStatus getLocationServicesStatus() {
        return ClientComponent_ClientModule_ProvideLocationServicesStatusFactory.proxyProvideLocationServicesStatus(this.clientModule, ClientComponent.ClientModule.provideDeviceSdk(), LocationServicesStatusApi18_Factory.create(), this.locationServicesStatusApi23Provider);
    }

    private LocationServicesOkObservableApi23Factory getLocationServicesOkObservableApi23Factory() {
        return LocationServicesOkObservableApi23Factory_Factory.newLocationServicesOkObservableApi23Factory(ClientComponent_ClientModule_ProvideApplicationContextFactory.proxyProvideApplicationContext(this.clientModule), getLocationServicesStatus());
    }

    private Observable<Boolean> getNamedObservableOfBoolean() {
        return ClientComponent_ClientModule_ProvideLocationServicesOkObservableFactory.proxyProvideLocationServicesOkObservable(this.clientModule, ClientComponent.ClientModule.provideDeviceSdk(), getLocationServicesOkObservableApi23Factory());
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private RxBleAdapterWrapper getRxBleAdapterWrapper() {
        return new RxBleAdapterWrapper(ClientComponent.ClientModule.provideBluetoothAdapter());
    }

    private void initialize(Builder builder) {
        this.clientModule = builder.clientModule;
        this.provideContentResolverProvider = ClientComponent_ClientModule_ProvideContentResolverFactory.create(builder.clientModule);
        this.provideLocationManagerProvider = ClientComponent_ClientModule_ProvideLocationManagerFactory.create(builder.clientModule);
        this.checkerLocationProvider = CheckerLocationProvider_Factory.create(this.provideContentResolverProvider, this.provideLocationManagerProvider);
        this.provideApplicationContextProvider = ClientComponent_ClientModule_ProvideApplicationContextFactory.create(builder.clientModule);
        this.checkerLocationPermissionProvider = CheckerLocationPermission_Factory.create(this.provideApplicationContextProvider);
        this.provideTargetSdkProvider = ClientComponent_ClientModule_ProvideTargetSdkFactory.create(builder.clientModule);
        this.provideIsAndroidWearProvider = ClientComponent_ClientModule_ProvideIsAndroidWearFactory.create(builder.clientModule, ClientComponent_ClientModule_ProvideDeviceSdkFactory.create());
        this.locationServicesStatusApi23Provider = LocationServicesStatusApi23_Factory.create(this.checkerLocationProvider, this.checkerLocationPermissionProvider, this.provideTargetSdkProvider, this.provideIsAndroidWearProvider);
        this.rxBleAdapterWrapperProvider = RxBleAdapterWrapper_Factory.create(ClientComponent_ClientModule_ProvideBluetoothAdapterFactory.create());
        this.provideBluetoothInteractionExecutorServiceProvider = DoubleCheck.provider(ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory.create());
        this.provideBluetoothInteractionSchedulerProvider = DoubleCheck.provider(ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory.create(this.provideBluetoothInteractionExecutorServiceProvider));
        this.clientOperationQueueImplProvider = ClientOperationQueueImpl_Factory.create(this.provideBluetoothInteractionSchedulerProvider);
        this.bindClientOperationQueueProvider = DoubleCheck.provider(this.clientOperationQueueImplProvider);
        this.rxBleAdapterStateObservableProvider = RxBleAdapterStateObservable_Factory.create(this.provideApplicationContextProvider);
        this.provideLocationServicesStatusProvider = ClientComponent_ClientModule_ProvideLocationServicesStatusFactory.create(builder.clientModule, ClientComponent_ClientModule_ProvideDeviceSdkFactory.create(), LocationServicesStatusApi18_Factory.create(), this.locationServicesStatusApi23Provider);
        this.locationServicesOkObservableApi23FactoryProvider = LocationServicesOkObservableApi23Factory_Factory.create(this.provideApplicationContextProvider, this.provideLocationServicesStatusProvider);
        this.provideLocationServicesOkObservableProvider = ClientComponent_ClientModule_ProvideLocationServicesOkObservableFactory.create(builder.clientModule, ClientComponent_ClientModule_ProvideDeviceSdkFactory.create(), this.locationServicesOkObservableApi23FactoryProvider);
        this.clientStateObservableProvider = ClientStateObservable_Factory.create(this.rxBleAdapterWrapperProvider, this.rxBleAdapterStateObservableProvider, this.provideLocationServicesOkObservableProvider, this.provideLocationServicesStatusProvider, ClientComponent_ClientModule_ProvideComputationSchedulerFactory.create());
        this.deviceComponentCacheProvider = DoubleCheck.provider(DeviceComponentCache_Factory.create());
        this.deviceComponentBuilderProvider = new Provider<DeviceComponent.Builder>() {
            /* class com.polidea.rxandroidble2.DaggerClientComponent.AnonymousClass1 */

            @Override // bleshadow.javax.inject.Provider
            public DeviceComponent.Builder get() {
                return new DeviceComponentBuilder();
            }
        };
        this.rxBleDeviceProvider = DoubleCheck.provider(RxBleDeviceProvider_Factory.create(this.deviceComponentCacheProvider, this.deviceComponentBuilderProvider));
        this.internalScanResultCreatorProvider = DoubleCheck.provider(InternalScanResultCreator_Factory.create(UUIDUtil_Factory.create()));
        this.scanSettingsEmulatorProvider = ScanSettingsEmulator_Factory.create(ClientComponent_ClientModule_ProvideComputationSchedulerFactory.create());
        this.scanSetupBuilderImplApi18Provider = ScanSetupBuilderImplApi18_Factory.create(this.rxBleAdapterWrapperProvider, this.internalScanResultCreatorProvider, this.scanSettingsEmulatorProvider);
        this.androidScanObjectsConverterProvider = AndroidScanObjectsConverter_Factory.create(ClientComponent_ClientModule_ProvideDeviceSdkFactory.create());
        this.scanSetupBuilderImplApi21Provider = ScanSetupBuilderImplApi21_Factory.create(this.rxBleAdapterWrapperProvider, this.internalScanResultCreatorProvider, this.scanSettingsEmulatorProvider, this.androidScanObjectsConverterProvider);
        this.scanSetupBuilderImplApi23Provider = ScanSetupBuilderImplApi23_Factory.create(this.rxBleAdapterWrapperProvider, this.internalScanResultCreatorProvider, this.androidScanObjectsConverterProvider);
        this.provideScanSetupProvider = DoubleCheck.provider(ClientComponent_ClientModule_ProvideScanSetupProviderFactory.create(ClientComponent_ClientModule_ProvideDeviceSdkFactory.create(), this.scanSetupBuilderImplApi18Provider, this.scanSetupBuilderImplApi21Provider, this.scanSetupBuilderImplApi23Provider));
        this.scanPreconditionsVerifierApi18Provider = ScanPreconditionsVerifierApi18_Factory.create(this.rxBleAdapterWrapperProvider, this.provideLocationServicesStatusProvider);
        this.scanPreconditionsVerifierApi24Provider = ScanPreconditionsVerifierApi24_Factory.create(this.scanPreconditionsVerifierApi18Provider, ClientComponent_ClientModule_ProvideComputationSchedulerFactory.create());
        this.provideScanPreconditionVerifierProvider = ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory.create(ClientComponent_ClientModule_ProvideDeviceSdkFactory.create(), this.scanPreconditionsVerifierApi18Provider, this.scanPreconditionsVerifierApi24Provider);
        this.internalToExternalScanResultConverterProvider = InternalToExternalScanResultConverter_Factory.create(this.rxBleDeviceProvider);
        this.provideBluetoothCallbacksExecutorServiceProvider = DoubleCheck.provider(ClientComponent_ClientModule_ProvideBluetoothCallbacksExecutorServiceFactory.create());
        this.provideConnectionQueueExecutorServiceProvider = DoubleCheck.provider(ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory.create());
        this.provideFinalizationCloseableProvider = ClientComponent_ClientModule_ProvideFinalizationCloseableFactory.create(this.provideBluetoothInteractionExecutorServiceProvider, this.provideBluetoothCallbacksExecutorServiceProvider, this.provideConnectionQueueExecutorServiceProvider);
        this.backgroundScannerImplProvider = BackgroundScannerImpl_Factory.create(this.rxBleAdapterWrapperProvider, this.androidScanObjectsConverterProvider, this.internalScanResultCreatorProvider, this.internalToExternalScanResultConverterProvider);
        this.provideBackgroundScannerProvider = ClientComponent_ClientModule_ProvideBackgroundScannerFactory.create(builder.clientModule, this.backgroundScannerImplProvider);
        this.rxBleClientImplProvider = RxBleClientImpl_Factory.create(this.rxBleAdapterWrapperProvider, this.bindClientOperationQueueProvider, this.rxBleAdapterStateObservableProvider, UUIDUtil_Factory.create(), this.provideLocationServicesStatusProvider, this.clientStateObservableProvider, this.rxBleDeviceProvider, this.provideScanSetupProvider, this.provideScanPreconditionVerifierProvider, this.internalToExternalScanResultConverterProvider, this.provideBluetoothInteractionSchedulerProvider, this.provideFinalizationCloseableProvider, this.provideBackgroundScannerProvider);
        this.bindRxBleClientProvider = DoubleCheck.provider(this.rxBleClientImplProvider);
        this.provideBluetoothCallbacksSchedulerProvider = DoubleCheck.provider(ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory.create(this.provideBluetoothCallbacksExecutorServiceProvider));
        this.provideBluetoothManagerProvider = ClientComponent_ClientModule_ProvideBluetoothManagerFactory.create(builder.clientModule);
    }

    @Override // com.polidea.rxandroidble2.ClientComponent
    public LocationServicesOkObservable locationServicesOkObservable() {
        return LocationServicesOkObservable_Factory.newLocationServicesOkObservable(getNamedObservableOfBoolean());
    }

    @Override // com.polidea.rxandroidble2.ClientComponent
    public RxBleClient rxBleClient() {
        return this.bindRxBleClientProvider.get();
    }

    public static final class Builder {
        private ClientComponent.ClientModule clientModule;

        private Builder() {
        }

        public ClientComponent build() {
            if (this.clientModule != null) {
                return new DaggerClientComponent(this);
            }
            throw new IllegalStateException(ClientComponent.ClientModule.class.getCanonicalName() + " must be set");
        }

        public Builder clientModule(ClientComponent.ClientModule clientModule2) {
            this.clientModule = (ClientComponent.ClientModule) Preconditions.checkNotNull(clientModule2);
            return this;
        }
    }

    /* access modifiers changed from: private */
    public final class DeviceComponentBuilder implements DeviceComponent.Builder {
        private DeviceModule deviceModule;

        private DeviceComponentBuilder() {
        }

        @Override // com.polidea.rxandroidble2.internal.DeviceComponent.Builder
        public DeviceComponent build() {
            if (this.deviceModule != null) {
                return new DeviceComponentImpl(this);
            }
            throw new IllegalStateException(DeviceModule.class.getCanonicalName() + " must be set");
        }

        @Override // com.polidea.rxandroidble2.internal.DeviceComponent.Builder
        public DeviceComponentBuilder deviceModule(DeviceModule deviceModule2) {
            this.deviceModule = (DeviceModule) Preconditions.checkNotNull(deviceModule2);
            return this;
        }
    }

    /* access modifiers changed from: private */
    public final class DeviceComponentImpl implements DeviceComponent {
        private Provider<ConnectionComponent.Builder> connectionComponentBuilderProvider;
        private ConnectorImpl_Factory connectorImplProvider;
        private DeviceModule deviceModule;
        private DeviceModule_ProvideBluetoothDeviceFactory provideBluetoothDeviceProvider;
        private Provider<ConnectionStateChangeListener> provideConnectionStateChangeListenerProvider;
        private Provider<BehaviorRelay<RxBleConnection.RxBleConnectionState>> provideConnectionStateRelayProvider;
        private DeviceModule_ProvideMacAddressFactory provideMacAddressProvider;
        private DeviceModule_ProvidesDisconnectTimeoutConfFactory providesDisconnectTimeoutConfProvider;
        private Provider rxBleDeviceImplProvider;

        private DeviceComponentImpl(DeviceComponentBuilder deviceComponentBuilder) {
            initialize(deviceComponentBuilder);
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private BluetoothDevice getBluetoothDevice() {
            return DeviceModule_ProvideBluetoothDeviceFactory.proxyProvideBluetoothDevice(this.deviceModule, DaggerClientComponent.this.getRxBleAdapterWrapper());
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private TimeoutConfiguration getNamedTimeoutConfiguration() {
            return DeviceModule_ProvidesConnectTimeoutConfFactory.proxyProvidesConnectTimeoutConf(ClientComponent_ClientModule_ProvideComputationSchedulerFactory.proxyProvideComputationScheduler());
        }

        private void initialize(DeviceComponentBuilder deviceComponentBuilder) {
            this.provideBluetoothDeviceProvider = DeviceModule_ProvideBluetoothDeviceFactory.create(deviceComponentBuilder.deviceModule, DaggerClientComponent.this.rxBleAdapterWrapperProvider);
            this.connectionComponentBuilderProvider = new Provider<ConnectionComponent.Builder>() {
                /* class com.polidea.rxandroidble2.DaggerClientComponent.DeviceComponentImpl.AnonymousClass1 */

                @Override // bleshadow.javax.inject.Provider
                public ConnectionComponent.Builder get() {
                    return new ConnectionComponentBuilder();
                }
            };
            this.connectorImplProvider = ConnectorImpl_Factory.create(DaggerClientComponent.this.bindClientOperationQueueProvider, this.connectionComponentBuilderProvider, DaggerClientComponent.this.provideBluetoothCallbacksSchedulerProvider);
            this.provideConnectionStateRelayProvider = DoubleCheck.provider(DeviceModule_ProvideConnectionStateRelayFactory.create());
            this.rxBleDeviceImplProvider = DoubleCheck.provider(RxBleDeviceImpl_Factory.create(this.provideBluetoothDeviceProvider, this.connectorImplProvider, this.provideConnectionStateRelayProvider));
            this.deviceModule = deviceComponentBuilder.deviceModule;
            this.provideMacAddressProvider = DeviceModule_ProvideMacAddressFactory.create(deviceComponentBuilder.deviceModule);
            this.provideConnectionStateChangeListenerProvider = DoubleCheck.provider(DeviceModule_ProvideConnectionStateChangeListenerFactory.create(this.provideConnectionStateRelayProvider));
            this.providesDisconnectTimeoutConfProvider = DeviceModule_ProvidesDisconnectTimeoutConfFactory.create(ClientComponent_ClientModule_ProvideComputationSchedulerFactory.create());
        }

        @Override // com.polidea.rxandroidble2.internal.DeviceComponent
        public RxBleDevice provideDevice() {
            return (RxBleDevice) this.rxBleDeviceImplProvider.get();
        }

        /* access modifiers changed from: private */
        public final class ConnectionComponentBuilder implements ConnectionComponent.Builder {
            private ConnectionModule connectionModule;

            private ConnectionComponentBuilder() {
            }

            @Override // com.polidea.rxandroidble2.internal.connection.ConnectionComponent.Builder
            public ConnectionComponent build() {
                if (this.connectionModule != null) {
                    return new ConnectionComponentImpl(this);
                }
                throw new IllegalStateException(ConnectionModule.class.getCanonicalName() + " must be set");
            }

            @Override // com.polidea.rxandroidble2.internal.connection.ConnectionComponent.Builder
            public ConnectionComponentBuilder connectionModule(ConnectionModule connectionModule2) {
                this.connectionModule = (ConnectionModule) Preconditions.checkNotNull(connectionModule2);
                return this;
            }
        }

        private final class ConnectionComponentImpl implements ConnectionComponent {
            private Provider<BluetoothGattProvider> bluetoothGattProvider;
            private Provider<ConnectionOperationQueueImpl> connectionOperationQueueImplProvider;
            private Provider descriptorWriterProvider;
            private Provider disconnectActionProvider;
            private DisconnectOperation_Factory disconnectOperationProvider;
            private Provider disconnectionRouterProvider;
            private IllegalOperationChecker_Factory illegalOperationCheckerProvider;
            private IllegalOperationMessageCreator_Factory illegalOperationMessageCreatorProvider;
            private LoggingIllegalOperationHandler_Factory loggingIllegalOperationHandlerProvider;
            private LongWriteOperationBuilderImpl_Factory longWriteOperationBuilderImplProvider;
            private Provider mtuBasedPayloadSizeLimitProvider;
            private Provider mtuWatcherProvider;
            private Provider notificationAndIndicationManagerProvider;
            private OperationsProviderImpl_Factory operationsProviderImplProvider;
            private Provider<Boolean> provideAutoConnectProvider;
            private Provider<BluetoothGatt> provideBluetoothGattProvider;
            private ConnectionModule_ProvideCharacteristicPropertiesParserFactory provideCharacteristicPropertiesParserProvider;
            private ConnectionModule_ProvideIllegalOperationHandlerFactory provideIllegalOperationHandlerProvider;
            private ConnectionModule_ProvidesOperationTimeoutConfFactory providesOperationTimeoutConfProvider;
            private ReadRssiOperation_Factory readRssiOperationProvider;
            private Provider<RxBleConnectionImpl> rxBleConnectionImplProvider;
            private Provider<RxBleGattCallback> rxBleGattCallbackProvider;
            private RxBleServicesLogger_Factory rxBleServicesLoggerProvider;
            private Provider serviceDiscoveryManagerProvider;
            private ThrowingIllegalOperationHandler_Factory throwingIllegalOperationHandlerProvider;

            private ConnectionComponentImpl(ConnectionComponentBuilder connectionComponentBuilder) {
                initialize(connectionComponentBuilder);
            }

            private BleConnectionCompat getBleConnectionCompat() {
                return new BleConnectionCompat(ClientComponent_ClientModule_ProvideApplicationContextFactory.proxyProvideApplicationContext(DaggerClientComponent.this.clientModule));
            }

            private void initialize(ConnectionComponentBuilder connectionComponentBuilder) {
                this.bluetoothGattProvider = DoubleCheck.provider(BluetoothGattProvider_Factory.create());
                this.disconnectionRouterProvider = DoubleCheck.provider(DisconnectionRouter_Factory.create(DeviceComponentImpl.this.provideMacAddressProvider, DaggerClientComponent.this.rxBleAdapterWrapperProvider, DaggerClientComponent.this.rxBleAdapterStateObservableProvider));
                this.rxBleGattCallbackProvider = DoubleCheck.provider(RxBleGattCallback_Factory.create(DaggerClientComponent.this.provideBluetoothCallbacksSchedulerProvider, this.bluetoothGattProvider, this.disconnectionRouterProvider, NativeCallbackDispatcher_Factory.create()));
                this.provideAutoConnectProvider = DoubleCheck.provider(ConnectionModule_ProvideAutoConnectFactory.create(connectionComponentBuilder.connectionModule));
                this.connectionOperationQueueImplProvider = DoubleCheck.provider(ConnectionOperationQueueImpl_Factory.create(DeviceComponentImpl.this.provideMacAddressProvider, this.disconnectionRouterProvider, DaggerClientComponent.this.provideConnectionQueueExecutorServiceProvider, DaggerClientComponent.this.provideBluetoothInteractionSchedulerProvider));
                this.provideBluetoothGattProvider = DoubleCheck.provider(ConnectionModuleBinder_ProvideBluetoothGattFactory.create(this.bluetoothGattProvider));
                this.provideCharacteristicPropertiesParserProvider = ConnectionModule_ProvideCharacteristicPropertiesParserFactory.create(connectionComponentBuilder.connectionModule);
                this.rxBleServicesLoggerProvider = RxBleServicesLogger_Factory.create(this.provideCharacteristicPropertiesParserProvider);
                this.providesOperationTimeoutConfProvider = ConnectionModule_ProvidesOperationTimeoutConfFactory.create(connectionComponentBuilder.connectionModule, ClientComponent_ClientModule_ProvideComputationSchedulerFactory.create());
                this.readRssiOperationProvider = ReadRssiOperation_Factory.create(this.rxBleGattCallbackProvider, this.provideBluetoothGattProvider, this.providesOperationTimeoutConfProvider);
                this.operationsProviderImplProvider = OperationsProviderImpl_Factory.create(this.rxBleGattCallbackProvider, this.provideBluetoothGattProvider, this.rxBleServicesLoggerProvider, this.providesOperationTimeoutConfProvider, DaggerClientComponent.this.provideBluetoothInteractionSchedulerProvider, ClientComponent_ClientModule_ProvideComputationSchedulerFactory.create(), this.readRssiOperationProvider);
                this.serviceDiscoveryManagerProvider = DoubleCheck.provider(ServiceDiscoveryManager_Factory.create(this.connectionOperationQueueImplProvider, this.provideBluetoothGattProvider, this.operationsProviderImplProvider));
                this.descriptorWriterProvider = DoubleCheck.provider(DescriptorWriter_Factory.create(this.connectionOperationQueueImplProvider, this.operationsProviderImplProvider));
                this.notificationAndIndicationManagerProvider = DoubleCheck.provider(NotificationAndIndicationManager_Factory.create(ClientComponent_ClientModule_ProvideEnableNotificationValueFactory.create(), ClientComponent_ClientModule_ProvideEnableIndicationValueFactory.create(), ClientComponent_ClientModule_ProvideDisableNotificationValueFactory.create(), this.provideBluetoothGattProvider, this.rxBleGattCallbackProvider, this.descriptorWriterProvider));
                this.mtuWatcherProvider = DoubleCheck.provider(MtuWatcher_Factory.create(this.rxBleGattCallbackProvider, ConnectionModuleBinder_MinimumMtuFactory.create()));
                this.rxBleConnectionImplProvider = new DelegateFactory();
                this.mtuBasedPayloadSizeLimitProvider = DoubleCheck.provider(MtuBasedPayloadSizeLimit_Factory.create(this.rxBleConnectionImplProvider, ConnectionModuleBinder_GattWriteMtuOverheadFactory.create()));
                this.longWriteOperationBuilderImplProvider = LongWriteOperationBuilderImpl_Factory.create(this.connectionOperationQueueImplProvider, this.mtuBasedPayloadSizeLimitProvider, this.rxBleConnectionImplProvider, this.operationsProviderImplProvider);
                this.illegalOperationMessageCreatorProvider = IllegalOperationMessageCreator_Factory.create(this.provideCharacteristicPropertiesParserProvider);
                this.loggingIllegalOperationHandlerProvider = LoggingIllegalOperationHandler_Factory.create(this.illegalOperationMessageCreatorProvider);
                this.throwingIllegalOperationHandlerProvider = ThrowingIllegalOperationHandler_Factory.create(this.illegalOperationMessageCreatorProvider);
                this.provideIllegalOperationHandlerProvider = ConnectionModule_ProvideIllegalOperationHandlerFactory.create(connectionComponentBuilder.connectionModule, this.loggingIllegalOperationHandlerProvider, this.throwingIllegalOperationHandlerProvider);
                this.illegalOperationCheckerProvider = IllegalOperationChecker_Factory.create(this.provideIllegalOperationHandlerProvider);
                this.rxBleConnectionImplProvider = DoubleCheck.provider(RxBleConnectionImpl_Factory.create(this.connectionOperationQueueImplProvider, this.rxBleGattCallbackProvider, this.provideBluetoothGattProvider, this.serviceDiscoveryManagerProvider, this.notificationAndIndicationManagerProvider, this.mtuWatcherProvider, this.descriptorWriterProvider, this.operationsProviderImplProvider, this.longWriteOperationBuilderImplProvider, DaggerClientComponent.this.provideBluetoothInteractionSchedulerProvider, this.illegalOperationCheckerProvider));
                ((DelegateFactory) this.rxBleConnectionImplProvider).setDelegatedProvider(this.rxBleConnectionImplProvider);
                this.disconnectOperationProvider = DisconnectOperation_Factory.create(this.rxBleGattCallbackProvider, this.bluetoothGattProvider, DeviceComponentImpl.this.provideMacAddressProvider, DaggerClientComponent.this.provideBluetoothManagerProvider, DaggerClientComponent.this.provideBluetoothInteractionSchedulerProvider, DeviceComponentImpl.this.providesDisconnectTimeoutConfProvider, DeviceComponentImpl.this.provideConnectionStateChangeListenerProvider);
                this.disconnectActionProvider = DoubleCheck.provider(DisconnectAction_Factory.create(DaggerClientComponent.this.bindClientOperationQueueProvider, this.disconnectOperationProvider));
            }

            @Override // com.polidea.rxandroidble2.internal.connection.ConnectionComponent
            public ConnectOperation connectOperation() {
                return ConnectOperation_Factory.newConnectOperation(DeviceComponentImpl.this.getBluetoothDevice(), getBleConnectionCompat(), this.rxBleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), DeviceComponentImpl.this.getNamedTimeoutConfiguration(), this.provideAutoConnectProvider.get().booleanValue(), (ConnectionStateChangeListener) DeviceComponentImpl.this.provideConnectionStateChangeListenerProvider.get());
            }

            @Override // com.polidea.rxandroidble2.internal.connection.ConnectionComponent
            public RxBleConnection rxBleConnection() {
                return this.rxBleConnectionImplProvider.get();
            }

            @Override // com.polidea.rxandroidble2.internal.connection.ConnectionComponent
            public RxBleGattCallback gattCallback() {
                return this.rxBleGattCallbackProvider.get();
            }

            @Override // com.polidea.rxandroidble2.internal.connection.ConnectionComponent
            public Set<ConnectionSubscriptionWatcher> connectionSubscriptionWatchers() {
                return SetBuilder.newSetBuilder(3).add((ConnectionSubscriptionWatcher) this.mtuWatcherProvider.get()).add((ConnectionSubscriptionWatcher) this.disconnectActionProvider.get()).add(this.connectionOperationQueueImplProvider.get()).build();
            }
        }
    }
}
