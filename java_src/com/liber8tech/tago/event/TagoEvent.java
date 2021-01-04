package com.liber8tech.tago.event;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/event/TagoEvent;", "", "()V", "VoltageChanged", "Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoEvent.kt */
public abstract class TagoEvent {
    private TagoEvent() {
    }

    public /* synthetic */ TagoEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;", "Lcom/liber8tech/tago/event/TagoEvent;", "value", "", "(I)V", "getValue", "()I", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: TagoEvent.kt */
    public static final class VoltageChanged extends TagoEvent {
        private final int value;

        public VoltageChanged(int i) {
            super(null);
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }
}
