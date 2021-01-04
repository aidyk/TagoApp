package com.liber8tech.tago.service;

import com.liber8tech.tago.protocol.Message;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/protocol/Message;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: KioskMode.kt */
public final class KioskMode$perform$notificationsObs$3<T> implements Consumer<Message> {
    final /* synthetic */ KioskMode this$0;

    KioskMode$perform$notificationsObs$3(KioskMode kioskMode) {
        this.this$0 = kioskMode;
    }

    public final void accept(Message message) {
        KioskMode kioskMode = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(message, "it");
        kioskMode.processMessage(message);
    }
}
