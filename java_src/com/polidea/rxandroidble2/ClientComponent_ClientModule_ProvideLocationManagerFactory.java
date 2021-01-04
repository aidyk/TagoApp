package com.polidea.rxandroidble2;

import android.location.LocationManager;
import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;

public final class ClientComponent_ClientModule_ProvideLocationManagerFactory implements Factory<LocationManager> {
    private final ClientComponent.ClientModule module;

    public ClientComponent_ClientModule_ProvideLocationManagerFactory(ClientComponent.ClientModule clientModule) {
        this.module = clientModule;
    }

    @Override // bleshadow.javax.inject.Provider
    public LocationManager get() {
        return (LocationManager) Preconditions.checkNotNull(this.module.provideLocationManager(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideLocationManagerFactory create(ClientComponent.ClientModule clientModule) {
        return new ClientComponent_ClientModule_ProvideLocationManagerFactory(clientModule);
    }

    public static LocationManager proxyProvideLocationManager(ClientComponent.ClientModule clientModule) {
        return (LocationManager) Preconditions.checkNotNull(clientModule.provideLocationManager(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
