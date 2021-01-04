package com.liber8tech.tago.protocol;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "it", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: CRC16.kt */
public final class CRC16$calculate$1 extends Lambda implements Function1<Integer, Integer> {
    final /* synthetic */ Ref.CharRef $crc;
    final /* synthetic */ byte[] $data;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    CRC16$calculate$1(Ref.CharRef charRef, byte[] bArr) {
        super(1);
        this.$crc = charRef;
        this.$data = bArr;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return Integer.valueOf(invoke(num.intValue()));
    }

    public final int invoke(int i) {
        return (this.$data[i] & UByte.MAX_VALUE) ^ (this.$crc.element >> '\b');
    }
}
