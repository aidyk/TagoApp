package com.polidea.rxandroidble2.internal.scan;

import android.support.annotation.Nullable;
import com.polidea.rxandroidble2.scan.ScanFilter;

public class EmulatedScanFilterMatcher {
    @Nullable
    private final ScanFilter[] scanFilters;

    public EmulatedScanFilterMatcher(@Nullable ScanFilter... scanFilterArr) {
        this.scanFilters = scanFilterArr;
    }

    public boolean matches(RxBleInternalScanResult rxBleInternalScanResult) {
        if (this.scanFilters == null || this.scanFilters.length == 0) {
            return true;
        }
        for (ScanFilter scanFilter : this.scanFilters) {
            if (scanFilter.matches(rxBleInternalScanResult)) {
                return true;
            }
        }
        return false;
    }
}
