package com.liber8tech.tago.service;

import com.liber8tech.tago.protocol.HelpersKt;
import com.liber8tech.tago.protocol.Message;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lcom/liber8tech/tago/protocol/Message;", "kotlin.jvm.PlatformType", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: FirmwareUpdate.kt */
public final class FirmwareUpdate$perform$notificationsObs$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    public static final FirmwareUpdate$perform$notificationsObs$2 INSTANCE = new FirmwareUpdate$perform$notificationsObs$2();

    FirmwareUpdate$perform$notificationsObs$2() {
    }

    public final Observable<Message> apply(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "it");
        byte[] trim = HelpersKt.trim(bArr);
        Message message = null;
        if (trim != null) {
            message = new Message(trim, null, 2, null);
        }
        return message == null ? Observable.empty() : Observable.just(message);
    }
}
