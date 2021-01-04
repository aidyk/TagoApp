package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\f\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, d2 = {"numberFormatError", "", "input", "", "toByteOrNull", "", "(Ljava/lang/String;)Ljava/lang/Byte;", "radix", "", "(Ljava/lang/String;I)Ljava/lang/Byte;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "toLongOrNull", "", "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "toShortOrNull", "", "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 13}, xi = 1, xs = "kotlin/text/StringsKt")
/* compiled from: StringNumberConversions.kt */
class StringsKt__StringNumberConversionsKt extends StringsKt__StringNumberConversionsJVMKt {
    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Byte toByteOrNull(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        return StringsKt.toByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Byte toByteOrNull(@NotNull String str, int i) {
        int intValue;
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        Integer intOrNull = StringsKt.toIntOrNull(str, i);
        if (intOrNull == null || (intValue = intOrNull.intValue()) < -128 || intValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) intValue);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Short toShortOrNull(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        return StringsKt.toShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Short toShortOrNull(@NotNull String str, int i) {
        int intValue;
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        Integer intOrNull = StringsKt.toIntOrNull(str, i);
        if (intOrNull == null || (intValue = intOrNull.intValue()) < -32768 || intValue > 32767) {
            return null;
        }
        return Short.valueOf((short) intValue);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Integer toIntOrNull(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        return StringsKt.toIntOrNull(str, 10);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0037 A[LOOP:0: B:18:0x0037->B:28:0x004f, LOOP_START, PHI: r2 r3 
      PHI: (r2v2 int) = (r2v0 int), (r2v4 int) binds: [B:17:0x0035, B:28:0x004f] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:17:0x0035, B:28:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0059  */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.Integer toIntOrNull(@org.jetbrains.annotations.NotNull java.lang.String r9, int r10) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            kotlin.text.CharsKt.checkRadix(r10)
            int r0 = r9.length()
            r1 = 0
            if (r0 != 0) goto L_0x0010
            return r1
        L_0x0010:
            r2 = 0
            char r3 = r9.charAt(r2)
            r4 = 48
            r5 = -2147483647(0xffffffff80000001, float:-1.4E-45)
            r6 = 1
            if (r3 >= r4) goto L_0x0030
            if (r0 != r6) goto L_0x0020
            return r1
        L_0x0020:
            r4 = 45
            if (r3 != r4) goto L_0x0029
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1
            r4 = 1
            goto L_0x0032
        L_0x0029:
            r4 = 43
            if (r3 != r4) goto L_0x002f
            r3 = 1
            goto L_0x0031
        L_0x002f:
            return r1
        L_0x0030:
            r3 = 0
        L_0x0031:
            r4 = 0
        L_0x0032:
            int r7 = r5 / r10
            int r0 = r0 - r6
            if (r3 > r0) goto L_0x0052
        L_0x0037:
            char r6 = r9.charAt(r3)
            int r6 = kotlin.text.CharsKt.digitOf(r6, r10)
            if (r6 >= 0) goto L_0x0042
            return r1
        L_0x0042:
            if (r2 >= r7) goto L_0x0045
            return r1
        L_0x0045:
            int r2 = r2 * r10
            int r8 = r5 + r6
            if (r2 >= r8) goto L_0x004c
            return r1
        L_0x004c:
            int r2 = r2 - r6
            if (r3 == r0) goto L_0x0052
            int r3 = r3 + 1
            goto L_0x0037
        L_0x0052:
            if (r4 == 0) goto L_0x0059
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)
            goto L_0x005e
        L_0x0059:
            int r9 = -r2
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
        L_0x005e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toIntOrNull(java.lang.String, int):java.lang.Integer");
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Long toLongOrNull(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        return StringsKt.toLongOrNull(str, 10);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003f A[LOOP:0: B:17:0x003f->B:28:0x0063, LOOP_START, PHI: r3 r4 r14 
      PHI: (r3v1 java.lang.Long) = (r3v0 java.lang.Long), (r3v3 java.lang.Long) binds: [B:16:0x003d, B:28:0x0063] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r4v2 int) = (r4v1 int), (r4v4 int) binds: [B:16:0x003d, B:28:0x0063] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r14v2 long) = (r14v0 long), (r14v4 long) binds: [B:16:0x003d, B:28:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x006e  */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.Long toLongOrNull(@org.jetbrains.annotations.NotNull java.lang.String r19, int r20) {
        /*
        // Method dump skipped, instructions count: 116
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(java.lang.String, int):java.lang.Long");
    }

    @NotNull
    public static final Void numberFormatError(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "input");
        throw new NumberFormatException("Invalid number format: '" + str + '\'');
    }
}
