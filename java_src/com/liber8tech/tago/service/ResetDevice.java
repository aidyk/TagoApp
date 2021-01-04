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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\rJ\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u00070\u0006X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\f\u0012\n \b*\u0004\u0018\u00010\u000b0\u000b0\nX\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/liber8tech/tago/service/ResetDevice;", "", "connection", "Lcom/polidea/rxandroidble2/RxBleConnection;", "(Lcom/polidea/rxandroidble2/RxBleConnection;)V", "doneSignal", "Lio/reactivex/subjects/AsyncSubject;", "", "kotlin.jvm.PlatformType", "sendBuffer", "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/liber8tech/tago/protocol/Message;", "perform", "Lio/reactivex/Observable;", "processMessage", "message", "send", "cmd", "Lcom/liber8tech/tago/protocol/Command;", "imageId", "", "(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V", "sendWithTimeStamp", "timeStamp", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ResetDevice.kt */
public final class ResetDevice {
    private final RxBleConnection connection;
    private final AsyncSubject<Unit> doneSignal;
    private final BehaviorSubject<Message> sendBuffer;

    public ResetDevice(@NotNull RxBleConnection rxBleConnection) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        this.connection = rxBleConnection;
        BehaviorSubject<Message> create = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "BehaviorSubject.create<Message>()");
        this.sendBuffer = create;
        AsyncSubject<Unit> create2 = AsyncSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create2, "AsyncSubject.create<Unit>()");
        this.doneSignal = create2;
    }

    @NotNull
    public final Observable<Unit> perform() {
        Observable<R> takeUntil = this.sendBuffer.doOnNext(ResetDevice$perform$sendObs$1.INSTANCE).flatMap(new ResetDevice$perform$sendObs$2(this)).map(ResetDevice$perform$sendObs$3.INSTANCE).takeUntil(this.doneSignal);
        Observable<R> map = this.connection.setupNotification(BluetoothService.Companion.getRxId()).flatMap(ResetDevice$perform$notificationsObs$1.INSTANCE).flatMap(ResetDevice$perform$notificationsObs$2.INSTANCE).doOnNext(new ResetDevice$perform$notificationsObs$3(this)).map(ResetDevice$perform$notificationsObs$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "connection.setupNotifica…it) }\n      .map { Unit }");
        Observable<Unit> flatMap = Observable.merge(takeUntil, RxExtensionsKt.timeoutEach(map, BluetoothService.messageTimeout).takeUntil(this.doneSignal)).flatMap(new ResetDevice$perform$1(this));
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
                    send$default(this, Command.ACK, null, 2, null);
                    return;
                case SYN_ACK:
                    sendWithTimeStamp(Command.ACK, System.currentTimeMillis());
                    send$default(this, Command.FULL_FLASH_ERASE, null, 2, null);
                    return;
                case NACK:
                    this.sendBuffer.firstElement().subscribe(new ResetDevice$processMessage$1(this));
                    return;
                case ACK:
                    this.doneSignal.onNext(Unit.INSTANCE);
                    this.doneSignal.onComplete();
                    return;
                default:
                    return;
            }
        } else if (!isValid) {
            send$default(this, Command.NACK, null, 2, null);
        }
    }

    static /* synthetic */ void send$default(ResetDevice resetDevice, Command command, Long l, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        resetDevice.send(command, l);
    }

    private final void send(Command command, Long l) {
        this.sendBuffer.onNext(Message.Companion.fromCommand$default(Message.Companion, command, l, null, null, 12, null));
        Timber.d("--> " + command.name(), new Object[0]);
    }

    private final void sendWithTimeStamp(Command command, long j) {
        this.sendBuffer.onNext(Message.Companion.fromCommand$default(Message.Companion, command, null, Long.valueOf(j), null, 8, null));
        Timber.d("--> " + command.name(), new Object[0]);
    }
}
