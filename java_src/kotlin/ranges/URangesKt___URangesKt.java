package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\nø\u0001\u0000¢\u0006\u0002\b\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007H\nø\u0001\u0000¢\u0006\u0002\b\b\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0004ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0004ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001f\u0010\t\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0004ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u00142\u0006\u0010\f\u001a\u00020\u0014H\u0004ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0015\u0010\u0017\u001a\u00020\u0004*\u00020\u0002H\bø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0017\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0019H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a\u0015\u0010\u0017\u001a\u00020\u0007*\u00020\u0006H\bø\u0001\u0000¢\u0006\u0002\u0010\u001b\u001a\u001c\u0010\u0017\u001a\u00020\u0007*\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0019H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\f\u0010\u001d\u001a\u00020\n*\u00020\nH\u0007\u001a\f\u0010\u001d\u001a\u00020\u0011*\u00020\u0011H\u0007\u001a\u0015\u0010\u001e\u001a\u00020\n*\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0004\u001a\u0015\u0010\u001e\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u001e\u001a\u00020 H\u0004\u001a\u001f\u0010!\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0004ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\u001f\u0010!\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0004ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a\u001f\u0010!\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0004ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u001f\u0010!\u001a\u00020\u0002*\u00020\u00142\u0006\u0010\f\u001a\u00020\u0014H\u0004ø\u0001\u0000¢\u0006\u0004\b(\u0010)\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"contains", "", "Lkotlin/ranges/UIntRange;", "element", "Lkotlin/UInt;", "contains-biwQdVI", "Lkotlin/ranges/ULongRange;", "Lkotlin/ULong;", "contains-GYNo2lE", "downTo", "Lkotlin/ranges/UIntProgression;", "Lkotlin/UByte;", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "Lkotlin/UShort;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;)J", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 13}, xi = 1, xs = "kotlin/ranges/URangesKt")
/* compiled from: _URanges.kt */
class URangesKt___URangesKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int random(@NotNull UIntRange uIntRange) {
        return URangesKt.random(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final long random(@NotNull ULongRange uLongRange) {
        return URangesKt.random(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final int random(@NotNull UIntRange uIntRange, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(uIntRange, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return URandomKt.nextUInt(random, uIntRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final long random(@NotNull ULongRange uLongRange, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(uLongRange, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return URandomKt.nextULong(random, uLongRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: contains-biwQdVI  reason: not valid java name */
    private static final boolean m357containsbiwQdVI(@NotNull UIntRange uIntRange, UInt uInt) {
        Intrinsics.checkParameterIsNotNull(uIntRange, "receiver$0");
        return uInt != null && uIntRange.m353containsWZ4Q5Ns(uInt.m128unboximpl());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: contains-GYNo2lE  reason: not valid java name */
    private static final boolean m356containsGYNo2lE(@NotNull ULongRange uLongRange, ULong uLong) {
        Intrinsics.checkParameterIsNotNull(uLongRange, "receiver$0");
        return uLong != null && uLongRange.m355containsVKZWuLQ(uLong.m195unboximpl());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: downTo-Kr8caGY  reason: not valid java name */
    public static final UIntProgression m360downToKr8caGY(byte b, byte b2) {
        return UIntProgression.Companion.m352fromClosedRangeNkh28Cs(UInt.m87constructorimpl(b & UByte.MAX_VALUE), UInt.m87constructorimpl(b2 & UByte.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: downTo-J1ME1BU  reason: not valid java name */
    public static final UIntProgression m359downToJ1ME1BU(int i, int i2) {
        return UIntProgression.Companion.m352fromClosedRangeNkh28Cs(i, i2, -1);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: downTo-eb3DHEI  reason: not valid java name */
    public static final ULongProgression m361downToeb3DHEI(long j, long j2) {
        return ULongProgression.Companion.m354fromClosedRange7ftBX0g(j, j2, -1);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: downTo-5PvTz6A  reason: not valid java name */
    public static final UIntProgression m358downTo5PvTz6A(short s, short s2) {
        return UIntProgression.Companion.m352fromClosedRangeNkh28Cs(UInt.m87constructorimpl(s & 65535), UInt.m87constructorimpl(s2 & 65535), -1);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final UIntProgression reversed(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkParameterIsNotNull(uIntProgression, "receiver$0");
        return UIntProgression.Companion.m352fromClosedRangeNkh28Cs(uIntProgression.getLast(), uIntProgression.getFirst(), -uIntProgression.getStep());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final ULongProgression reversed(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkParameterIsNotNull(uLongProgression, "receiver$0");
        return ULongProgression.Companion.m354fromClosedRange7ftBX0g(uLongProgression.getLast(), uLongProgression.getFirst(), -uLongProgression.getStep());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final UIntProgression step(@NotNull UIntProgression uIntProgression, int i) {
        Intrinsics.checkParameterIsNotNull(uIntProgression, "receiver$0");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int first = uIntProgression.getFirst();
        int last = uIntProgression.getLast();
        if (uIntProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.m352fromClosedRangeNkh28Cs(first, last, i);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final ULongProgression step(@NotNull ULongProgression uLongProgression, long j) {
        Intrinsics.checkParameterIsNotNull(uLongProgression, "receiver$0");
        RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        ULongProgression.Companion companion = ULongProgression.Companion;
        long first = uLongProgression.getFirst();
        long last = uLongProgression.getLast();
        if (uLongProgression.getStep() <= 0) {
            j = -j;
        }
        return companion.m354fromClosedRange7ftBX0g(first, last, j);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: until-Kr8caGY  reason: not valid java name */
    public static final UIntRange m364untilKr8caGY(byte b, byte b2) {
        return new UIntRange(UInt.m87constructorimpl(b & UByte.MAX_VALUE), UInt.m87constructorimpl(UInt.m87constructorimpl(b2 & UByte.MAX_VALUE) - 1), null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: until-J1ME1BU  reason: not valid java name */
    public static final UIntRange m363untilJ1ME1BU(int i, int i2) {
        if (UnsignedKt.uintCompare(i2, 0) <= 0) {
            return UIntRange.Companion.getEMPTY();
        }
        return new UIntRange(i, UInt.m87constructorimpl(i2 - 1), null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: until-eb3DHEI  reason: not valid java name */
    public static final ULongRange m365untileb3DHEI(long j, long j2) {
        if (UnsignedKt.ulongCompare(j2, 0) <= 0) {
            return ULongRange.Companion.getEMPTY();
        }
        return new ULongRange(j, ULong.m154constructorimpl(j2 - ULong.m154constructorimpl(((long) 1) & 4294967295L)), null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: until-5PvTz6A  reason: not valid java name */
    public static final UIntRange m362until5PvTz6A(short s, short s2) {
        return new UIntRange(UInt.m87constructorimpl(s & 65535), UInt.m87constructorimpl(UInt.m87constructorimpl(s2 & 65535) - 1), null);
    }
}
