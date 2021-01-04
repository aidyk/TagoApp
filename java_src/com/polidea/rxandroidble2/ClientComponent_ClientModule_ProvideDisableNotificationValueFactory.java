package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;

public final class ClientComponent_ClientModule_ProvideDisableNotificationValueFactory implements Factory<byte[]> {
    private static final ClientComponent_ClientModule_ProvideDisableNotificationValueFactory INSTANCE = new ClientComponent_ClientModule_ProvideDisableNotificationValueFactory();

    @Override // bleshadow.javax.inject.Provider
    public byte[] get() {
        return (byte[]) Preconditions.checkNotNull(ClientComponent.ClientModule.provideDisableNotificationValue(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideDisableNotificationValueFactory create() {
        return INSTANCE;
    }

    public static byte[] proxyProvideDisableNotificationValue() {
        return (byte[]) Preconditions.checkNotNull(ClientComponent.ClientModule.provideDisableNotificationValue(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
