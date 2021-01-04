package com.liber8tech.tago.service;

import com.liber8tech.tago.protocol.Message;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/protocol/Message;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: PatternSync.kt */
public final class PatternSync$processMessage$1<T> implements Consumer<Message> {
    final /* synthetic */ PatternSync this$0;

    PatternSync$processMessage$1(PatternSync patternSync) {
        this.this$0 = patternSync;
    }

    public final void accept(Message message) {
        this.this$0.sendBuffer.onNext(message);
    }
}
