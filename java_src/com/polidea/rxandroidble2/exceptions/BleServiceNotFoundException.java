package com.polidea.rxandroidble2.exceptions;

import java.util.UUID;

public class BleServiceNotFoundException extends BleException {
    private final UUID serviceUUID;

    public BleServiceNotFoundException(UUID uuid) {
        super("BLE Service not found with UUID " + uuid);
        this.serviceUUID = uuid;
    }

    public UUID getServiceUUID() {
        return this.serviceUUID;
    }
}
