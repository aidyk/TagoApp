package com.polidea.rxandroidble2.scan;

import android.app.PendingIntent;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import java.util.List;

@RequiresApi(api = 26)
public interface BackgroundScanner {
    List<ScanResult> onScanResultReceived(@NonNull Intent intent);

    @RequiresApi(26)
    void scanBleDeviceInBackground(@NonNull PendingIntent pendingIntent, ScanSettings scanSettings, ScanFilter... scanFilterArr);

    @RequiresApi(26)
    void stopBackgroundBleScan(@NonNull PendingIntent pendingIntent);
}
