package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class LoggingIllegalOperationHandler_Factory implements Factory<LoggingIllegalOperationHandler> {
    private final Provider<IllegalOperationMessageCreator> messageCreatorProvider;

    public LoggingIllegalOperationHandler_Factory(Provider<IllegalOperationMessageCreator> provider) {
        this.messageCreatorProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public LoggingIllegalOperationHandler get() {
        return new LoggingIllegalOperationHandler(this.messageCreatorProvider.get());
    }

    public static LoggingIllegalOperationHandler_Factory create(Provider<IllegalOperationMessageCreator> provider) {
        return new LoggingIllegalOperationHandler_Factory(provider);
    }
}
