package com.polidea.rxandroidble2.helpers;

import android.support.annotation.NonNull;
import io.reactivex.Emitter;
import io.reactivex.Flowable;
import io.reactivex.functions.Consumer;
import java.nio.ByteBuffer;
import org.reactivestreams.Subscriber;

public class ByteArrayBatchObservable extends Flowable<byte[]> {
    @NonNull
    private final ByteBuffer byteBuffer;
    private final int maxBatchSize;

    public ByteArrayBatchObservable(@NonNull byte[] bArr, int i) {
        if (i > 0) {
            this.byteBuffer = ByteBuffer.wrap(bArr);
            this.maxBatchSize = i;
            return;
        }
        throw new IllegalArgumentException("maxBatchSize must be > 0 but found: " + i);
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super byte[]> subscriber) {
        Flowable.generate(new Consumer<Emitter<byte[]>>() {
            /* class com.polidea.rxandroidble2.helpers.ByteArrayBatchObservable.AnonymousClass1 */

            public void accept(Emitter<byte[]> emitter) throws Exception {
                int min = Math.min(ByteArrayBatchObservable.this.byteBuffer.remaining(), ByteArrayBatchObservable.this.maxBatchSize);
                if (min == 0) {
                    emitter.onComplete();
                    return;
                }
                byte[] bArr = new byte[min];
                ByteArrayBatchObservable.this.byteBuffer.get(bArr);
                emitter.onNext(bArr);
            }
        }).subscribe(subscriber);
    }
}
