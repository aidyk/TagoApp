package com.google.android.gms.internal.measurement;

final class zzuk {
    private static final Class<?> zzbuq = zzgb("libcore.io.Memory");
    private static final boolean zzbur = (zzgb("org.robolectric.Robolectric") != null);

    static boolean zzui() {
        return zzbuq != null && !zzbur;
    }

    static Class<?> zzuj() {
        return zzbuq;
    }

    private static <T> Class<T> zzgb(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
