package com.polidea.rxandroidble2.internal.scan;

import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.exceptions.BleScanException;
import io.reactivex.Scheduler;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class ScanPreconditionsVerifierApi24 implements ScanPreconditionsVerifier {
    private static final long EXCESSIVE_SCANNING_PERIOD = TimeUnit.SECONDS.toMillis(30);
    private static final int SCANS_LENGTH = 5;
    private final long[] previousChecks = new long[5];
    private final ScanPreconditionsVerifierApi18 scanPreconditionVerifierApi18;
    private final Scheduler timeScheduler;

    @Inject
    public ScanPreconditionsVerifierApi24(ScanPreconditionsVerifierApi18 scanPreconditionsVerifierApi18, @Named("computation") Scheduler scheduler) {
        this.scanPreconditionVerifierApi18 = scanPreconditionsVerifierApi18;
        this.timeScheduler = scheduler;
    }

    @Override // com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifier
    public void verify() {
        this.scanPreconditionVerifierApi18.verify();
        int oldestCheckTimestampIndex = getOldestCheckTimestampIndex();
        long j = this.previousChecks[oldestCheckTimestampIndex];
        long now = this.timeScheduler.now(TimeUnit.MILLISECONDS);
        if (now - j >= EXCESSIVE_SCANNING_PERIOD) {
            this.previousChecks[oldestCheckTimestampIndex] = now;
            return;
        }
        throw new BleScanException((int) BleScanException.UNDOCUMENTED_SCAN_THROTTLE, new Date(j + EXCESSIVE_SCANNING_PERIOD));
    }

    private int getOldestCheckTimestampIndex() {
        long j = Long.MAX_VALUE;
        int i = -1;
        for (int i2 = 0; i2 < 5; i2++) {
            long j2 = this.previousChecks[i2];
            if (j2 < j) {
                i = i2;
                j = j2;
            }
        }
        return i;
    }
}
