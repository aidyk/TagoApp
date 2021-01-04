package com.polidea.rxandroidble2;

import android.content.Context;
import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;

public final class ClientComponent_ClientModule_ProvideApplicationContextFactory implements Factory<Context> {
    private final ClientComponent.ClientModule module;

    public ClientComponent_ClientModule_ProvideApplicationContextFactory(ClientComponent.ClientModule clientModule) {
        this.module = clientModule;
    }

    @Override // bleshadow.javax.inject.Provider
    public Context get() {
        return (Context) Preconditions.checkNotNull(this.module.provideApplicationContext(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideApplicationContextFactory create(ClientComponent.ClientModule clientModule) {
        return new ClientComponent_ClientModule_ProvideApplicationContextFactory(clientModule);
    }

    public static Context proxyProvideApplicationContext(ClientComponent.ClientModule clientModule) {
        return (Context) Preconditions.checkNotNull(clientModule.provideApplicationContext(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
