package kotlin.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0006\u001a*\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\t\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", TtmlNode.START, TtmlNode.END, "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 1, 13})
/* compiled from: UProgressionUtil.kt */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA  reason: not valid java name */
    private static final int m339differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int r1 = UnsignedKt.m280uintRemainderJ1ME1BU(i, i3);
        int r2 = UnsignedKt.m280uintRemainderJ1ME1BU(i2, i3);
        return UInt.m87constructorimpl(UnsignedKt.uintCompare(r1, r2) >= 0 ? r1 - r2 : UInt.m87constructorimpl(r1 - r2) + i3);
    }

    /* renamed from: differenceModulo-sambcqE  reason: not valid java name */
    private static final long m340differenceModulosambcqE(long j, long j2, long j3) {
        long r1 = UnsignedKt.m282ulongRemaindereb3DHEI(j, j3);
        long r3 = UnsignedKt.m282ulongRemaindereb3DHEI(j2, j3);
        return ULong.m154constructorimpl(UnsignedKt.ulongCompare(r1, r3) >= 0 ? r1 - r3 : ULong.m154constructorimpl(r1 - r3) + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs  reason: not valid java name */
    public static final int m342getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (UnsignedKt.uintCompare(i, i2) >= 0) {
                return i2;
            }
            return UInt.m87constructorimpl(i2 - m339differenceModuloWZ9TVnA(i2, i, UInt.m87constructorimpl(i3)));
        } else if (i3 < 0) {
            return UnsignedKt.uintCompare(i, i2) <= 0 ? i2 : UInt.m87constructorimpl(i2 + m339differenceModuloWZ9TVnA(i, i2, UInt.m87constructorimpl(-i3)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g  reason: not valid java name */
    public static final long m341getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            if (UnsignedKt.ulongCompare(j, j2) >= 0) {
                return j2;
            }
            return ULong.m154constructorimpl(j2 - m340differenceModulosambcqE(j2, j, ULong.m154constructorimpl(j3)));
        } else if (j3 < 0) {
            return UnsignedKt.ulongCompare(j, j2) <= 0 ? j2 : ULong.m154constructorimpl(j2 + m340differenceModulosambcqE(j, j2, ULong.m154constructorimpl(-j3)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }
}
