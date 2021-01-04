package com.liber8tech.tago.protocol;

import android.support.v4.view.MotionEventCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/liber8tech/tago/protocol/CRC16;", "", "()V", "initValue", "", "polynom", "table", "", "calculate", "", ShareConstants.WEB_DIALOG_PARAM_DATA, TtmlNode.START, "", "lenth", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: CRC16.kt */
public final class CRC16 {
    public static final CRC16 INSTANCE = new CRC16();
    private static final char initValue = 65535;
    private static final char polynom = 4129;
    private static final char[] table = new char[256];

    static {
        int length = table.length;
        for (int i = 0; i < length; i++) {
            int i2 = i << 8;
            char c = (char) 0;
            for (int i3 = 0; i3 < 8; i3++) {
                c = (char) (((c ^ i2) & 32768) != 0 ? (c << 1) ^ 4129 : c << 1);
                i2 <<= 1;
            }
            table[i] = c;
        }
    }

    private CRC16() {
    }

    @NotNull
    public final byte[] calculate(@NotNull byte[] bArr, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(bArr, ShareConstants.WEB_DIALOG_PARAM_DATA);
        Ref.CharRef charRef = new Ref.CharRef();
        charRef.element = 65535;
        for (Number number : SequencesKt.map(CollectionsKt.asSequence(RangesKt.until(i, i2 + i)), new CRC16$calculate$1(charRef, bArr))) {
            charRef.element = (char) (table[number.intValue()] ^ (charRef.element << '\b'));
        }
        return new byte[]{(byte) (charRef.element & 65535 & 255), (byte) (((charRef.element & 65535) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)};
    }
}
