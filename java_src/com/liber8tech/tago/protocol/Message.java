package com.liber8tech.tago.protocol;

import com.facebook.share.internal.MessengerShareContentUtility;
import io.reactivex.Observable;
import java.nio.ByteBuffer;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public final class Message {
    public static final Companion Companion = new Companion(null);
    private static final byte close = close;
    private static final byte open = open;
    private final byte[] bytes;
    private final Long imageId;

    public Message(byte[] bArr, Long l) {
        Intrinsics.checkParameterIsNotNull(bArr, "bytes");
        this.bytes = bArr;
        this.imageId = l;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Message(byte[] bArr, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr, (i & 2) != 0 ? null : l);
    }

    public final byte[] getBytes() {
        return this.bytes;
    }

    public final Long getImageId() {
        return this.imageId;
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Message fromCommand$default(Companion companion, Command command, Long l, Long l2, Integer num, int i, Object obj) {
            if ((i & 2) != 0) {
                l = null;
            }
            if ((i & 4) != 0) {
                l2 = null;
            }
            if ((i & 8) != 0) {
                num = null;
            }
            return companion.fromCommand(command, l, l2, num);
        }

        public final Message fromCommand(Command command, Long l, Long l2, Integer num) {
            Intrinsics.checkParameterIsNotNull(command, "command");
            return createMessage(command, null, (byte) 0, l, l2, num);
        }

        public final Message withPayload(byte[] bArr, byte b) {
            Intrinsics.checkParameterIsNotNull(bArr, MessengerShareContentUtility.ATTACHMENT_PAYLOAD);
            return createMessage$default(this, Command.DATA_PART_SEND, bArr, Byte.valueOf(b), null, null, null, 56, null);
        }

        static /* synthetic */ Message createMessage$default(Companion companion, Command command, byte[] bArr, Byte b, Long l, Long l2, Integer num, int i, Object obj) {
            return companion.createMessage(command, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? null : b, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : l2, (i & 32) != 0 ? null : num);
        }

        private final Message createMessage(Command command, byte[] bArr, Byte b, Long l, Long l2, Integer num) {
            byte[] bArr2;
            if (bArr == null) {
                bArr2 = new byte[18];
            } else {
                byte[] bArr3 = new byte[(bArr.length + 18)];
                bArr3[3] = b != null ? b.byteValue() : 0;
                System.arraycopy(bArr, 0, bArr3, 16, bArr.length);
                bArr2 = bArr3;
            }
            byte[] upperLowerBytes = HelpersKt.toUpperLowerBytes(bArr2.length);
            bArr2[0] = upperLowerBytes[0];
            bArr2[1] = upperLowerBytes[1];
            bArr2[2] = (byte) command.getByte();
            if (command == Command.KIOSK_MODE && num != null) {
                bArr2[3] = (byte) num.intValue();
            }
            if (l != null && (command == Command.NEW_IMAGE || command == Command.FIND_IMAGE)) {
                byte[] array = ByteBuffer.allocate(8).putLong(l.longValue()).array();
                Intrinsics.checkExpressionValueIsNotNull(array, "ByteBuffer.allocate(java….putLong(imageId).array()");
                System.arraycopy(ArraysKt.reversedArray(array), 0, bArr2, 3, 8);
            }
            if (l2 != null && command == Command.ACK) {
                byte[] array2 = ByteBuffer.allocate(8).putLong(l2.longValue() / ((long) 1000)).array();
                Intrinsics.checkExpressionValueIsNotNull(array2, "ByteBuffer.allocate(java…timeStamp / 1000).array()");
                System.arraycopy(ArraysKt.reversedArray(array2), 0, bArr2, 3, 8);
            }
            Message message = new Message(bArr2, l);
            byte[] crc = message.crc();
            message.getBytes()[bArr2.length - 2] = crc[0];
            message.getBytes()[bArr2.length - 1] = crc[1];
            return message;
        }
    }

    public final boolean isValid() {
        byte[] size = size();
        byte[] crc = crc();
        if ((!(this.bytes.length == 0)) && size[0] == this.bytes[0] && size[1] == this.bytes[1] && crc[0] == this.bytes[this.bytes.length - 2] && crc[1] == this.bytes[this.bytes.length - 1]) {
            return true;
        }
        return false;
    }

    public final Command command() {
        byte b = this.bytes[2];
        if (b == -96) {
            return Command.NEW_FIRMWARE;
        }
        if (b == -80) {
            return Command.FULL_FLASH_ERASE;
        }
        switch (b) {
            case 0:
                return Command.ACK;
            case 1:
                return Command.NACK;
            case 2:
                return Command.SYN_ACK;
            case 3:
                return Command.SYN;
            case 4:
                return Command.SWITCH_TO_BLE;
            case 5:
                return Command.SWITCH_TO_BT;
            default:
                switch (b) {
                    case 33:
                        return Command.NEW_IMAGE;
                    case 34:
                        return Command.IMAGE_DOWNLOADED;
                    case 35:
                        return Command.DATA_PART_SEND;
                    case 36:
                        return Command.FIND_IMAGE;
                    case 37:
                        return Command.IMAGE_FOUND;
                    case 38:
                        return Command.IMAGE_NOT_FOUND;
                    case 39:
                        return Command.KIOSK_MODE;
                    default:
                        return Command.UNKNOWN;
                }
        }
    }

    public final int voltage() {
        return this.bytes[3] & UByte.MAX_VALUE;
    }

    public final int battery() {
        return (HelpersKt.uint(this.bytes[5]) << 8) + HelpersKt.uint(this.bytes[4]);
    }

    public final byte[] toWrappedMessage() {
        int length = this.bytes.length;
        byte[] bArr = new byte[(length + 2)];
        int i = 0;
        bArr[0] = open;
        while (i < length) {
            int i2 = i + 1;
            bArr[i2] = this.bytes[i];
            i = i2;
        }
        bArr[length + 1] = close;
        return bArr;
    }

    public final Observable<byte[]> chunks(int i) {
        Observable<byte[]> map = Observable.fromIterable(ArraysKt.asIterable(toWrappedMessage())).buffer(i).map(Message$chunks$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "Observable.fromIterable(…t.size, { i -> it[i] }) }");
        return map;
    }

    private final byte[] crc() {
        return CRC16.INSTANCE.calculate(this.bytes, 0, this.bytes.length - 2);
    }

    private final byte[] size() {
        return HelpersKt.toUpperLowerBytes(this.bytes.length);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(String.valueOf(command()));
        sb.append(" |");
        byte[] bArr = this.bytes;
        for (byte b : bArr) {
            sb.append(' ');
            sb.append(Byte.valueOf(b));
        }
        String sb2 = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(sb2, "builder.toString()");
        return sb2;
    }

    public final String firmwareVersion() {
        byte[] bArr = new byte[4];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = this.bytes[i + 3];
        }
        return new String(bArr, Charsets.UTF_8);
    }
}
