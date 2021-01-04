package com.polidea.rxandroidble2.internal.serialization;

import com.polidea.rxandroidble2.exceptions.BleException;

public interface ConnectionOperationQueue extends ClientOperationQueue {
    void terminate(BleException bleException);
}
