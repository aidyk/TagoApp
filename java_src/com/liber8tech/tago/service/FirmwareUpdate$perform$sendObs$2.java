package com.liber8tech.tago.service;

import android.support.v4.app.NotificationCompat;
import com.liber8tech.tago.protocol.Command;
import com.liber8tech.tago.protocol.Message;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_MESSAGE, "Lcom/liber8tech/tago/protocol/Message;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: FirmwareUpdate.kt */
public final class FirmwareUpdate$perform$sendObs$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ FirmwareUpdate this$0;

    FirmwareUpdate$perform$sendObs$2(FirmwareUpdate firmwareUpdate) {
        this.this$0 = firmwareUpdate;
    }

    /* JADX DEBUG: Type inference failed for r3v5. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<byte[]> */
    public final Observable<byte[]> apply(@NotNull Message message) {
        Intrinsics.checkParameterIsNotNull(message, NotificationCompat.CATEGORY_MESSAGE);
        return message.command() == Command.DATA_PART_SEND ? (Observable<R>) message.chunks(20).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
            /* class com.liber8tech.tago.service.FirmwareUpdate$perform$sendObs$2.AnonymousClass1 */
            final /* synthetic */ FirmwareUpdate$perform$sendObs$2 this$0;

            {
                this.this$0 = r1;
            }

            public final Observable<byte[]> apply(@NotNull byte[] bArr) {
                Intrinsics.checkParameterIsNotNull(bArr, "it");
                return this.this$0.this$0.connection.writeCharacteristic(BluetoothService.Companion.getTxId(), bArr).toObservable();
            }
        }) : this.this$0.connection.writeCharacteristic(BluetoothService.Companion.getTxId(), message.toWrappedMessage()).toObservable();
    }
}
