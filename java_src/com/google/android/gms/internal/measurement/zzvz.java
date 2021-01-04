package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public final class zzvz {
    private static final Charset ISO_8859_1 = Charset.forName(CharEncoding.ISO_8859_1);
    static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final byte[] zzcae;
    private static final ByteBuffer zzcaf;
    private static final zzuz zzcag;

    public static int zzbi(long j) {
        return (int) (j ^ (j >>> 32));
    }

    static boolean zzf(zzxe zzxe) {
        return false;
    }

    public static int zzu(boolean z) {
        return z ? 1231 : 1237;
    }

    static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static boolean zzl(byte[] bArr) {
        return zzyu.zzl(bArr);
    }

    public static String zzm(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int zza = zza(length, bArr, 0, length);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    static Object zzb(Object obj, Object obj2) {
        return ((zzxe) obj).zzwo().zza((zzxe) obj2).zzwu();
    }

    static {
        byte[] bArr = new byte[0];
        zzcae = bArr;
        zzcaf = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzcae;
        zzcag = zzuz.zza(bArr2, 0, bArr2.length, false);
    }
}
