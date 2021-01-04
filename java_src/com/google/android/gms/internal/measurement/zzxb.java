package com.google.android.gms.internal.measurement;

final class zzxb {
    private static final zzwz zzcbq = zzxs();
    private static final zzwz zzcbr = new zzxa();

    static zzwz zzxq() {
        return zzcbq;
    }

    static zzwz zzxr() {
        return zzcbr;
    }

    private static zzwz zzxs() {
        try {
            return (zzwz) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
