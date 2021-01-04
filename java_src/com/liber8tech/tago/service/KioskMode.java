package com.liber8tech.tago.service;

import com.liber8tech.tago.protocol.Command;
import com.liber8tech.tago.protocol.Message;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.subjects.AsyncSubject;
import io.reactivex.subjects.BehaviorSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u000fJ\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\rH\u0002J-\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\t0\t0\bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\r0\r0\fX\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/service/KioskMode;", "", "connection", "Lcom/polidea/rxandroidble2/RxBleConnection;", "kioskMode", "", "(Lcom/polidea/rxandroidble2/RxBleConnection;I)V", "doneSignal", "Lio/reactivex/subjects/AsyncSubject;", "", "kotlin.jvm.PlatformType", "sendBuffer", "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/liber8tech/tago/protocol/Message;", "perform", "Lio/reactivex/Observable;", "processMessage", "message", "send", "cmd", "Lcom/liber8tech/tago/protocol/Command;", "imageId", "", "(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Integer;)V", "sendWithTimeStamp", "timeStamp", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: KioskMode.kt */
public final class KioskMode {
    private final RxBleConnection connection;
    private final AsyncSubject<Unit> doneSignal;
    private final int kioskMode;
    private final BehaviorSubject<Message> sendBuffer;

    public KioskMode(@NotNull RxBleConnection rxBleConnection, int i) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        this.connection = rxBleConnection;
        this.kioskMode = i;
        BehaviorSubject<Message> create = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "BehaviorSubject.create<Message>()");
        this.sendBuffer = create;
        AsyncSubject<Unit> create2 = AsyncSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create2, "AsyncSubject.create<Unit>()");
        this.doneSignal = create2;
    }

    @NotNull
    public final Observable<Unit> perform() {
        Observable<R> takeUntil = this.sendBuffer.doOnNext(KioskMode$perform$sendObs$1.INSTANCE).flatMap(new KioskMode$perform$sendObs$2(this)).map(KioskMode$perform$sendObs$3.INSTANCE).takeUntil(this.doneSignal);
        Observable<R> map = this.connection.setupNotification(BluetoothService.Companion.getRxId()).flatMap(KioskMode$perform$notificationsObs$1.INSTANCE).flatMap(KioskMode$perform$notificationsObs$2.INSTANCE).doOnNext(new KioskMode$perform$notificationsObs$3(this)).map(KioskMode$perform$notificationsObs$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "connection.setupNotifica…it) }\n      .map { Unit }");
        Observable<Unit> flatMap = Observable.merge(takeUntil, RxExtensionsKt.timeoutEach(map, BluetoothService.messageTimeout).takeUntil(this.doneSignal)).flatMap(new KioskMode$perform$1(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "Observable.merge(sendObs…  .flatMap { doneSignal }");
        return flatMap;
    }

    /* access modifiers changed from: private */
    public final void processMessage(Message message) {
        boolean isValid = message.isValid();
        if (isValid) {
            Command command = message.command();
            Timber.d("<-- %s", message);
            switch (command) {
                case SYN:
                    send$default(this, Command.ACK, null, null, 6, null);
                    return;
                case SYN_ACK:
                    sendWithTimeStamp(Command.ACK, System.currentTimeMillis());
                    send$default(this, Command.KIOSK_MODE, null, Integer.valueOf(this.kioskMode), 2, null);
                    return;
                case NACK:
                    this.sendBuffer.firstElement().subscribe(new KioskMode$processMessage$1(this));
                    return;
                case ACK:
                    this.doneSignal.onNext(Unit.INSTANCE);
                    this.doneSignal.onComplete();
                    return;
                default:
                    return;
            }
        } else if (!isValid) {
            send$default(this, Command.NACK, null, null, 6, null);
        }
    }

    static /* synthetic */ void send$default(KioskMode kioskMode2, Command command, Long l, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        kioskMode2.send(command, l, num);
    }

    private final void send(Command command, Long l, Integer num) {
        this.sendBuffer.onNext(Message.Companion.fromCommand$default(Message.Companion, command, l, null, num, 4, null));
        Timber.d("--> " + command.name(), new Object[0]);
    }

    private final void sendWithTimeStamp(Command command, long j) {
        this.sendBuffer.onNext(Message.Companion.fromCommand$default(Message.Companion, command, null, Long.valueOf(j), null, 8, null));
        Timber.d("--> " + command.name(), new Object[0]);
    }
}
