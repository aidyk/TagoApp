package com.polidea.rxandroidble2.internal.scan;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.exceptions.BleScanException;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.scan.BackgroundScanner;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanResult;
import com.polidea.rxandroidble2.scan.ScanSettings;
import java.util.ArrayList;
import java.util.List;

@TargetApi(26)
public class BackgroundScannerImpl implements BackgroundScanner {
    private static final int NO_ERROR = 0;
    private static final String TAG = "BackgroundScanner";
    private final InternalScanResultCreator internalScanResultCreator;
    private final InternalToExternalScanResultConverter internalToExternalScanResultConverter;
    private final RxBleAdapterWrapper rxBleAdapterWrapper;
    private final AndroidScanObjectsConverter scanObjectsConverter;

    @Inject
    BackgroundScannerImpl(RxBleAdapterWrapper rxBleAdapterWrapper2, AndroidScanObjectsConverter androidScanObjectsConverter, InternalScanResultCreator internalScanResultCreator2, InternalToExternalScanResultConverter internalToExternalScanResultConverter2) {
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
        this.scanObjectsConverter = androidScanObjectsConverter;
        this.internalScanResultCreator = internalScanResultCreator2;
        this.internalToExternalScanResultConverter = internalToExternalScanResultConverter2;
    }

    @Override // com.polidea.rxandroidble2.scan.BackgroundScanner
    @RequiresApi(26)
    public void scanBleDeviceInBackground(@NonNull PendingIntent pendingIntent, ScanSettings scanSettings, ScanFilter... scanFilterArr) {
        if (Build.VERSION.SDK_INT < 26) {
            RxBleLog.w(TAG, "PendingIntent based scanning is available for Android O and higher only.");
        } else if (this.rxBleAdapterWrapper.isBluetoothEnabled()) {
            RxBleLog.i(TAG, "Requesting pending intent based scan.");
            int startLeScan = this.rxBleAdapterWrapper.startLeScan(this.scanObjectsConverter.toNativeFilters(scanFilterArr), this.scanObjectsConverter.toNativeSettings(scanSettings), pendingIntent);
            if (startLeScan != 0) {
                BleScanException bleScanException = new BleScanException(startLeScan);
                RxBleLog.w(TAG, "Failed to start scan", bleScanException);
                throw bleScanException;
            }
        } else {
            RxBleLog.w(TAG, "PendingIntent based scanning is available only when Bluetooth is ON.");
            throw new BleScanException(1);
        }
    }

    @Override // com.polidea.rxandroidble2.scan.BackgroundScanner
    @RequiresApi(26)
    public void stopBackgroundBleScan(@NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT < 26) {
            RxBleLog.w(TAG, "PendingIntent based scanning is available for Android O and higher only.");
        } else if (!this.rxBleAdapterWrapper.isBluetoothEnabled()) {
            RxBleLog.w(TAG, "PendingIntent based scanning is available only when Bluetooth is ON.");
        } else {
            RxBleLog.i(TAG, "Stopping pending intent based scan.");
            this.rxBleAdapterWrapper.stopLeScan(pendingIntent);
        }
    }

    @Override // com.polidea.rxandroidble2.scan.BackgroundScanner
    public List<ScanResult> onScanResultReceived(@NonNull Intent intent) {
        int intExtra = intent.getIntExtra("android.bluetooth.le.extra.CALLBACK_TYPE", -1);
        int intExtra2 = intent.getIntExtra("android.bluetooth.le.extra.ERROR_CODE", 0);
        List<android.bluetooth.le.ScanResult> extractScanResults = extractScanResults(intent);
        ArrayList arrayList = new ArrayList();
        if (intExtra2 == 0) {
            for (android.bluetooth.le.ScanResult scanResult : extractScanResults) {
                arrayList.add(convertScanResultToRxAndroidBLEModel(intExtra, scanResult));
            }
            return arrayList;
        }
        throw new BleScanException(intExtra2);
    }

    private static List<android.bluetooth.le.ScanResult> extractScanResults(@NonNull Intent intent) {
        return (List) intent.getSerializableExtra("android.bluetooth.le.extra.LIST_SCAN_RESULT");
    }

    private ScanResult convertScanResultToRxAndroidBLEModel(int i, android.bluetooth.le.ScanResult scanResult) {
        return this.internalToExternalScanResultConverter.apply(this.internalScanResultCreator.create(i, scanResult));
    }
}
