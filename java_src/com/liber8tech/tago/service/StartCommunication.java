package com.liber8tech.tago.service;

import com.liber8tech.tago.model.ExtendedConnection;
import com.liber8tech.tago.protocol.Command;
import com.liber8tech.tago.protocol.Message;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.AsyncSubject;
import io.reactivex.subjects.BehaviorSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0017J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0011H\u0002J!\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\t0\t0\bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\u00110\u00110\u0010X\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/liber8tech/tago/service/StartCommunication;", "", "connection", "Lcom/polidea/rxandroidble2/RxBleConnection;", "runtime", "Lcom/liber8tech/tago/util/RuntimeConfig;", "(Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/util/RuntimeConfig;)V", "doneSignal", "Lio/reactivex/subjects/AsyncSubject;", "Lcom/liber8tech/tago/model/ExtendedConnection;", "kotlin.jvm.PlatformType", "isNewestVersion", "", "messageObs", "Lio/reactivex/disposables/Disposable;", "sendBuffer", "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/liber8tech/tago/protocol/Message;", "checkFirmwareVersion", "", "currentVersion", "", "perform", "Lio/reactivex/Observable;", "processMessage", "message", "send", "cmd", "Lcom/liber8tech/tago/protocol/Command;", "imageId", "", "(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V", "sendWithTimeStamp", "timeStamp", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StartCommunication.kt */
public final class StartCommunication {
    private final RxBleConnection connection;
    private final AsyncSubject<ExtendedConnection> doneSignal;
    private boolean isNewestVersion;
    private Disposable messageObs;
    private final RuntimeConfig runtime;
    private final BehaviorSubject<Message> sendBuffer;

    public StartCommunication(@NotNull RxBleConnection rxBleConnection, @NotNull RuntimeConfig runtimeConfig) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        Intrinsics.checkParameterIsNotNull(runtimeConfig, "runtime");
        this.connection = rxBleConnection;
        this.runtime = runtimeConfig;
        BehaviorSubject<Message> create = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "BehaviorSubject.create<Message>()");
        this.sendBuffer = create;
        AsyncSubject<ExtendedConnection> create2 = AsyncSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create2, "AsyncSubject.create<ExtendedConnection>()");
        this.doneSignal = create2;
    }

    @NotNull
    public final Observable<ExtendedConnection> perform() {
        Observable<R> takeUntil = this.sendBuffer.doOnNext(StartCommunication$perform$sendObs$1.INSTANCE).flatMap(new StartCommunication$perform$sendObs$2(this)).map(StartCommunication$perform$sendObs$3.INSTANCE).takeUntil(this.doneSignal);
        Observable<R> map = this.connection.setupNotification(BluetoothService.Companion.getRxId()).flatMap(StartCommunication$perform$notificationsObs$1.INSTANCE).flatMap(StartCommunication$perform$notificationsObs$2.INSTANCE).doOnNext(new StartCommunication$perform$notificationsObs$3(this)).map(StartCommunication$perform$notificationsObs$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "connection.setupNotifica…essage(it) }.map { Unit }");
        Observable.merge(takeUntil, RxExtensionsKt.timeoutEach(map, BluetoothService.messageTimeout).takeUntil(this.doneSignal)).flatMap(new StartCommunication$perform$tets$1(this)).subscribe(StartCommunication$perform$tets$2.INSTANCE, StartCommunication$perform$tets$3.INSTANCE);
        return this.doneSignal;
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
                    checkFirmwareVersion(message.firmwareVersion());
                    return;
                case SYN_ACK:
                    sendWithTimeStamp(Command.ACK, System.currentTimeMillis());
                    this.doneSignal.onNext(new ExtendedConnection(this.connection, this.isNewestVersion));
                    this.doneSignal.onComplete();
                    Disposable disposable = this.messageObs;
                    if (disposable != null) {
                        disposable.dispose();
                        return;
                    }
                    return;
                case NACK:
                    this.sendBuffer.firstElement().subscribe(new StartCommunication$processMessage$1(this));
                    return;
                default:
                    return;
            }
        } else if (!isValid) {
            send$default(this, Command.NACK, null, 2, null);
        }
    }

    private final void checkFirmwareVersion(String str) {
        String latestFirmwareVersion = this.runtime.getLatestFirmwareVersion();
        if (latestFirmwareVersion == null) {
            latestFirmwareVersion = "";
        }
        this.isNewestVersion = Intrinsics.areEqual(latestFirmwareVersion, str);
    }

    static /* synthetic */ void send$default(StartCommunication startCommunication, Command command, Long l, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        startCommunication.send(command, l);
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
