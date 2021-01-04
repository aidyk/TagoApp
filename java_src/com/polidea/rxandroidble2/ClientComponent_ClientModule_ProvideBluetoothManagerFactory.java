package com.polidea.rxandroidble2;

import android.bluetooth.BluetoothManager;
import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;

public final class ClientComponent_ClientModule_ProvideBluetoothManagerFactory implements Factory<BluetoothManager> {
    private final ClientComponent.ClientModule module;

    public ClientComponent_ClientModule_ProvideBluetoothManagerFactory(ClientComponent.ClientModule clientModule) {
        this.module = clientModule;
    }

    @Override // bleshadow.javax.inject.Provider
    public BluetoothManager get() {
        return (BluetoothManager) Preconditions.checkNotNull(this.module.provideBluetoothManager(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideBluetoothManagerFactory create(ClientComponent.ClientModule clientModule) {
        return new ClientComponent_ClientModule_ProvideBluetoothManagerFactory(clientModule);
    }

    public static BluetoothManager proxyProvideBluetoothManager(ClientComponent.ClientModule clientModule) {
        return (BluetoothManager) Preconditions.checkNotNull(clientModule.provideBluetoothManager(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
