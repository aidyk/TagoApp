package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;

public final class ClientComponent_ClientModule_ProvideEnableNotificationValueFactory implements Factory<byte[]> {
    private static final ClientComponent_ClientModule_ProvideEnableNotificationValueFactory INSTANCE = new ClientComponent_ClientModule_ProvideEnableNotificationValueFactory();

    @Override // bleshadow.javax.inject.Provider
    public byte[] get() {
        return (byte[]) Preconditions.checkNotNull(ClientComponent.ClientModule.provideEnableNotificationValue(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideEnableNotificationValueFactory create() {
        return INSTANCE;
    }

    public static byte[] proxyProvideEnableNotificationValue() {
        return (byte[]) Preconditions.checkNotNull(ClientComponent.ClientModule.provideEnableNotificationValue(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
