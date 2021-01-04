package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.internal.util.CharacteristicPropertiesParser;

public final class ConnectionModule_ProvideCharacteristicPropertiesParserFactory implements Factory<CharacteristicPropertiesParser> {
    private final ConnectionModule module;

    public ConnectionModule_ProvideCharacteristicPropertiesParserFactory(ConnectionModule connectionModule) {
        this.module = connectionModule;
    }

    @Override // bleshadow.javax.inject.Provider
    public CharacteristicPropertiesParser get() {
        return (CharacteristicPropertiesParser) Preconditions.checkNotNull(this.module.provideCharacteristicPropertiesParser(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ConnectionModule_ProvideCharacteristicPropertiesParserFactory create(ConnectionModule connectionModule) {
        return new ConnectionModule_ProvideCharacteristicPropertiesParserFactory(connectionModule);
    }

    public static CharacteristicPropertiesParser proxyProvideCharacteristicPropertiesParser(ConnectionModule connectionModule) {
        return (CharacteristicPropertiesParser) Preconditions.checkNotNull(connectionModule.provideCharacteristicPropertiesParser(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
