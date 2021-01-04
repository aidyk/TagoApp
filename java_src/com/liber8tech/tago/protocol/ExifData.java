package com.liber8tech.tago.protocol;

import android.util.Base64;
import it.sephiroth.android.library.exif2.ExifInterface;
import it.sephiroth.android.library.exif2.ExifTag;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0001\bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/liber8tech/tago/protocol/ExifData;", "", "bytes", "", "([B)V", "getBLEImageSize", "", "getImageId", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ExifData.kt */
public final class ExifData {
    public static final Companion Companion = new Companion(null);
    private final byte[] bytes;

    public ExifData(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "bytes");
        this.bytes = bArr;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/protocol/ExifData$Companion;", "", "()V", "fromBytes", "Lcom/liber8tech/tago/protocol/ExifData;", "array", "", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: ExifData.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExifData fromBytes(@NotNull byte[] bArr) {
            Intrinsics.checkParameterIsNotNull(bArr, "array");
            ExifInterface exifInterface = new ExifInterface();
            exifInterface.readExif(bArr, 63);
            ExifTag tag = exifInterface.getTag(ExifInterface.TAG_USER_COMMENT);
            Intrinsics.checkExpressionValueIsNotNull(tag, "exif.getTag(ExifInterface.TAG_USER_COMMENT)");
            byte[] valueAsBytes = tag.getValueAsBytes();
            Intrinsics.checkExpressionValueIsNotNull(valueAsBytes, "exif.getTag(ExifInterfac…SER_COMMENT).valueAsBytes");
            String str = new String(valueAsBytes, Charsets.US_ASCII);
            byte[] decode = Base64.decode(str.subSequence(8, str.length()).toString(), 0);
            Intrinsics.checkExpressionValueIsNotNull(decode, "Base64.decode(base64String.toString(), 0)");
            return new ExifData(decode);
        }
    }

    public final long getBLEImageSize() {
        ByteBuffer order = ByteBuffer.wrap(this.bytes, 16, 8).order(ByteOrder.LITTLE_ENDIAN);
        Intrinsics.checkExpressionValueIsNotNull(order, "ByteBuffer.wrap(bytes, 1…(ByteOrder.LITTLE_ENDIAN)");
        return order.getLong();
    }

    public final long getImageId() {
        ByteBuffer order = ByteBuffer.wrap(this.bytes, 40, 8).order(ByteOrder.LITTLE_ENDIAN);
        Intrinsics.checkExpressionValueIsNotNull(order, "ByteBuffer.wrap(bytes, 4…(ByteOrder.LITTLE_ENDIAN)");
        return order.getLong();
    }
}
