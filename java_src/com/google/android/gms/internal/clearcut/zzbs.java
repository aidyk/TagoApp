package com.google.android.gms.internal.clearcut;

/* access modifiers changed from: package-private */
public final class zzbs {
    private static final Class<?> zzgl = zzak();

    private static Class<?> zzak() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzbt zzal() {
        if (zzgl != null) {
            try {
                return (zzbt) zzgl.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
            }
        }
        return zzbt.zzgo;
    }
}
