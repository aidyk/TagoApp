package com.polidea.rxandroidble2.helpers;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

public class AdvertisedServiceUUIDExtractor {
    private static final String UUID_BASE = "%08x-0000-1000-8000-00805f9b34fb";

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0054 A[LOOP:2: B:11:0x0050->B:13:0x0054, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<java.util.UUID> extractUUIDs(byte[] r9) {
        /*
        // Method dump skipped, instructions count: 152
        */
        throw new UnsupportedOperationException("Method not decompiled: com.polidea.rxandroidble2.helpers.AdvertisedServiceUUIDExtractor.extractUUIDs(byte[]):java.util.List");
    }

    @NonNull
    public Set<UUID> toDistinctSet(@Nullable UUID[] uuidArr) {
        if (uuidArr == null) {
            uuidArr = new UUID[0];
        }
        return new HashSet(Arrays.asList(uuidArr));
    }
}
