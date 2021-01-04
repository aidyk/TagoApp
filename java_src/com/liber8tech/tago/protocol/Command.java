package com.liber8tech.tago.protocol;

import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\n\n\u0002\b\u0017\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/protocol/Command;", "", "byte", "", "(Ljava/lang/String;IS)V", "getByte", "()S", "ACK", "NACK", "SYN_ACK", "SYN", "SWITCH_TO_BLE", "SWITCH_TO_BT", "CLEAR", "NEW_IMAGE", "IMAGE_DOWNLOADED", "DATA_PART_SEND", "FIND_IMAGE", "IMAGE_FOUND", "IMAGE_NOT_FOUND", "KIOSK_MODE", "GET_UID_FW_VERSION", "GET_PRODUCT_ID", "FULL_FLASH_ERASE", "UNKNOWN", "NEW_FIRMWARE", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Message.kt */
public enum Command {
    ACK(0),
    NACK(1),
    SYN_ACK(2),
    SYN(3),
    SWITCH_TO_BLE(4),
    SWITCH_TO_BT(5),
    CLEAR(32),
    NEW_IMAGE(33),
    IMAGE_DOWNLOADED(34),
    DATA_PART_SEND(35),
    FIND_IMAGE(36),
    IMAGE_FOUND(37),
    IMAGE_NOT_FOUND(38),
    KIOSK_MODE(39),
    GET_UID_FW_VERSION(64),
    GET_PRODUCT_ID(65),
    FULL_FLASH_ERASE(176),
    UNKNOWN(127),
    NEW_FIRMWARE(160);
    

    /* renamed from: byte  reason: not valid java name */
    private final short f2byte;

    protected Command(short s) {
        this.f2byte = s;
    }

    public final short getByte() {
        return this.f2byte;
    }
}
