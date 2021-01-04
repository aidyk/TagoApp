package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.CharacteristicPropertiesParser;

public final class IllegalOperationMessageCreator_Factory implements Factory<IllegalOperationMessageCreator> {
    private final Provider<CharacteristicPropertiesParser> propertiesParserProvider;

    public IllegalOperationMessageCreator_Factory(Provider<CharacteristicPropertiesParser> provider) {
        this.propertiesParserProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public IllegalOperationMessageCreator get() {
        return new IllegalOperationMessageCreator(this.propertiesParserProvider.get());
    }

    public static IllegalOperationMessageCreator_Factory create(Provider<CharacteristicPropertiesParser> provider) {
        return new IllegalOperationMessageCreator_Factory(provider);
    }
}
