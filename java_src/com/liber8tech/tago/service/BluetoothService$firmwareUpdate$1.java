package com.liber8tech.tago.service;

import io.reactivex.functions.Action;
import kotlin.Metadata;
import kotlin.Unit;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
/* compiled from: BluetoothService.kt */
public final class BluetoothService$firmwareUpdate$1 implements Action {
    final /* synthetic */ BluetoothService this$0;

    BluetoothService$firmwareUpdate$1(BluetoothService bluetoothService) {
        this.this$0 = bluetoothService;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        this.this$0.doneSignal.onNext(Unit.INSTANCE);
    }
}
