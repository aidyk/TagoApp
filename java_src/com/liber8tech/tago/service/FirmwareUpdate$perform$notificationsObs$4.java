package com.liber8tech.tago.service;

import com.liber8tech.tago.protocol.Message;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/protocol/Message;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: FirmwareUpdate.kt */
public final class FirmwareUpdate$perform$notificationsObs$4<T, R> implements Function<T, R> {
    public static final FirmwareUpdate$perform$notificationsObs$4 INSTANCE = new FirmwareUpdate$perform$notificationsObs$4();

    FirmwareUpdate$perform$notificationsObs$4() {
    }

    public final void apply(@NotNull Message message) {
        Intrinsics.checkParameterIsNotNull(message, "it");
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Message) obj);
        return Unit.INSTANCE;
    }
}
