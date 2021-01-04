package com.liber8tech.tago.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/liber8tech/tago/service/BluetoothService$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$receiver$1 extends BroadcastReceiver {
    final /* synthetic */ BluetoothService this$0;

    /* JADX WARN: Incorrect args count in method signature: ()V */
    BluetoothService$receiver$1(BluetoothService bluetoothService) {
        this.this$0 = bluetoothService;
    }

    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
        Timber.d("onReceive # state=" + intExtra, new Object[0]);
        if (intExtra != 12) {
            this.this$0.bluetoothStates.onNext(false);
        } else {
            this.this$0.bluetoothStates.onNext(true);
        }
    }
}
