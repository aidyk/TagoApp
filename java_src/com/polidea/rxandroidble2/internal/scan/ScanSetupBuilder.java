package com.polidea.rxandroidble2.internal.scan;

import android.support.annotation.RestrictTo;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanSettings;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface ScanSetupBuilder {
    ScanSetup build(ScanSettings scanSettings, ScanFilter... scanFilterArr);
}
