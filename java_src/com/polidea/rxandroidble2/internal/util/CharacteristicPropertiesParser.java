package com.polidea.rxandroidble2.internal.util;

import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.internal.RxBleLog;
import org.apache.commons.lang3.StringUtils;

public class CharacteristicPropertiesParser {
    private final int[] possibleProperties = getPossibleProperties();
    private final int propertyBroadcast;
    private final int propertyIndicate;
    private final int propertyNotify;
    private final int propertyRead;
    private final int propertySignedWrite;
    private final int propertyWrite;
    private final int propertyWriteNoResponse;

    private static boolean propertiesIntContains(int i, int i2) {
        return (i & i2) != 0;
    }

    public CharacteristicPropertiesParser(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.propertyBroadcast = i;
        this.propertyRead = i2;
        this.propertyWriteNoResponse = i3;
        this.propertyWrite = i4;
        this.propertyNotify = i5;
        this.propertyIndicate = i6;
        this.propertySignedWrite = i7;
    }

    @NonNull
    public String propertiesIntToString(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("[ ");
        int[] iArr = this.possibleProperties;
        for (int i2 : iArr) {
            if (propertiesIntContains(i, i2)) {
                sb.append(propertyToString(i2));
                sb.append(StringUtils.SPACE);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @NonNull
    private int[] getPossibleProperties() {
        return new int[]{this.propertyBroadcast, this.propertyRead, this.propertyWriteNoResponse, this.propertyWrite, this.propertyNotify, this.propertyIndicate, this.propertySignedWrite};
    }

    @NonNull
    private String propertyToString(int i) {
        if (i == this.propertyRead) {
            return "READ";
        }
        if (i == this.propertyWrite) {
            return "WRITE";
        }
        if (i == this.propertyWriteNoResponse) {
            return "WRITE_NO_RESPONSE";
        }
        if (i == this.propertySignedWrite) {
            return "SIGNED_WRITE";
        }
        if (i == this.propertyIndicate) {
            return "INDICATE";
        }
        if (i == this.propertyBroadcast) {
            return "BROADCAST";
        }
        if (i == this.propertyNotify) {
            return "NOTIFY";
        }
        if (i == 0) {
            return "";
        }
        RxBleLog.e("Unknown property specified", new Object[0]);
        return "UNKNOWN (" + i + " -> check android.bluetooth.BluetoothGattCharacteristic)";
    }
}
