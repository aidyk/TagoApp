package com.polidea.rxandroidble2.internal.util;

import android.util.Pair;
import java.util.UUID;

public class CharacteristicNotificationId extends Pair<UUID, Integer> {
    public CharacteristicNotificationId(UUID uuid, Integer num) {
        super(uuid, num);
    }

    public String toString() {
        return "CharacteristicNotificationId{UUID=" + ((UUID) this.first).toString() + ", instanceId=" + ((Integer) this.second).toString() + '}';
    }
}
