package com.polidea.rxandroidble2.exceptions;

import java.util.UUID;

public class BleCharacteristicNotFoundException extends BleException {
    private final UUID charactersisticUUID;

    public BleCharacteristicNotFoundException(UUID uuid) {
        super("Characteristic not found with UUID " + uuid);
        this.charactersisticUUID = uuid;
    }

    public UUID getCharactersisticUUID() {
        return this.charactersisticUUID;
    }
}
