package kotlin.collections;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.share.internal.ShareConstants;
import java.util.Arrays;
import java.util.NoSuchElementException;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000z\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\r\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\bø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0017\u0010\n\u001a\u00020\u000b*\u00020\fH\bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u0017\u0010\u000f\u001a\u00020\u0010*\u00020\u0011H\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0015\u0010\u0014\u001a\u00020\u0002*\u00020\u0001H\bø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0015\u0010\u0015\u001a\u00020\u0007*\u00020\u0006H\bø\u0001\u0000¢\u0006\u0002\u0010\t\u001a\u0015\u0010\u0016\u001a\u00020\f*\u00020\u000bH\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a\u0015\u0010\u0017\u001a\u00020\u0011*\u00020\u0010H\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0004ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0007H\u0004ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\f2\u0006\u0010\u001a\u001a\u00020\fH\u0004ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0004ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a\u0016\u0010#\u001a\u00020$*\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u0016\u0010#\u001a\u00020$*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a\u0016\u0010#\u001a\u00020$*\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a\u0016\u0010#\u001a\u00020$*\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a\u0016\u0010-\u001a\u00020.*\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b/\u00100\u001a\u0016\u0010-\u001a\u00020.*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a\u0016\u0010-\u001a\u00020.*\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b3\u00104\u001a\u0016\u0010-\u001a\u00020.*\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b5\u00106\u001a=\u00107\u001a\u00020\u0002*\u00020\u00022\u0006\u00108\u001a\u00020\u00022\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a=\u00107\u001a\u00020\u0007*\u00020\u00072\u0006\u00108\u001a\u00020\u00072\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\b>\u0010?\u001a=\u00107\u001a\u00020\f*\u00020\f2\u0006\u00108\u001a\u00020\f2\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a=\u00107\u001a\u00020\u0011*\u00020\u00112\u0006\u00108\u001a\u00020\u00112\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bB\u0010C\u001a\u0017\u0010D\u001a\u00020\u0002*\u00020\u0002H\bø\u0001\u0000¢\u0006\u0004\bE\u0010\u0004\u001a\u001f\u0010D\u001a\u00020\u0002*\u00020\u00022\u0006\u0010F\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bG\u0010H\u001a\u0017\u0010D\u001a\u00020\u0007*\u00020\u0007H\bø\u0001\u0000¢\u0006\u0004\bI\u0010\t\u001a\u001f\u0010D\u001a\u00020\u0007*\u00020\u00072\u0006\u0010F\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bJ\u0010K\u001a\u0017\u0010D\u001a\u00020\f*\u00020\fH\bø\u0001\u0000¢\u0006\u0004\bL\u0010\u000e\u001a\u001f\u0010D\u001a\u00020\f*\u00020\f2\u0006\u0010F\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001a\u0017\u0010D\u001a\u00020\u0011*\u00020\u0011H\bø\u0001\u0000¢\u0006\u0004\bO\u0010\u0013\u001a\u001f\u0010D\u001a\u00020\u0011*\u00020\u00112\u0006\u0010F\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bP\u0010Q\u001a'\u0010R\u001a\u00020\u0002*\u00020\u00022\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a'\u0010R\u001a\u00020\u0007*\u00020\u00072\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bW\u0010X\u001a'\u0010R\u001a\u00020\f*\u00020\f2\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\bY\u0010Z\u001a'\u0010R\u001a\u00020\u0011*\u00020\u00112\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\bø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u001a\u0017\u0010]\u001a\u00020^*\u00020\u0002H\bø\u0001\u0000¢\u0006\u0004\b_\u0010`\u001a\u001e\u0010]\u001a\u00020^*\u00020\u00022\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bb\u0010c\u001a\u0017\u0010]\u001a\u00020d*\u00020\u0007H\bø\u0001\u0000¢\u0006\u0004\be\u0010(\u001a\u001e\u0010]\u001a\u00020d*\u00020\u00072\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bf\u0010g\u001a\u0017\u0010]\u001a\u00020h*\u00020\fH\bø\u0001\u0000¢\u0006\u0004\bi\u0010j\u001a\u001e\u0010]\u001a\u00020h*\u00020\f2\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bk\u0010l\u001a\u0017\u0010]\u001a\u00020m*\u00020\u0011H\bø\u0001\u0000¢\u0006\u0004\bn\u0010o\u001a\u001e\u0010]\u001a\u00020m*\u00020\u00112\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bp\u0010q\u001a\u0017\u0010r\u001a\u00020\u0001*\u00020\u0002H\bø\u0001\u0000¢\u0006\u0004\bs\u0010\u0004\u001a\u0017\u0010t\u001a\u00020\u0006*\u00020\u0007H\bø\u0001\u0000¢\u0006\u0004\bu\u0010\t\u001a\u0017\u0010v\u001a\u00020\u000b*\u00020\fH\bø\u0001\u0000¢\u0006\u0004\bw\u0010\u000e\u001a\u0017\u0010x\u001a\u00020\u0010*\u00020\u0011H\bø\u0001\u0000¢\u0006\u0004\by\u0010\u0013\u001a\u001c\u0010z\u001a\b\u0012\u0004\u0012\u00020^0{*\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b|\u0010}\u001a\u001c\u0010z\u001a\b\u0012\u0004\u0012\u00020d0{*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b~\u0010\u001a\u001e\u0010z\u001a\b\u0012\u0004\u0012\u00020h0{*\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0006\b\u0001\u0010\u0001\u001a\u001e\u0010z\u001a\b\u0012\u0004\u0012\u00020m0{*\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0006\b\u0001\u0010\u0001\u001a\u0016\u0010\u0001\u001a\u00020\u0002*\u00020\u0001H\bø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0016\u0010\u0001\u001a\u00020\u0007*\u00020\u0006H\bø\u0001\u0000¢\u0006\u0002\u0010\t\u001a\u0016\u0010\u0001\u001a\u00020\f*\u00020\u000bH\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a\u0016\u0010\u0001\u001a\u00020\u0011*\u00020\u0010H\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u0002\u0004\n\u0002\b\u0019¨\u0006\u0001"}, d2 = {"asByteArray", "", "Lkotlin/UByteArray;", "asByteArray-GBYM_sE", "([B)[B", "asIntArray", "", "Lkotlin/UIntArray;", "asIntArray--ajY-9A", "([I)[I", "asLongArray", "", "Lkotlin/ULongArray;", "asLongArray-QwZRm1k", "([J)[J", "asShortArray", "", "Lkotlin/UShortArray;", "asShortArray-rL5Bavg", "([S)[S", "asUByteArray", "asUIntArray", "asULongArray", "asUShortArray", "contentEquals", "", FacebookRequestErrorClassification.KEY_OTHER, "contentEquals-kdPth3s", "([B[B)Z", "contentEquals-ctEhBpI", "([I[I)Z", "contentEquals-us8wMrg", "([J[J)Z", "contentEquals-mazbYpA", "([S[S)Z", "contentHashCode", "", "contentHashCode-GBYM_sE", "([B)I", "contentHashCode--ajY-9A", "([I)I", "contentHashCode-QwZRm1k", "([J)I", "contentHashCode-rL5Bavg", "([S)I", "contentToString", "", "contentToString-GBYM_sE", "([B)Ljava/lang/String;", "contentToString--ajY-9A", "([I)Ljava/lang/String;", "contentToString-QwZRm1k", "([J)Ljava/lang/String;", "contentToString-rL5Bavg", "([S)Ljava/lang/String;", "copyInto", ShareConstants.DESTINATION, "destinationOffset", "startIndex", "endIndex", "copyInto-FUQE5sA", "([B[BIII)[B", "copyInto-sIZ3KeM", "([I[IIII)[I", "copyInto--B0-L2c", "([J[JIII)[J", "copyInto-9-ak10g", "([S[SIII)[S", "copyOf", "copyOf-GBYM_sE", "newSize", "copyOf-PpDY95g", "([BI)[B", "copyOf--ajY-9A", "copyOf-qFRl0hI", "([II)[I", "copyOf-QwZRm1k", "copyOf-r7IrZao", "([JI)[J", "copyOf-rL5Bavg", "copyOf-nggk6HY", "([SI)[S", "copyOfRange", "fromIndex", "toIndex", "copyOfRange-4UcCI2c", "([BII)[B", "copyOfRange-oBK06Vg", "([III)[I", "copyOfRange--nroSd4", "([JII)[J", "copyOfRange-Aa5vz7o", "([SII)[S", "random", "Lkotlin/UByte;", "random-GBYM_sE", "([B)B", "Lkotlin/random/Random;", "random-oSF2wD8", "([BLkotlin/random/Random;)B", "Lkotlin/UInt;", "random--ajY-9A", "random-2D5oskM", "([ILkotlin/random/Random;)I", "Lkotlin/ULong;", "random-QwZRm1k", "([J)J", "random-JzugnMA", "([JLkotlin/random/Random;)J", "Lkotlin/UShort;", "random-rL5Bavg", "([S)S", "random-s5X_as8", "([SLkotlin/random/Random;)S", "toByteArray", "toByteArray-GBYM_sE", "toIntArray", "toIntArray--ajY-9A", "toLongArray", "toLongArray-QwZRm1k", "toShortArray", "toShortArray-rL5Bavg", "toTypedArray", "", "toTypedArray-GBYM_sE", "([B)[Lkotlin/UByte;", "toTypedArray--ajY-9A", "([I)[Lkotlin/UInt;", "toTypedArray-QwZRm1k", "([J)[Lkotlin/ULong;", "toTypedArray-rL5Bavg", "([S)[Lkotlin/UShort;", "toUByteArray", "toUIntArray", "toULongArray", "toUShortArray", "kotlin-stdlib"}, k = 5, mv = {1, 1, 13}, xi = 1, xs = "kotlin/collections/UArraysKt")
/* compiled from: _UArrays.kt */
class UArraysKt___UArraysKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: asByteArray-GBYM_sE  reason: not valid java name */
    private static final byte[] m287asByteArrayGBYM_sE(@NotNull byte[] bArr) {
        return bArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: asIntArray--ajY-9A  reason: not valid java name */
    private static final int[] m288asIntArrayajY9A(@NotNull int[] iArr) {
        return iArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: asLongArray-QwZRm1k  reason: not valid java name */
    private static final long[] m289asLongArrayQwZRm1k(@NotNull long[] jArr) {
        return jArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: asShortArray-rL5Bavg  reason: not valid java name */
    private static final short[] m290asShortArrayrL5Bavg(@NotNull short[] sArr) {
        return sArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: random--ajY-9A  reason: not valid java name */
    private static final int m323randomajY9A(@NotNull int[] iArr) {
        return UArraysKt.m324random2D5oskM(iArr, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: random-QwZRm1k  reason: not valid java name */
    private static final long m327randomQwZRm1k(@NotNull long[] jArr) {
        return UArraysKt.m326randomJzugnMA(jArr, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: random-GBYM_sE  reason: not valid java name */
    private static final byte m325randomGBYM_sE(@NotNull byte[] bArr) {
        return UArraysKt.m328randomoSF2wD8(bArr, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: random-rL5Bavg  reason: not valid java name */
    private static final short m329randomrL5Bavg(@NotNull short[] sArr) {
        return UArraysKt.m330randoms5X_as8(sArr, Random.Default);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-2D5oskM  reason: not valid java name */
    public static final int m324random2D5oskM(@NotNull int[] iArr, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(iArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!UIntArray.m139isEmptyimpl(iArr)) {
            return UIntArray.m136getimpl(iArr, random.nextInt(UIntArray.m137getSizeimpl(iArr)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-JzugnMA  reason: not valid java name */
    public static final long m326randomJzugnMA(@NotNull long[] jArr, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(jArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!ULongArray.m206isEmptyimpl(jArr)) {
            return ULongArray.m203getimpl(jArr, random.nextInt(ULongArray.m204getSizeimpl(jArr)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-oSF2wD8  reason: not valid java name */
    public static final byte m328randomoSF2wD8(@NotNull byte[] bArr, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(bArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!UByteArray.m72isEmptyimpl(bArr)) {
            return UByteArray.m69getimpl(bArr, random.nextInt(UByteArray.m70getSizeimpl(bArr)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-s5X_as8  reason: not valid java name */
    public static final short m330randoms5X_as8(@NotNull short[] sArr, @NotNull Random random) {
        Intrinsics.checkParameterIsNotNull(sArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!UShortArray.m271isEmptyimpl(sArr)) {
            return UShortArray.m268getimpl(sArr, random.nextInt(UShortArray.m269getSizeimpl(sArr)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final byte[] asUByteArray(@NotNull byte[] bArr) {
        return UByteArray.m64constructorimpl(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int[] asUIntArray(@NotNull int[] iArr) {
        return UIntArray.m131constructorimpl(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final long[] asULongArray(@NotNull long[] jArr) {
        return ULongArray.m198constructorimpl(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final short[] asUShortArray(@NotNull short[] sArr) {
        return UShortArray.m263constructorimpl(sArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-ctEhBpI  reason: not valid java name */
    public static final boolean m291contentEqualsctEhBpI(@NotNull int[] iArr, @NotNull int[] iArr2) {
        Intrinsics.checkParameterIsNotNull(iArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iArr2, FacebookRequestErrorClassification.KEY_OTHER);
        return Arrays.equals(iArr, iArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-us8wMrg  reason: not valid java name */
    public static final boolean m294contentEqualsus8wMrg(@NotNull long[] jArr, @NotNull long[] jArr2) {
        Intrinsics.checkParameterIsNotNull(jArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(jArr2, FacebookRequestErrorClassification.KEY_OTHER);
        return Arrays.equals(jArr, jArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-kdPth3s  reason: not valid java name */
    public static final boolean m292contentEqualskdPth3s(@NotNull byte[] bArr, @NotNull byte[] bArr2) {
        Intrinsics.checkParameterIsNotNull(bArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(bArr2, FacebookRequestErrorClassification.KEY_OTHER);
        return Arrays.equals(bArr, bArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-mazbYpA  reason: not valid java name */
    public static final boolean m293contentEqualsmazbYpA(@NotNull short[] sArr, @NotNull short[] sArr2) {
        Intrinsics.checkParameterIsNotNull(sArr, "receiver$0");
        Intrinsics.checkParameterIsNotNull(sArr2, FacebookRequestErrorClassification.KEY_OTHER);
        return Arrays.equals(sArr, sArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode--ajY-9A  reason: not valid java name */
    public static final int m295contentHashCodeajY9A(@NotNull int[] iArr) {
        Intrinsics.checkParameterIsNotNull(iArr, "receiver$0");
        return Arrays.hashCode(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-QwZRm1k  reason: not valid java name */
    public static final int m297contentHashCodeQwZRm1k(@NotNull long[] jArr) {
        Intrinsics.checkParameterIsNotNull(jArr, "receiver$0");
        return Arrays.hashCode(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-GBYM_sE  reason: not valid java name */
    public static final int m296contentHashCodeGBYM_sE(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "receiver$0");
        return Arrays.hashCode(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-rL5Bavg  reason: not valid java name */
    public static final int m298contentHashCoderL5Bavg(@NotNull short[] sArr) {
        Intrinsics.checkParameterIsNotNull(sArr, "receiver$0");
        return Arrays.hashCode(sArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString--ajY-9A  reason: not valid java name */
    public static final String m299contentToStringajY9A(@NotNull int[] iArr) {
        Intrinsics.checkParameterIsNotNull(iArr, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(iArr, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-QwZRm1k  reason: not valid java name */
    public static final String m301contentToStringQwZRm1k(@NotNull long[] jArr) {
        Intrinsics.checkParameterIsNotNull(jArr, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(jArr, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-GBYM_sE  reason: not valid java name */
    public static final String m300contentToStringGBYM_sE(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(bArr, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-rL5Bavg  reason: not valid java name */
    public static final String m302contentToStringrL5Bavg(@NotNull short[] sArr) {
        Intrinsics.checkParameterIsNotNull(sArr, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(sArr, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto-sIZ3KeM$default  reason: not valid java name */
    static /* synthetic */ int[] m310copyIntosIZ3KeM$default(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = UIntArray.m137getSizeimpl(iArr);
        }
        return UIntArray.m131constructorimpl(ArraysKt.copyInto(iArr, iArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto-sIZ3KeM  reason: not valid java name */
    private static final int[] m309copyIntosIZ3KeM(@NotNull int[] iArr, int[] iArr2, int i, int i2, int i3) {
        return UIntArray.m131constructorimpl(ArraysKt.copyInto(iArr, iArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto--B0-L2c$default  reason: not valid java name */
    static /* synthetic */ long[] m304copyIntoB0L2c$default(long[] jArr, long[] jArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = ULongArray.m204getSizeimpl(jArr);
        }
        return ULongArray.m198constructorimpl(ArraysKt.copyInto(jArr, jArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto--B0-L2c  reason: not valid java name */
    private static final long[] m303copyIntoB0L2c(@NotNull long[] jArr, long[] jArr2, int i, int i2, int i3) {
        return ULongArray.m198constructorimpl(ArraysKt.copyInto(jArr, jArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto-FUQE5sA$default  reason: not valid java name */
    static /* synthetic */ byte[] m308copyIntoFUQE5sA$default(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = UByteArray.m70getSizeimpl(bArr);
        }
        return UByteArray.m64constructorimpl(ArraysKt.copyInto(bArr, bArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto-FUQE5sA  reason: not valid java name */
    private static final byte[] m307copyIntoFUQE5sA(@NotNull byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        return UByteArray.m64constructorimpl(ArraysKt.copyInto(bArr, bArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto-9-ak10g$default  reason: not valid java name */
    static /* synthetic */ short[] m306copyInto9ak10g$default(short[] sArr, short[] sArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = UShortArray.m269getSizeimpl(sArr);
        }
        return UShortArray.m263constructorimpl(ArraysKt.copyInto(sArr, sArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyInto-9-ak10g  reason: not valid java name */
    private static final short[] m305copyInto9ak10g(@NotNull short[] sArr, short[] sArr2, int i, int i2, int i3) {
        return UShortArray.m263constructorimpl(ArraysKt.copyInto(sArr, sArr2, i, i2, i3));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf--ajY-9A  reason: not valid java name */
    private static final int[] m311copyOfajY9A(@NotNull int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UIntArray.m131constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-QwZRm1k  reason: not valid java name */
    private static final long[] m314copyOfQwZRm1k(@NotNull long[] jArr) {
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return ULongArray.m198constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-GBYM_sE  reason: not valid java name */
    private static final byte[] m312copyOfGBYM_sE(@NotNull byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UByteArray.m64constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-rL5Bavg  reason: not valid java name */
    private static final short[] m318copyOfrL5Bavg(@NotNull short[] sArr) {
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UShortArray.m263constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-qFRl0hI  reason: not valid java name */
    private static final int[] m316copyOfqFRl0hI(@NotNull int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return UIntArray.m131constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-r7IrZao  reason: not valid java name */
    private static final long[] m317copyOfr7IrZao(@NotNull long[] jArr, int i) {
        long[] copyOf = Arrays.copyOf(jArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return ULongArray.m198constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-PpDY95g  reason: not valid java name */
    private static final byte[] m313copyOfPpDY95g(@NotNull byte[] bArr, int i) {
        byte[] copyOf = Arrays.copyOf(bArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return UByteArray.m64constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOf-nggk6HY  reason: not valid java name */
    private static final short[] m315copyOfnggk6HY(@NotNull short[] sArr, int i) {
        short[] copyOf = Arrays.copyOf(sArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return UShortArray.m263constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOfRange-oBK06Vg  reason: not valid java name */
    private static final int[] m322copyOfRangeoBK06Vg(@NotNull int[] iArr, int i, int i2) {
        int[] iArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            iArr2 = ArraysKt.copyOfRange(iArr, i, i2);
        } else if (i2 <= iArr.length) {
            iArr2 = Arrays.copyOfRange(iArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(iArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + iArr.length);
        }
        return UIntArray.m131constructorimpl(iArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOfRange--nroSd4  reason: not valid java name */
    private static final long[] m319copyOfRangenroSd4(@NotNull long[] jArr, int i, int i2) {
        long[] jArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            jArr2 = ArraysKt.copyOfRange(jArr, i, i2);
        } else if (i2 <= jArr.length) {
            jArr2 = Arrays.copyOfRange(jArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(jArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + jArr.length);
        }
        return ULongArray.m198constructorimpl(jArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOfRange-4UcCI2c  reason: not valid java name */
    private static final byte[] m320copyOfRange4UcCI2c(@NotNull byte[] bArr, int i, int i2) {
        byte[] bArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            bArr2 = ArraysKt.copyOfRange(bArr, i, i2);
        } else if (i2 <= bArr.length) {
            bArr2 = Arrays.copyOfRange(bArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(bArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + bArr.length);
        }
        return UByteArray.m64constructorimpl(bArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: copyOfRange-Aa5vz7o  reason: not valid java name */
    private static final short[] m321copyOfRangeAa5vz7o(@NotNull short[] sArr, int i, int i2) {
        short[] sArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            sArr2 = ArraysKt.copyOfRange(sArr, i, i2);
        } else if (i2 <= sArr.length) {
            sArr2 = Arrays.copyOfRange(sArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(sArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + sArr.length);
        }
        return UShortArray.m263constructorimpl(sArr2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: toByteArray-GBYM_sE  reason: not valid java name */
    private static final byte[] m331toByteArrayGBYM_sE(@NotNull byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: toIntArray--ajY-9A  reason: not valid java name */
    private static final int[] m332toIntArrayajY9A(@NotNull int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: toLongArray-QwZRm1k  reason: not valid java name */
    private static final long[] m333toLongArrayQwZRm1k(@NotNull long[] jArr) {
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: toShortArray-rL5Bavg  reason: not valid java name */
    private static final short[] m334toShortArrayrL5Bavg(@NotNull short[] sArr) {
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray--ajY-9A  reason: not valid java name */
    public static final UInt[] m335toTypedArrayajY9A(@NotNull int[] iArr) {
        Intrinsics.checkParameterIsNotNull(iArr, "receiver$0");
        UInt[] uIntArr = new UInt[UIntArray.m137getSizeimpl(iArr)];
        int length = uIntArr.length;
        for (int i = 0; i < length; i++) {
            uIntArr[i] = UInt.m81boximpl(UIntArray.m136getimpl(iArr, i));
        }
        return uIntArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray-QwZRm1k  reason: not valid java name */
    public static final ULong[] m337toTypedArrayQwZRm1k(@NotNull long[] jArr) {
        Intrinsics.checkParameterIsNotNull(jArr, "receiver$0");
        ULong[] uLongArr = new ULong[ULongArray.m204getSizeimpl(jArr)];
        int length = uLongArr.length;
        for (int i = 0; i < length; i++) {
            uLongArr[i] = ULong.m148boximpl(ULongArray.m203getimpl(jArr, i));
        }
        return uLongArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray-GBYM_sE  reason: not valid java name */
    public static final UByte[] m336toTypedArrayGBYM_sE(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "receiver$0");
        UByte[] uByteArr = new UByte[UByteArray.m70getSizeimpl(bArr)];
        int length = uByteArr.length;
        for (int i = 0; i < length; i++) {
            uByteArr[i] = UByte.m16boximpl(UByteArray.m69getimpl(bArr, i));
        }
        return uByteArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray-rL5Bavg  reason: not valid java name */
    public static final UShort[] m338toTypedArrayrL5Bavg(@NotNull short[] sArr) {
        Intrinsics.checkParameterIsNotNull(sArr, "receiver$0");
        UShort[] uShortArr = new UShort[UShortArray.m269getSizeimpl(sArr)];
        int length = uShortArr.length;
        for (int i = 0; i < length; i++) {
            uShortArr[i] = UShort.m215boximpl(UShortArray.m268getimpl(sArr, i));
        }
        return uShortArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final byte[] toUByteArray(@NotNull byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UByteArray.m64constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int[] toUIntArray(@NotNull int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UIntArray.m131constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final long[] toULongArray(@NotNull long[] jArr) {
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return ULongArray.m198constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final short[] toUShortArray(@NotNull short[] sArr) {
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UShortArray.m263constructorimpl(copyOf);
    }
}
