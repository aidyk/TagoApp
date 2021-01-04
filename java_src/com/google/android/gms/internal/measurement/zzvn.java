package com.google.android.gms.internal.measurement;

final class zzvn {
    private static final zzvl<?> zzbwj = new zzvm();
    private static final zzvl<?> zzbwk = zzwa();

    private static zzvl<?> zzwa() {
        try {
            return (zzvl) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static zzvl<?> zzwb() {
        return zzbwj;
    }

    static zzvl<?> zzwc() {
        if (zzbwk != null) {
            return zzbwk;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
