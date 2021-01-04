package com.polidea.rxandroidble2;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothManager;
import android.content.ContentResolver;
import android.content.Context;
import android.location.LocationManager;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import bleshadow.dagger.Binds;
import bleshadow.dagger.Component;
import bleshadow.dagger.Module;
import bleshadow.dagger.Provides;
import bleshadow.javax.inject.Named;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import com.polidea.rxandroidble2.helpers.LocationServicesOkObservable;
import com.polidea.rxandroidble2.internal.DeviceComponent;
import com.polidea.rxandroidble2.internal.scan.BackgroundScannerImpl;
import com.polidea.rxandroidble2.internal.scan.InternalToExternalScanResultConverter;
import com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifier;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifierApi18;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifierApi24;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi18;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi21;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi23;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueueImpl;
import com.polidea.rxandroidble2.internal.util.LocationServicesOkObservableApi23Factory;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatus;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatusApi18;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatusApi23;
import com.polidea.rxandroidble2.internal.util.ObservableUtil;
import com.polidea.rxandroidble2.scan.BackgroundScanner;
import com.polidea.rxandroidble2.scan.ScanResult;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Component(modules = {ClientModule.class, ClientModuleBinder.class})
@ClientScope
public interface ClientComponent {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface ClientComponentFinalizer {
        void onFinalize();
    }

    @Module
    public static abstract class ClientModuleBinder {
        /* access modifiers changed from: package-private */
        @Binds
        @ClientScope
        public abstract ClientOperationQueue bindClientOperationQueue(ClientOperationQueueImpl clientOperationQueueImpl);

        /* access modifiers changed from: package-private */
        @Binds
        @ClientScope
        public abstract RxBleClient bindRxBleClient(RxBleClientImpl rxBleClientImpl);

        /* access modifiers changed from: package-private */
        @Binds
        public abstract Observable<RxBleAdapterStateObservable.BleAdapterState> bindStateObs(RxBleAdapterStateObservable rxBleAdapterStateObservable);

        /* access modifiers changed from: package-private */
        @Named(NamedSchedulers.TIMEOUT)
        @Binds
        public abstract Scheduler bindTimeoutScheduler(@Named("computation") Scheduler scheduler);

        /* access modifiers changed from: package-private */
        @Binds
        public abstract Function<RxBleInternalScanResult, ScanResult> provideScanResultMapper(InternalToExternalScanResultConverter internalToExternalScanResultConverter);
    }

    LocationServicesOkObservable locationServicesOkObservable();

    RxBleClient rxBleClient();

    public static class NamedExecutors {
        public static final String BLUETOOTH_CALLBACKS = "executor_bluetooth_callbacks";
        public static final String BLUETOOTH_INTERACTION = "executor_bluetooth_interaction";
        public static final String CONNECTION_QUEUE = "executor_connection_queue";

        private NamedExecutors() {
        }
    }

    public static class NamedSchedulers {
        public static final String BLUETOOTH_CALLBACKS = "bluetooth_callbacks";
        public static final String BLUETOOTH_INTERACTION = "bluetooth_interaction";
        public static final String COMPUTATION = "computation";
        public static final String TIMEOUT = "timeout";

        private NamedSchedulers() {
        }
    }

    public static class PlatformConstants {
        public static final String BOOL_IS_ANDROID_WEAR = "android-wear";
        public static final String INT_DEVICE_SDK = "device-sdk";
        public static final String INT_TARGET_SDK = "target-sdk";

        private PlatformConstants() {
        }
    }

    public static class NamedBooleanObservables {
        public static final String LOCATION_SERVICES_OK = "location-ok-boolean-observable";

        private NamedBooleanObservables() {
        }
    }

    public static class BluetoothConstants {
        public static final String DISABLE_NOTIFICATION_VALUE = "disable-notification-value";
        public static final String ENABLE_INDICATION_VALUE = "enable-indication-value";
        public static final String ENABLE_NOTIFICATION_VALUE = "enable-notification-value";

        private BluetoothConstants() {
        }
    }

    @Module(subcomponents = {DeviceComponent.class})
    public static class ClientModule {
        private final Context context;

        /* access modifiers changed from: package-private */
        @Provides
        public BackgroundScanner provideBackgroundScanner(BackgroundScannerImpl backgroundScannerImpl) {
            return backgroundScannerImpl;
        }

        public ClientModule(Context context2) {
            this.context = context2;
        }

        /* access modifiers changed from: package-private */
        @Provides
        public Context provideApplicationContext() {
            return this.context;
        }

        /* access modifiers changed from: package-private */
        @Provides
        public BluetoothManager provideBluetoothManager() {
            return (BluetoothManager) this.context.getSystemService("bluetooth");
        }

        @Nullable
        @Provides
        static BluetoothAdapter provideBluetoothAdapter() {
            return BluetoothAdapter.getDefaultAdapter();
        }

        @Named(NamedSchedulers.COMPUTATION)
        @Provides
        static Scheduler provideComputationScheduler() {
            return Schedulers.computation();
        }

        @Named(PlatformConstants.INT_DEVICE_SDK)
        @Provides
        static int provideDeviceSdk() {
            return Build.VERSION.SDK_INT;
        }

        /* access modifiers changed from: package-private */
        @Provides
        public ContentResolver provideContentResolver() {
            return this.context.getContentResolver();
        }

        /* access modifiers changed from: package-private */
        @Provides
        public LocationServicesStatus provideLocationServicesStatus(@Named("device-sdk") int i, Provider<LocationServicesStatusApi18> provider, Provider<LocationServicesStatusApi23> provider2) {
            if (i < 23) {
                return provider.get();
            }
            return provider2.get();
        }

        /* access modifiers changed from: package-private */
        @Named(NamedBooleanObservables.LOCATION_SERVICES_OK)
        @Provides
        public Observable<Boolean> provideLocationServicesOkObservable(@Named("device-sdk") int i, LocationServicesOkObservableApi23Factory locationServicesOkObservableApi23Factory) {
            if (i < 23) {
                return ObservableUtil.justOnNext(true);
            }
            return locationServicesOkObservableApi23Factory.get();
        }

        @Named(NamedExecutors.CONNECTION_QUEUE)
        @ClientScope
        @Provides
        static ExecutorService provideConnectionQueueExecutorService() {
            return Executors.newCachedThreadPool();
        }

        @Named(NamedExecutors.BLUETOOTH_INTERACTION)
        @ClientScope
        @Provides
        static ExecutorService provideBluetoothInteractionExecutorService() {
            return Executors.newSingleThreadExecutor();
        }

        @Named(NamedExecutors.BLUETOOTH_CALLBACKS)
        @ClientScope
        @Provides
        static ExecutorService provideBluetoothCallbacksExecutorService() {
            return Executors.newSingleThreadExecutor();
        }

        @Named(NamedSchedulers.BLUETOOTH_INTERACTION)
        @ClientScope
        @Provides
        static Scheduler provideBluetoothInteractionScheduler(@Named("executor_bluetooth_interaction") ExecutorService executorService) {
            return Schedulers.from(executorService);
        }

        @Named(NamedSchedulers.BLUETOOTH_CALLBACKS)
        @ClientScope
        @Provides
        static Scheduler provideBluetoothCallbacksScheduler(@Named("executor_bluetooth_callbacks") ExecutorService executorService) {
            return Schedulers.from(executorService);
        }

        @Provides
        static ClientComponentFinalizer provideFinalizationCloseable(@Named("executor_bluetooth_interaction") final ExecutorService executorService, @Named("executor_bluetooth_callbacks") final ExecutorService executorService2, @Named("executor_connection_queue") final ExecutorService executorService3) {
            return new ClientComponentFinalizer() {
                /* class com.polidea.rxandroidble2.ClientComponent.ClientModule.AnonymousClass1 */

                @Override // com.polidea.rxandroidble2.ClientComponent.ClientComponentFinalizer
                public void onFinalize() {
                    executorService.shutdown();
                    executorService2.shutdown();
                    executorService3.shutdown();
                }
            };
        }

        /* access modifiers changed from: package-private */
        @Provides
        public LocationManager provideLocationManager() {
            return (LocationManager) this.context.getSystemService("location");
        }

        /* access modifiers changed from: package-private */
        @Named(PlatformConstants.INT_TARGET_SDK)
        @Provides
        public int provideTargetSdk() {
            try {
                return this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 0).targetSdkVersion;
            } catch (Throwable unused) {
                return Integer.MAX_VALUE;
            }
        }

        /* access modifiers changed from: package-private */
        @Named(PlatformConstants.BOOL_IS_ANDROID_WEAR)
        @SuppressLint({"InlinedApi"})
        @Provides
        public boolean provideIsAndroidWear(@Named("device-sdk") int i) {
            return i >= 20 && this.context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        }

        @ClientScope
        @Provides
        static ScanSetupBuilder provideScanSetupProvider(@Named("device-sdk") int i, Provider<ScanSetupBuilderImplApi18> provider, Provider<ScanSetupBuilderImplApi21> provider2, Provider<ScanSetupBuilderImplApi23> provider3) {
            if (i < 21) {
                return provider.get();
            }
            if (i < 23) {
                return provider2.get();
            }
            return provider3.get();
        }

        @Named(BluetoothConstants.ENABLE_NOTIFICATION_VALUE)
        @Provides
        static byte[] provideEnableNotificationValue() {
            return BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE;
        }

        @Named(BluetoothConstants.ENABLE_INDICATION_VALUE)
        @Provides
        static byte[] provideEnableIndicationValue() {
            return BluetoothGattDescriptor.ENABLE_INDICATION_VALUE;
        }

        @Named(BluetoothConstants.DISABLE_NOTIFICATION_VALUE)
        @Provides
        static byte[] provideDisableNotificationValue() {
            return BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE;
        }

        @Provides
        static ScanPreconditionsVerifier provideScanPreconditionVerifier(@Named("device-sdk") int i, Provider<ScanPreconditionsVerifierApi18> provider, Provider<ScanPreconditionsVerifierApi24> provider2) {
            if (i < 24) {
                return provider.get();
            }
            return provider2.get();
        }
    }
}
