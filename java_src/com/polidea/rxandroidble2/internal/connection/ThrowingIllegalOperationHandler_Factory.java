package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class ThrowingIllegalOperationHandler_Factory implements Factory<ThrowingIllegalOperationHandler> {
    private final Provider<IllegalOperationMessageCreator> messageCreatorProvider;

    public ThrowingIllegalOperationHandler_Factory(Provider<IllegalOperationMessageCreator> provider) {
        this.messageCreatorProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public ThrowingIllegalOperationHandler get() {
        return new ThrowingIllegalOperationHandler(this.messageCreatorProvider.get());
    }

    public static ThrowingIllegalOperationHandler_Factory create(Provider<IllegalOperationMessageCreator> provider) {
        return new ThrowingIllegalOperationHandler_Factory(provider);
    }
}
