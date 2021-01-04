package com.polidea.rxandroidble2.internal.connection;

import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class ConstantPayloadSizeLimit implements PayloadSizeLimitProvider {
    private final int limit;

    ConstantPayloadSizeLimit(int i) {
        this.limit = i;
    }

    @Override // com.polidea.rxandroidble2.internal.connection.PayloadSizeLimitProvider
    public int getPayloadSizeLimit() {
        return this.limit;
    }
}
