package com.polidea.rxandroidble2.internal.serialization;

import com.polidea.rxandroidble2.internal.operations.Operation;
import io.reactivex.Observable;

public interface ClientOperationQueue {
    <T> Observable<T> queue(Operation<T> operation);
}
