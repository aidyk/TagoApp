package com.polidea.rxandroidble2.internal.util;

import java.util.Arrays;
import java.util.UUID;

public class CharacteristicChangedEvent extends CharacteristicNotificationId {
    public final byte[] data;

    public CharacteristicChangedEvent(UUID uuid, Integer num, byte[] bArr) {
        super(uuid, num);
        this.data = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CharacteristicChangedEvent)) {
            if (!(obj instanceof CharacteristicNotificationId) || !super.equals(obj)) {
                return false;
            }
            return true;
        } else if (!super.equals(obj)) {
            return false;
        } else {
            return Arrays.equals(this.data, ((CharacteristicChangedEvent) obj).data);
        }
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(this.data);
    }

    @Override // com.polidea.rxandroidble2.internal.util.CharacteristicNotificationId
    public String toString() {
        return "CharacteristicChangedEvent{UUID=" + ((UUID) this.first).toString() + ", instanceId=" + ((Integer) this.second).toString() + ", data=" + Arrays.toString(this.data) + '}';
    }
}
