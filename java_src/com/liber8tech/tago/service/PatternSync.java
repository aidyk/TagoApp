package com.liber8tech.tago.service;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import com.liber8tech.tago.event.TagoEvent;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.model.SyncState;
import com.liber8tech.tago.protocol.Command;
import com.liber8tech.tago.protocol.Message;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J!\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001bH\u0002J%\u0010\u001f\u001a\u00020\u00122\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002¢\u0006\u0002\u0010$R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\fX\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00100\u00100\fX\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00120\u00120\fX\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/liber8tech/tago/service/PatternSync;", "", "ctx", "Landroid/content/Context;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "connection", "Lcom/polidea/rxandroidble2/RxBleConnection;", "pattern", "Lcom/liber8tech/tago/model/Pattern;", "(Landroid/content/Context;Lorg/greenrobot/eventbus/EventBus;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)V", NotificationCompat.CATEGORY_PROGRESS, "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/liber8tech/tago/model/SyncState;", "kotlin.jvm.PlatformType", "sendBuffer", "Lcom/liber8tech/tago/protocol/Message;", "sendSignal", "", "perform", "Lio/reactivex/Observable;", "processMessage", "message", "send", "cmd", "Lcom/liber8tech/tago/protocol/Command;", "imageId", "", "(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V", "sendWithTimeStamp", "timeStamp", "updateProgress", "value", "", "battery", "", "(Ljava/lang/Double;Ljava/lang/Integer;)V", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PatternSync.kt */
public final class PatternSync {
    private final RxBleConnection connection;
    private final Context ctx;
    private final EventBus eventBus;
    private final Pattern pattern;
    private final BehaviorSubject<SyncState> progress;
    private final BehaviorSubject<Message> sendBuffer;
    private final BehaviorSubject<Unit> sendSignal;

    public PatternSync(@NotNull Context context, @NotNull EventBus eventBus2, @NotNull RxBleConnection rxBleConnection, @NotNull Pattern pattern2) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(eventBus2, "eventBus");
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        Intrinsics.checkParameterIsNotNull(pattern2, "pattern");
        this.ctx = context;
        this.eventBus = eventBus2;
        this.connection = rxBleConnection;
        this.pattern = pattern2;
        BehaviorSubject<Message> create = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "BehaviorSubject.create<Message>()");
        this.sendBuffer = create;
        BehaviorSubject<Unit> create2 = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create2, "BehaviorSubject.create<Unit>()");
        this.sendSignal = create2;
        BehaviorSubject<SyncState> createDefault = BehaviorSubject.createDefault(new SyncState(0.0d, 0, 3, null));
        Intrinsics.checkExpressionValueIsNotNull(createDefault, "BehaviorSubject.createDefault(SyncState())");
        this.progress = createDefault;
    }

    @NotNull
    public final Observable<SyncState> perform() {
        Observable<R> map = this.sendBuffer.doOnNext(PatternSync$perform$sendObs$1.INSTANCE).flatMap(new PatternSync$perform$sendObs$2(this)).map(PatternSync$perform$sendObs$3.INSTANCE);
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = 0;
        List<Message> chunks = this.pattern.chunks(this.ctx);
        Observable zip = Observable.zip(this.sendSignal, Observable.fromIterable(chunks), new PatternSync$perform$chunksObs$1(this, intRef, (double) chunks.size()));
        Observable<R> map2 = this.connection.setupNotification(BluetoothService.Companion.getRxId()).flatMap(PatternSync$perform$notificationsObs$1.INSTANCE).flatMap(PatternSync$perform$notificationsObs$2.INSTANCE).doOnNext(new PatternSync$perform$notificationsObs$3(this)).map(PatternSync$perform$notificationsObs$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map2, "connection.setupNotifica…essage(it) }.map { Unit }");
        Observable<SyncState> takeUntil = Observable.merge(map, zip, RxExtensionsKt.timeoutEach(map2, BluetoothService.messageTimeout)).flatMap(new PatternSync$perform$1(this)).distinctUntilChanged().takeUntil(PatternSync$perform$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(takeUntil, "Observable.merge(sendObs…keUntil { it.finished() }");
        return takeUntil;
    }

    /* access modifiers changed from: private */
    public final void processMessage(Message message) {
        boolean isValid = message.isValid();
        if (isValid) {
            this.eventBus.post(new TagoEvent.VoltageChanged(message.voltage()));
            Command command = message.command();
            Timber.d("<-- %s", message);
            switch (command) {
                case SYN:
                    send$default(this, Command.ACK, null, 2, null);
                    return;
                case SYN_ACK:
                    sendWithTimeStamp(Command.ACK, System.currentTimeMillis());
                    this.sendSignal.onNext(Unit.INSTANCE);
                    return;
                case IMAGE_NOT_FOUND:
                    send$default(this, Command.ACK, null, 2, null);
                    send(Command.NEW_IMAGE, message.getImageId());
                    return;
                case IMAGE_DOWNLOADED:
                    send$default(this, Command.ACK, null, 2, null);
                    updateProgress$default(this, Double.valueOf(2.0d), null, 2, null);
                    return;
                case IMAGE_FOUND:
                    send$default(this, Command.ACK, null, 2, null);
                    updateProgress$default(this, Double.valueOf(1.0d), null, 2, null);
                    return;
                case NACK:
                    this.sendBuffer.firstElement().subscribe(new PatternSync$processMessage$1(this));
                    return;
                case ACK:
                    switch (this.sendBuffer.blockingFirst().command()) {
                        case NEW_IMAGE:
                            this.sendSignal.onNext(Unit.INSTANCE);
                            break;
                        case DATA_PART_SEND:
                            this.sendSignal.onNext(Unit.INSTANCE);
                            break;
                    }
                    updateProgress$default(this, null, Integer.valueOf(message.battery()), 1, null);
                    return;
                default:
                    return;
            }
        } else if (!isValid) {
            send$default(this, Command.NACK, null, 2, null);
        }
    }

    static /* synthetic */ void updateProgress$default(PatternSync patternSync, Double d, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            d = null;
        }
        if ((i & 2) != 0) {
            num = null;
        }
        patternSync.updateProgress(d, num);
    }

    private final void updateProgress(Double d, Integer num) {
        SyncState blockingFirst = this.progress.blockingFirst();
        this.progress.onNext(blockingFirst.copy(d != null ? d.doubleValue() : blockingFirst.getProgress(), num != null ? num.intValue() : blockingFirst.getBattery()));
    }

    static /* synthetic */ void send$default(PatternSync patternSync, Command command, Long l, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        patternSync.send(command, l);
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
