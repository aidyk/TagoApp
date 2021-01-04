package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.Module;
import bleshadow.dagger.Provides;
import bleshadow.javax.inject.Named;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ConnectionSetup;
import com.polidea.rxandroidble2.Timeout;
import com.polidea.rxandroidble2.internal.connection.ConnectionComponent;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import com.polidea.rxandroidble2.internal.util.CharacteristicPropertiesParser;
import io.reactivex.Scheduler;

@Module
public class ConnectionModule {
    public static final String OPERATION_TIMEOUT = "operation-timeout";
    final boolean autoConnect;
    private final Timeout operationTimeout;
    final boolean suppressOperationCheck;

    ConnectionModule(ConnectionSetup connectionSetup) {
        this.autoConnect = connectionSetup.autoConnect;
        this.suppressOperationCheck = connectionSetup.suppressOperationCheck;
        this.operationTimeout = connectionSetup.operationTimeout;
    }

    /* access modifiers changed from: package-private */
    @Named(ConnectionComponent.NamedBooleans.AUTO_CONNECT)
    @ConnectionScope
    @Provides
    public boolean provideAutoConnect() {
        return this.autoConnect;
    }

    /* access modifiers changed from: package-private */
    @Named("operation-timeout")
    @Provides
    public TimeoutConfiguration providesOperationTimeoutConf(@Named("timeout") Scheduler scheduler) {
        return new TimeoutConfiguration(this.operationTimeout.timeout, this.operationTimeout.timeUnit, scheduler);
    }

    /* access modifiers changed from: package-private */
    @Provides
    public IllegalOperationHandler provideIllegalOperationHandler(Provider<LoggingIllegalOperationHandler> provider, Provider<ThrowingIllegalOperationHandler> provider2) {
        if (this.suppressOperationCheck) {
            return provider.get();
        }
        return provider2.get();
    }

    /* access modifiers changed from: package-private */
    @Provides
    public CharacteristicPropertiesParser provideCharacteristicPropertiesParser() {
        return new CharacteristicPropertiesParser(1, 2, 4, 8, 16, 32, 64);
    }
}
