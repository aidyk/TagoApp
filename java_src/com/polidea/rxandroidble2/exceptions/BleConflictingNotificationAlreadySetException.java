package com.polidea.rxandroidble2.exceptions;

import java.util.UUID;

public class BleConflictingNotificationAlreadySetException extends BleException {
    private final boolean alreadySetIsIndication;
    private final UUID characteristicUuid;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public BleConflictingNotificationAlreadySetException(java.util.UUID r3, boolean r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Characteristic "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r1 = " notification already set to "
            r0.append(r1)
            if (r4 == 0) goto L_0x0017
            java.lang.String r1 = "indication"
            goto L_0x0019
        L_0x0017:
            java.lang.String r1 = "notification"
        L_0x0019:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r2.<init>(r0)
            r2.characteristicUuid = r3
            r2.alreadySetIsIndication = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.polidea.rxandroidble2.exceptions.BleConflictingNotificationAlreadySetException.<init>(java.util.UUID, boolean):void");
    }

    public UUID getCharacteristicUuid() {
        return this.characteristicUuid;
    }

    public boolean indicationAlreadySet() {
        return this.alreadySetIsIndication;
    }

    public boolean notificationAlreadySet() {
        return !this.alreadySetIsIndication;
    }
}
