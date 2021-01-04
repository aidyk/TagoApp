package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatus;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatusApi18;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatusApi23;

public final class ClientComponent_ClientModule_ProvideLocationServicesStatusFactory implements Factory<LocationServicesStatus> {
    private final Provider<Integer> deviceSdkProvider;
    private final Provider<LocationServicesStatusApi18> locationServicesStatusApi18Provider;
    private final Provider<LocationServicesStatusApi23> locationServicesStatusApi23Provider;
    private final ClientComponent.ClientModule module;

    public ClientComponent_ClientModule_ProvideLocationServicesStatusFactory(ClientComponent.ClientModule clientModule, Provider<Integer> provider, Provider<LocationServicesStatusApi18> provider2, Provider<LocationServicesStatusApi23> provider3) {
        this.module = clientModule;
        this.deviceSdkProvider = provider;
        this.locationServicesStatusApi18Provider = provider2;
        this.locationServicesStatusApi23Provider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public LocationServicesStatus get() {
        return (LocationServicesStatus) Preconditions.checkNotNull(this.module.provideLocationServicesStatus(this.deviceSdkProvider.get().intValue(), this.locationServicesStatusApi18Provider, this.locationServicesStatusApi23Provider), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideLocationServicesStatusFactory create(ClientComponent.ClientModule clientModule, Provider<Integer> provider, Provider<LocationServicesStatusApi18> provider2, Provider<LocationServicesStatusApi23> provider3) {
        return new ClientComponent_ClientModule_ProvideLocationServicesStatusFactory(clientModule, provider, provider2, provider3);
    }

    public static LocationServicesStatus proxyProvideLocationServicesStatus(ClientComponent.ClientModule clientModule, int i, Provider<LocationServicesStatusApi18> provider, Provider<LocationServicesStatusApi23> provider2) {
        return (LocationServicesStatus) Preconditions.checkNotNull(clientModule.provideLocationServicesStatus(i, provider, provider2), "Cannot return null from a non-@Nullable @Provides method");
    }
}
