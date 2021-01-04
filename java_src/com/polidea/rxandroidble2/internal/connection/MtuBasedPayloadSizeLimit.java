package com.polidea.rxandroidble2.internal.connection;

import android.support.annotation.RestrictTo;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleConnection;

/* access modifiers changed from: package-private */
@ConnectionScope
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class MtuBasedPayloadSizeLimit implements PayloadSizeLimitProvider {
    private final int gattWriteMtuOverhead;
    private final RxBleConnection rxBleConnection;

    @Inject
    MtuBasedPayloadSizeLimit(RxBleConnection rxBleConnection2, @Named("GATT_WRITE_MTU_OVERHEAD") int i) {
        this.rxBleConnection = rxBleConnection2;
        this.gattWriteMtuOverhead = i;
    }

    @Override // com.polidea.rxandroidble2.internal.connection.PayloadSizeLimitProvider
    public int getPayloadSizeLimit() {
        return this.rxBleConnection.getMtu() - this.gattWriteMtuOverhead;
    }
}
